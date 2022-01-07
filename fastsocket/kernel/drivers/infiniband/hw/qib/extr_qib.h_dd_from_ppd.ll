; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib.h_dd_from_ppd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib.h_dd_from_ppd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }
%struct.qib_pportdata = type { %struct.qib_devdata* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qib_devdata* (%struct.qib_pportdata*)* @dd_from_ppd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qib_devdata* @dd_from_ppd(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %3 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %4 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %3, i32 0, i32 0
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  ret %struct.qib_devdata* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
