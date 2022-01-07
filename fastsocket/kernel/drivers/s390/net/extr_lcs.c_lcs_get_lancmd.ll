; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_lancmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_lancmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_buffer = type { i32, i64, i32 }
%struct.lcs_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lcs_cmd = type { i32, i64, i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"getlncmd\00", align 1
@lcs_release_buffer = common dso_local global i32 0, align 4
@LCS_FRAME_TYPE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lcs_buffer* (%struct.lcs_card*, i32)* @lcs_get_lancmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lcs_buffer* @lcs_get_lancmd(%struct.lcs_card* %0, i32 %1) #0 {
  %3 = alloca %struct.lcs_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcs_buffer*, align 8
  %6 = alloca %struct.lcs_cmd*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @trace, align 4
  %8 = call i32 @LCS_DBF_TEXT(i32 4, i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %10 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %14 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %13, i32 0, i32 0
  %15 = call %struct.lcs_buffer* @lcs_get_buffer(%struct.TYPE_2__* %14)
  store %struct.lcs_buffer* %15, %struct.lcs_buffer** %5, align 8
  %16 = icmp ne %struct.lcs_buffer* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @wait_event(i32 %12, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = inttoptr i64 %28 to i64*
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @lcs_release_buffer, align 4
  %37 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.lcs_cmd*
  store %struct.lcs_cmd* %42, %struct.lcs_cmd** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.lcs_cmd*, %struct.lcs_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @LCS_FRAME_TYPE_CONTROL, align 4
  %47 = load %struct.lcs_cmd*, %struct.lcs_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.lcs_cmd*, %struct.lcs_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.lcs_buffer*, %struct.lcs_buffer** %5, align 8
  ret %struct.lcs_buffer* %51
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local %struct.lcs_buffer* @lcs_get_buffer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
