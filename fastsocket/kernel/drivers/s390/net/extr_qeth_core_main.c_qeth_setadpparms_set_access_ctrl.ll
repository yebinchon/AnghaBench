; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_set_access_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_set_access_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.qeth_set_access_ctrl }
%struct.qeth_set_access_ctrl = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setacctl\00", align 1
@SETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IPA_SETADP_SET_ACCESS_CONTROL = common dso_local global i32 0, align 4
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@qeth_setadpparms_set_access_ctrl_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32)* @qeth_setadpparms_set_access_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setadpparms_set_access_ctrl(%struct.qeth_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  %9 = alloca %struct.qeth_ipa_cmd*, align 8
  %10 = alloca %struct.qeth_set_access_ctrl*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @QETH_DBF_TEXT(i32 %11, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @SETUP, align 4
  %14 = call i32 (i32, i32, i8*, ...) @QETH_DBF_TEXT_(i32 %13, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @SETUP, align 4
  %16 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i32, i8*, ...) @QETH_DBF_TEXT_(i32 %15, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %25 = load i32, i32* @IPA_SETADP_SET_ACCESS_CONTROL, align 4
  %26 = call %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card* %24, i32 %25, i32 8)
  store %struct.qeth_cmd_buffer* %26, %struct.qeth_cmd_buffer** %8, align 8
  %27 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %31 = add nsw i64 %29, %30
  %32 = inttoptr i64 %31 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %32, %struct.qeth_ipa_cmd** %9, align 8
  %33 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %34 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store %struct.qeth_set_access_ctrl* %37, %struct.qeth_set_access_ctrl** %10, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.qeth_set_access_ctrl*, %struct.qeth_set_access_ctrl** %10, align 8
  %40 = getelementptr inbounds %struct.qeth_set_access_ctrl, %struct.qeth_set_access_ctrl* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %42 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %43 = load i32, i32* @qeth_setadpparms_set_access_ctrl_cb, align 4
  %44 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %41, %struct.qeth_cmd_buffer* %42, i32 %43, i32* %6)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @SETUP, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i32, i8*, ...) @QETH_DBF_TEXT_(i32 %45, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, ...) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
