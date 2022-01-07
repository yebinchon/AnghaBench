; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s(%s): NULL sk_buff passed\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@LL_HEADER_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"%s(%s): Got sk_buff with head room < %ld bytes\00", align 1
@DEV_STATE_RUNNING = common dso_local global i64 0, align 8
@DEV_EVENT_START = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ctcm_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ctcm_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 2
  %9 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  store %struct.ctcm_priv* %9, %struct.ctcm_priv** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = icmp eq %struct.sk_buff* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @CTC_DBF_ERROR, align 4
  %15 = load i32, i32* @CTCM_FUNTAIL, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %13, i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %105

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i64 @skb_headroom(%struct.sk_buff* %27)
  %29 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %30 = add nsw i64 %29, 2
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @CTC_DBF_ERROR, align 4
  %35 = load i32, i32* @CTCM_FUNTAIL, align 4
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %40 = add nsw i64 %39, 2
  %41 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %33, i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i64 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  %44 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %45 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %105

50:                                               ; preds = %26
  %51 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %52 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @fsm_getstate(i32 %53)
  %55 = load i64, i64* @DEV_STATE_RUNNING, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %50
  %58 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %59 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DEV_EVENT_START, align 4
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @fsm_event(i32 %60, i32 %61, %struct.net_device* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @dev_kfree_skb(%struct.sk_buff* %64)
  %66 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %67 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %72 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %77 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %81, i32* %3, align 4
  br label %105

82:                                               ; preds = %50
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = call i64 @ctcm_test_and_set_busy(%struct.net_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %87, i32* %3, align 4
  br label %105

88:                                               ; preds = %82
  %89 = load i32, i32* @jiffies, align 4
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %93 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @WRITE, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i64 @ctcm_transmit_skb(i32 %97, %struct.sk_buff* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %102, i32* %3, align 4
  br label %105

103:                                              ; preds = %88
  %104 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %101, %86, %57, %32, %12
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @fsm_getstate(i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

declare dso_local i64 @ctcm_test_and_set_busy(%struct.net_device*) #1

declare dso_local i64 @ctcm_transmit_skb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
