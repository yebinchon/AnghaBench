; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_comp_event_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_comp_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_cq*)* @comp_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comp_event_callback(%struct.ehca_cq* %0) #0 {
  %2 = alloca %struct.ehca_cq*, align 8
  store %struct.ehca_cq* %0, %struct.ehca_cq** %2, align 8
  %3 = load %struct.ehca_cq*, %struct.ehca_cq** %2, align 8
  %4 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %5, align 8
  %7 = icmp ne i32 (%struct.TYPE_2__*, i32)* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.ehca_cq*, %struct.ehca_cq** %2, align 8
  %11 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ehca_cq*, %struct.ehca_cq** %2, align 8
  %14 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %15, align 8
  %17 = load %struct.ehca_cq*, %struct.ehca_cq** %2, align 8
  %18 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %17, i32 0, i32 1
  %19 = load %struct.ehca_cq*, %struct.ehca_cq** %2, align 8
  %20 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %16(%struct.TYPE_2__* %18, i32 %22)
  %24 = load %struct.ehca_cq*, %struct.ehca_cq** %2, align 8
  %25 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  br label %27

27:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
