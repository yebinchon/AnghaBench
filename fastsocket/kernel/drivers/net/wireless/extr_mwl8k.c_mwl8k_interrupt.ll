; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i64, i64, i32, i32*, i64, i32, i32, i32, i32 }

@MWL8K_HIU_A2H_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@MWL8K_A2H_INT_TX_DONE = common dso_local global i32 0, align 4
@MWL8K_A2H_INT_RX_READY = common dso_local global i32 0, align 4
@MWL8K_A2H_INT_BA_WATCHDOG = common dso_local global i32 0, align 4
@MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK = common dso_local global i64 0, align 8
@MWL8K_A2H_INT_OPC_DONE = common dso_local global i32 0, align 4
@MWL8K_A2H_INT_QUEUE_EMPTY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mwl8k_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.mwl8k_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %12, align 8
  store %struct.mwl8k_priv* %13, %struct.mwl8k_priv** %7, align 8
  %14 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %15 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @ioread32(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MWL8K_A2H_INT_TX_DONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* @MWL8K_A2H_INT_TX_DONE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %35 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %34, i32 0, i32 8
  %36 = call i32 @tasklet_schedule(i32* %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MWL8K_A2H_INT_RX_READY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* @MWL8K_A2H_INT_RX_READY, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %48 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %47, i32 0, i32 7
  %49 = call i32 @tasklet_schedule(i32* %48)
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MWL8K_A2H_INT_BA_WATCHDOG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load i32, i32* @MWL8K_A2H_INT_BA_WATCHDOG, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %59 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @iowrite32(i32 %57, i64 %62)
  %64 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %65 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %64, i32 0, i32 6
  %66 = call i32 @atomic_inc(i32* %65)
  %67 = load i32, i32* @MWL8K_A2H_INT_BA_WATCHDOG, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %72 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %73 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %72, i32 0, i32 5
  %74 = call i32 @ieee80211_queue_work(%struct.ieee80211_hw* %71, i32* %73)
  br label %75

75:                                               ; preds = %55, %50
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %82 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_STATUS, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @iowrite32(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %78, %75
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @MWL8K_A2H_INT_OPC_DONE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %94 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %99 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @complete(i32* %100)
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %87
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @MWL8K_A2H_INT_QUEUE_EMPTY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %103
  %109 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %110 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %109, i32 0, i32 2
  %111 = call i32 @mutex_is_locked(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %108
  %114 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %115 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %120 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %125 = call i32 @mwl8k_tx_start(%struct.mwl8k_priv* %124)
  br label %126

126:                                              ; preds = %123, %118, %113, %108
  br label %127

127:                                              ; preds = %126, %103
  %128 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %22
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ieee80211_queue_work(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @mwl8k_tx_start(%struct.mwl8k_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
