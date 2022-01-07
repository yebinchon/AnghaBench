; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_free_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_free_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32*, i32, i64, i64, i64 }
%struct.wl12xx_vif = type { i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@WL1271_TX_SQN_POST_RECOVERY_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl12xx_free_link(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64*, i64** %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %138

13:                                               ; preds = %3
  %14 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 3
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @__clear_bit(i64 %19, i32 %22)
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @__clear_bit(i64 %25, i32 %28)
  %30 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 3
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @memset(i32 %62, i32 0, i32 %63)
  %65 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @wl1271_tx_reset_link_queues(%struct.wl1271* %65, i64 %67)
  %69 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %77 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %95, label %81

81:                                               ; preds = %13
  %82 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %83 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = load i64*, i64** %6, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %91 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %89, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %87, %13
  %96 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %97 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64*, i64** %6, align 8
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %105 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %107 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %108 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %107, i32 0, i32 2
  %109 = call i64 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %95
  %112 = load i64, i64* @WL1271_TX_SQN_POST_RECOVERY_PADDING, align 8
  %113 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %114 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %111, %95
  br label %118

118:                                              ; preds = %117, %87, %81
  %119 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i64*, i64** %6, align 8
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %127 = load i64*, i64** %6, align 8
  store i64 %126, i64* %127, align 8
  %128 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %129 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, -1
  store i64 %131, i64* %129, align 8
  %132 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %133 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @WARN_ON_ONCE(i32 %136)
  br label %138

138:                                              ; preds = %118, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wl1271_tx_reset_link_queues(%struct.wl1271*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
