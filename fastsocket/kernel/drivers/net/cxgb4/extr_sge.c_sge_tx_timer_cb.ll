; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_sge_tx_timer_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_sge_tx_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge }
%struct.sge = type { i64*, i32, i32, i32, %struct.sge_eth_txq*, %struct.sge_ofld_txq** }
%struct.sge_eth_txq = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.sge_ofld_txq = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@MAX_TIMER_TX_RECLAIM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TX_QCHECK_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sge_tx_timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_tx_timer_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sge_ofld_txq*, align 8
  %10 = alloca %struct.sge_eth_txq*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.adapter*
  store %struct.adapter* %13, %struct.adapter** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.sge* %15, %struct.sge** %7, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %62, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.sge*, %struct.sge** %7, align 8
  %19 = getelementptr inbounds %struct.sge, %struct.sge* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i64* %20)
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  %24 = load %struct.sge*, %struct.sge** %7, align 8
  %25 = getelementptr inbounds %struct.sge, %struct.sge* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %56, %23
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @__ffs(i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BITS_PER_LONG, align 4
  %39 = mul i32 %37, %38
  %40 = add i32 %36, %39
  %41 = zext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  %42 = load %struct.sge*, %struct.sge** %7, align 8
  %43 = getelementptr inbounds %struct.sge, %struct.sge* %42, i32 0, i32 5
  %44 = load %struct.sge_ofld_txq**, %struct.sge_ofld_txq*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %44, i64 %45
  %47 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %46, align 8
  store %struct.sge_ofld_txq* %47, %struct.sge_ofld_txq** %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.sge*, %struct.sge** %7, align 8
  %50 = getelementptr inbounds %struct.sge, %struct.sge* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @clear_bit(i64 %48, i64* %51)
  %53 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %9, align 8
  %54 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %53, i32 0, i32 0
  %55 = call i32 @tasklet_schedule(i32* %54)
  br label %56

56:                                               ; preds = %34
  %57 = load i64, i64* %3, align 8
  %58 = sub i64 %57, 1
  %59 = load i64, i64* %3, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %3, align 8
  br label %31

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %16

65:                                               ; preds = %16
  %66 = load i32, i32* @MAX_TIMER_TX_RECLAIM, align 4
  store i32 %66, i32* %5, align 4
  %67 = load %struct.sge*, %struct.sge** %7, align 8
  %68 = getelementptr inbounds %struct.sge, %struct.sge* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %152, %65
  %71 = load %struct.sge*, %struct.sge** %7, align 8
  %72 = getelementptr inbounds %struct.sge, %struct.sge* %71, i32 0, i32 4
  %73 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %73, i64 %75
  store %struct.sge_eth_txq* %76, %struct.sge_eth_txq** %10, align 8
  %77 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %10, align 8
  %78 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %134

82:                                               ; preds = %70
  %83 = load i64, i64* @jiffies, align 8
  %84 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %10, align 8
  %85 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @HZ, align 4
  %90 = sdiv i32 %89, 100
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %88, %91
  %93 = call i64 @time_after_eq(i64 %83, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %82
  %96 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %10, align 8
  %97 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i64 @__netif_tx_trylock(%struct.TYPE_6__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %95
  %102 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %10, align 8
  %103 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %102, i32 0, i32 1
  %104 = call i32 @reclaimable(%struct.TYPE_5__* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = load %struct.adapter*, %struct.adapter** %6, align 8
  %115 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %10, align 8
  %116 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %115, i32 0, i32 1
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @free_tx_desc(%struct.adapter* %114, %struct.TYPE_5__* %116, i32 %117, i32 1)
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %10, align 8
  %122 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, %120
  store i64 %125, i64* %123, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %5, align 4
  %128 = sub i32 %127, %126
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %113, %101
  %130 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %10, align 8
  %131 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = call i32 @__netif_tx_unlock(%struct.TYPE_6__* %132)
  br label %134

134:                                              ; preds = %129, %95, %82, %70
  %135 = load i32, i32* %4, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %4, align 4
  %137 = load %struct.sge*, %struct.sge** %7, align 8
  %138 = getelementptr inbounds %struct.sge, %struct.sge* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp uge i32 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %134
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.sge*, %struct.sge** %7, align 8
  %149 = getelementptr inbounds %struct.sge, %struct.sge* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %147, %150
  br label %152

152:                                              ; preds = %146, %143
  %153 = phi i1 [ false, %143 ], [ %151, %146 ]
  br i1 %153, label %70, label %154

154:                                              ; preds = %152
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.sge*, %struct.sge** %7, align 8
  %157 = getelementptr inbounds %struct.sge, %struct.sge* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load %struct.sge*, %struct.sge** %7, align 8
  %159 = getelementptr inbounds %struct.sge, %struct.sge* %158, i32 0, i32 3
  %160 = load i64, i64* @jiffies, align 8
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load i32, i32* @TX_QCHECK_PERIOD, align 4
  br label %166

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165, %163
  %167 = phi i32 [ %164, %163 ], [ 2, %165 ]
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %160, %168
  %170 = call i32 @mod_timer(i32* %159, i64 %169)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @clear_bit(i64, i64*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i64 @__netif_tx_trylock(%struct.TYPE_6__*) #1

declare dso_local i32 @reclaimable(%struct.TYPE_5__*) #1

declare dso_local i32 @free_tx_desc(%struct.adapter*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @__netif_tx_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
