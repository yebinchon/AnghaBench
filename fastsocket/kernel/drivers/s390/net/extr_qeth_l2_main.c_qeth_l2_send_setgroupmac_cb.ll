; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setgroupmac_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_send_setgroupmac_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"L2Sgmacb\00", align 1
@IPA_RC_L2_DUP_MAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Group MAC %pM already existing on %s \0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not set group MAC %pM on %s: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_l2_send_setgroupmac_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_send_setgroupmac_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_reply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_ipa_cmd*, align 8
  %8 = alloca i32*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @TRACE, align 4
  %10 = call i32 @QETH_DBF_TEXT(i32 %9, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %12, %struct.qeth_ipa_cmd** %7, align 8
  %13 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32* %18, i32** %8, align 8
  %19 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPA_RC_L2_DUP_MAC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %27)
  %29 = call i32 (i32, i8*, i32*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %26, i32 %28)
  %30 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %3
  %34 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %42 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %41)
  %43 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, i8*, i32*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* %40, i32 %42, i64 %46)
  br label %48

48:                                               ; preds = %39, %33
  ret i32 0
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32*, i32, ...) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
