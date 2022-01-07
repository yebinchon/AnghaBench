; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_diags_trace_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_diags_trace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"diastrcb\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dxter%x\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"The device is not authorized to run as a HiperSockets network traffic analyzer\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"A HiperSockets network traffic analyzer is already active in the HiperSockets LAN\0A\00", align 1
@SET_PROMISC_MODE_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"The HiperSockets network traffic analyzer is deactivated\0A\00", align 1
@SET_PROMISC_MODE_ON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"The HiperSockets network traffic analyzer is activated\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unknown sniffer action (0x%04x) on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_diags_trace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_diags_trace_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @SETUP, align 4
  %11 = call i32 @QETH_DBF_TEXT(i32 %10, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %13, %struct.qeth_ipa_cmd** %8, align 8
  %14 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %15 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %3
  %21 = load i32, i32* @TRACE, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @QETH_DBF_TEXT_(i32 %21, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %46

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %44 [
    i32 132, label %32
    i32 131, label %38
  ]

32:                                               ; preds = %30
  %33 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  br label %45

38:                                               ; preds = %30
  %39 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %38, %32
  br label %46

46:                                               ; preds = %45, %20
  store i32 0, i32* %4, align 4
  br label %84

47:                                               ; preds = %3
  %48 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %74 [
    i32 128, label %53
    i32 130, label %54
    i32 129, label %64
  ]

53:                                               ; preds = %47
  br label %83

54:                                               ; preds = %47
  %55 = load i32, i32* @SET_PROMISC_MODE_OFF, align 4
  %56 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %83

64:                                               ; preds = %47
  %65 = load i32, i32* @SET_PROMISC_MODE_ON, align 4
  %66 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %67 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %70 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @dev_info(i32* %72, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %83

74:                                               ; preds = %47
  %75 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %76 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %81 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %80)
  %82 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %74, %64, %54, %53
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %46
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
