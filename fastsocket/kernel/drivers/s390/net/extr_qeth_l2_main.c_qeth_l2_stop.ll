; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i64, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"qethstop\00", align 1
@CARD_STATE_UP = common dso_local global i64 0, align 8
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qeth_l2_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  store %struct.qeth_card* %6, %struct.qeth_card** %3, align 8
  %7 = load i32, i32* @TRACE, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_tx_disable(%struct.net_device* %9)
  %11 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CARD_STATE_UP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %18 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 1
  %22 = call i32 @napi_disable(i32* %21)
  br label %23

23:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
