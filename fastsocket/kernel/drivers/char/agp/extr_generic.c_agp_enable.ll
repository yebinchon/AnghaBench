; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.agp_bridge_data*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp_enable(%struct.agp_bridge_data* %0, i32 %1) #0 {
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %6 = icmp ne %struct.agp_bridge_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  %9 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %10 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.agp_bridge_data*, i32)*, i32 (%struct.agp_bridge_data*, i32)** %12, align 8
  %14 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 %13(%struct.agp_bridge_data* %14, i32 %15)
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
