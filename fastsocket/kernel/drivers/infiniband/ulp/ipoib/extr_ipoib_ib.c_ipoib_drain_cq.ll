; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_drain_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_drain_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@IPOIB_NUM_WC = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@IPOIB_OP_CM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_drain_cq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ipoib_dev_priv* %7, %struct.ipoib_dev_priv** %3, align 8
  %8 = call i32 (...) @local_bh_disable()
  br label %9

9:                                                ; preds = %99, %1
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IPOIB_NUM_WC, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @ib_poll_cq(i32 %12, i32 %13, %struct.TYPE_5__* %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %95, %9
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %98

22:                                               ; preds = %18
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_WC_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %22
  %34 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %34, i64* %41, align 8
  br label %42

42:                                               ; preds = %33, %22
  %43 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IPOIB_OP_RECV, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %42
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IPOIB_OP_CM, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = call i32 @ipoib_cm_handle_rx_wc(%struct.net_device* %67, %struct.TYPE_5__* %73)
  br label %84

75:                                               ; preds = %54
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %78 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = call i32 @ipoib_ib_handle_rx_wc(%struct.net_device* %76, %struct.TYPE_5__* %82)
  br label %84

84:                                               ; preds = %75, %66
  br label %94

85:                                               ; preds = %42
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %88 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = call i32 @ipoib_cm_handle_tx_wc(%struct.net_device* %86, %struct.TYPE_5__* %92)
  br label %94

94:                                               ; preds = %85, %84
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %18

98:                                               ; preds = %18
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @IPOIB_NUM_WC, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %9, label %103

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %108, %103
  %105 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %106 = call i64 @poll_tx(%struct.ipoib_dev_priv* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %104

109:                                              ; preds = %104
  %110 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ib_poll_cq(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ipoib_cm_handle_rx_wc(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @ipoib_ib_handle_rx_wc(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @ipoib_cm_handle_tx_wc(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i64 @poll_tx(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
