; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_assign_eq_vect_gen2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_assign_eq_vect_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_eq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_eq*)* @ocrdma_assign_eq_vect_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_assign_eq_vect_gen2(%struct.ocrdma_dev* %0, %struct.ocrdma_eq* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_eq*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_eq* %1, %struct.ocrdma_eq** %4, align 8
  %5 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %6 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %11 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
