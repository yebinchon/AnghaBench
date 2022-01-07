; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_sge_timer_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_sge_timer_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@A_SG_RSPQ_FL_STATUS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RX_RECLAIM_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sge_timer_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_timer_rx(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sge_qset*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.sge_qset*
  store %struct.sge_qset* %9, %struct.sge_qset** %4, align 8
  %10 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %11 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.port_info* @netdev_priv(i32 %12)
  store %struct.port_info* %13, %struct.port_info** %5, align 8
  %14 = load %struct.port_info*, %struct.port_info** %5, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %6, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %24 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %6, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  br label %34

34:                                               ; preds = %26, %22
  %35 = phi i32* [ %25, %22 ], [ %33, %26 ]
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @spin_trylock_irq(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %146

40:                                               ; preds = %34
  %41 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %42 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %41, i32 0, i32 3
  %43 = call i64 @napi_is_scheduled(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %143

46:                                               ; preds = %40
  %47 = load %struct.adapter*, %struct.adapter** %6, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %100

52:                                               ; preds = %46
  %53 = load %struct.adapter*, %struct.adapter** %6, align 8
  %54 = load i32, i32* @A_SG_RSPQ_FL_STATUS, align 4
  %55 = call i32 @t3_read_reg(%struct.adapter* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %58 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 1, %60
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %52
  %65 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %66 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %71 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %64
  %76 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %77 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.adapter*, %struct.adapter** %6, align 8
  %82 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %83 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %82, i32 0, i32 2
  %84 = call i32 @refill_rspq(%struct.adapter* %81, %struct.TYPE_11__* %83, i32 1)
  %85 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %86 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.adapter*, %struct.adapter** %6, align 8
  %91 = load i32, i32* @A_SG_RSPQ_FL_STATUS, align 4
  %92 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %93 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 1, %95
  %97 = call i32 @t3_write_reg(%struct.adapter* %90, i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %75, %64
  br label %99

99:                                               ; preds = %98, %52
  br label %100

100:                                              ; preds = %99, %46
  %101 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %102 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %108 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %106, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %100
  %115 = load %struct.adapter*, %struct.adapter** %6, align 8
  %116 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %117 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 0
  %120 = call i32 @__refill_fl(%struct.adapter* %115, %struct.TYPE_12__* %119)
  br label %121

121:                                              ; preds = %114, %100
  %122 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %123 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %129 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %127, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %121
  %136 = load %struct.adapter*, %struct.adapter** %6, align 8
  %137 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %138 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 1
  %141 = call i32 @__refill_fl(%struct.adapter* %136, %struct.TYPE_12__* %140)
  br label %142

142:                                              ; preds = %135, %121
  br label %143

143:                                              ; preds = %142, %45
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @spin_unlock_irq(i32* %144)
  br label %146

146:                                              ; preds = %143, %39
  %147 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %148 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %147, i32 0, i32 0
  %149 = load i64, i64* @jiffies, align 8
  %150 = load i64, i64* @RX_RECLAIM_PERIOD, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @mod_timer(i32* %148, i64 %151)
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i32 @spin_trylock_irq(i32*) #1

declare dso_local i64 @napi_is_scheduled(i32*) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @refill_rspq(%struct.adapter*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @__refill_fl(%struct.adapter*, %struct.TYPE_12__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
