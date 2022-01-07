; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setadp_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setadp_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_5__, %struct.net_device* }
%struct.TYPE_5__ = type { i64 }
%struct.net_device = type { i32 }
%struct.qeth_cmd_buffer = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"setprom\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@SET_PROMISC_MODE_ON = common dso_local global i64 0, align 8
@SET_PROMISC_MODE_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"mode:%x\00", align 1
@IPA_SETADP_SET_PROMISC_MODE = common dso_local global i32 0, align 4
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@qeth_setadp_promisc_mode_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_setadp_promisc_mode(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load i32, i32* @TRACE, align 4
  %11 = call i32 @QETH_DBF_TEXT(i32 %10, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SET_PROMISC_MODE_ON, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_PROMISC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SET_PROMISC_MODE_OFF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %18
  br label %75

40:                                               ; preds = %32, %25
  %41 = load i64, i64* @SET_PROMISC_MODE_OFF, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFF_PROMISC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i64, i64* @SET_PROMISC_MODE_ON, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32, i32* @TRACE, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @QETH_DBF_TEXT_(i32 %53, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %57 = load i32, i32* @IPA_SETADP_SET_PROMISC_MODE, align 4
  %58 = call %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card* %56, i32 %57, i32 4)
  store %struct.qeth_cmd_buffer* %58, %struct.qeth_cmd_buffer** %5, align 8
  %59 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %63 = add nsw i64 %61, %62
  %64 = inttoptr i64 %63 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %64, %struct.qeth_ipa_cmd** %6, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  %71 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %72 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %73 = load i32, i32* @qeth_setadp_promisc_mode_cb, align 4
  %74 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %71, %struct.qeth_cmd_buffer* %72, i32 %73, i32* null)
  br label %75

75:                                               ; preds = %52, %39
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_adapter_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
