; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_send_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_send_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32 }
%struct.lcs_buffer = type { i64 }
%struct.lcs_cmd = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"startup\00", align 1
@LCS_STD_CMD_SIZE = common dso_local global i32 0, align 4
@LCS_CMD_STARTUP = common dso_local global i32 0, align 4
@LCS_IOBUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*, i32)* @lcs_send_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_send_startup(%struct.lcs_card* %0, i32 %1) #0 {
  %3 = alloca %struct.lcs_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcs_buffer*, align 8
  %6 = alloca %struct.lcs_cmd*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @trace, align 4
  %8 = call i32 @LCS_DBF_TEXT(i32 2, i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %10 = load i32, i32* @LCS_STD_CMD_SIZE, align 4
  %11 = call %struct.lcs_buffer* @lcs_get_lancmd(%struct.lcs_card* %9, i32 %10)
  store %struct.lcs_buffer* %11, %struct.lcs_buffer** %5, align 8
  %12 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.lcs_cmd*
  store %struct.lcs_cmd* %15, %struct.lcs_cmd** %6, align 8
  %16 = load i32, i32* @LCS_CMD_STARTUP, align 4
  %17 = load %struct.lcs_cmd*, %struct.lcs_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.lcs_cmd*, %struct.lcs_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @LCS_IOBUFFERSIZE, align 4
  %23 = load %struct.lcs_cmd*, %struct.lcs_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %28 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %29 = call i32 @lcs_send_lancmd(%struct.lcs_card* %27, %struct.lcs_buffer* %28, i32* null)
  ret i32 %29
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_buffer* @lcs_get_lancmd(%struct.lcs_card*, i32) #1

declare dso_local i32 @lcs_send_lancmd(%struct.lcs_card*, %struct.lcs_buffer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
