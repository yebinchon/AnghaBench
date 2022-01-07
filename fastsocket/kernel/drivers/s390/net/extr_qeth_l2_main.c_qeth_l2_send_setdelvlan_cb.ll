; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setdelvlan_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setdelvlan_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"L2sdvcb\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Error in processing VLAN %i on %s: 0x%x. Continuing\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"L2VL%4x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"L2%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"err%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_l2_send_setdelvlan_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_send_setdelvlan_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_reply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %11, %struct.qeth_ipa_cmd** %7, align 8
  %12 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %13 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %23)
  %25 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %24, i64 %28)
  %30 = load i32, i32* @TRACE, align 4
  %31 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @QETH_DBF_TEXT_(i32 %30, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @TRACE, align 4
  %37 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %38 = call i64 @CARD_BUS_ID(%struct.qeth_card* %37)
  %39 = call i32 @QETH_DBF_TEXT_(i32 %36, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @TRACE, align 4
  %41 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @QETH_DBF_TEXT_(i32 %40, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %17, %3
  ret i32 0
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i64) #1

declare dso_local i64 @CARD_BUS_ID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
