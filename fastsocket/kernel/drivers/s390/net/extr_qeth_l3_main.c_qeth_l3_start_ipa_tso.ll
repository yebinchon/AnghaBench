; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_tso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sttso\00", align 1
@IPA_OUTBOUND_TSO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Outbound TSO not supported on %s\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_CMD_ASS_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Starting outbound TCP segmentation offload for %s failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Outbound TSO enabled\0A\00", align 1
@QETH_LARGE_SEND_TSO = common dso_local global i64 0, align 8
@QETH_LARGE_SEND_NO = common dso_local global i64 0, align 8
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_start_ipa_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_start_ipa_tso(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load i32, i32* @TRACE, align 4
  %5 = call i32 @QETH_DBF_TEXT(i32 %4, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %7 = load i32, i32* @IPA_OUTBOUND_TSO, align 4
  %8 = call i32 @qeth_is_supported(%struct.qeth_card* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %16 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %15)
  %17 = call i32 (i32*, i8*, ...) @dev_info(i32* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %22 = load i32, i32* @IPA_OUTBOUND_TSO, align 4
  %23 = load i32, i32* @IPA_CMD_ASS_START, align 4
  %24 = call i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card* %21, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %33 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %32)
  %34 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %41

35:                                               ; preds = %20
  %36 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_info(i32* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %27
  br label %42

42:                                               ; preds = %41, %10
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @QETH_LARGE_SEND_TSO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load i64, i64* @QETH_LARGE_SEND_NO, align 8
  %54 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load i32, i32* @NETIF_F_TSO, align 4
  %58 = load i32, i32* @NETIF_F_SG, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %60
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %52, %45, %42
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_send_simple_setassparms(%struct.qeth_card*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
