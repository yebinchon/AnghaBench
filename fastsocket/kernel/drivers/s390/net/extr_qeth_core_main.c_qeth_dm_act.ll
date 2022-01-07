; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_dm_act.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_dm_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qeth_cmd_buffer = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dmact\00", align 1
@DM_ACT = common dso_local global i32* null, align 8
@DM_ACT_SIZE = common dso_local global i32 0, align 4
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_dm_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dm_act(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %5 = load i32, i32* @SETUP, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 1
  %9 = call %struct.qeth_cmd_buffer* @qeth_wait_for_buffer(i32* %8)
  store %struct.qeth_cmd_buffer* %9, %struct.qeth_cmd_buffer** %4, align 8
  %10 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @DM_ACT, align 8
  %14 = load i32, i32* @DM_ACT_SIZE, align 4
  %15 = call i32 @memcpy(i32 %12, i32* %13, i32 %14)
  %16 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @QETH_DM_ACT_DEST_ADDR(i32 %18)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %24 = call i32 @memcpy(i32 %19, i32* %22, i32 %23)
  %25 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @QETH_DM_ACT_CONNECTION_TOKEN(i32 %27)
  %29 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %33 = call i32 @memcpy(i32 %28, i32* %31, i32 %32)
  %34 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %35 = load i32, i32* @DM_ACT_SIZE, align 4
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %37 = call i32 @qeth_send_control_data(%struct.qeth_card* %34, i32 %35, %struct.qeth_cmd_buffer* %36, i32* null, i32* null)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_wait_for_buffer(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @QETH_DM_ACT_DEST_ADDR(i32) #1

declare dso_local i32 @QETH_DM_ACT_CONNECTION_TOKEN(i32) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, i32, %struct.qeth_cmd_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
