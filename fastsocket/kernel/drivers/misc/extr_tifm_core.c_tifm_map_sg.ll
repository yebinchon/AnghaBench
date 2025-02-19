; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tifm_map_sg(%struct.tifm_dev* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tifm_dev*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tifm_dev* %0, %struct.tifm_dev** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %10 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @to_pci_dev(i32 %12)
  %14 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @pci_map_sg(i32 %13, %struct.scatterlist* %14, i32 %15, i32 %16)
  ret i32 %17
}

declare dso_local i32 @pci_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
