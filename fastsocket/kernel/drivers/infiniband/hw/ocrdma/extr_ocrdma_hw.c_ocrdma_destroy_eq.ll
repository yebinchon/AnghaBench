; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_destroy_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_destroy_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_eq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_eq*)* @ocrdma_destroy_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_destroy_eq(%struct.ocrdma_dev* %0, %struct.ocrdma_eq* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_eq*, align 8
  %5 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_eq* %1, %struct.ocrdma_eq** %4, align 8
  %6 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %7 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %8 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ocrdma_ring_eq_db(%struct.ocrdma_dev* %6, i32 %10, i32 0, i32 0, i32 0)
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %13 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %14 = call i32 @ocrdma_get_irq(%struct.ocrdma_dev* %12, %struct.ocrdma_eq* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.ocrdma_eq* %16)
  %18 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %19 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %20 = call i32 @_ocrdma_destroy_eq(%struct.ocrdma_dev* %18, %struct.ocrdma_eq* %19)
  ret void
}

declare dso_local i32 @ocrdma_ring_eq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @ocrdma_get_irq(%struct.ocrdma_dev*, %struct.ocrdma_eq*) #1

declare dso_local i32 @free_irq(i32, %struct.ocrdma_eq*) #1

declare dso_local i32 @_ocrdma_destroy_eq(%struct.ocrdma_dev*, %struct.ocrdma_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
