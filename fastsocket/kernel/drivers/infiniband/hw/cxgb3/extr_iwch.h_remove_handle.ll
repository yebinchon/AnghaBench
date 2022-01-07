; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch.h_remove_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch.h_remove_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_dev = type { i32 }
%struct.idr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwch_dev*, %struct.idr*, i32)* @remove_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_handle(%struct.iwch_dev* %0, %struct.idr* %1, i32 %2) #0 {
  %4 = alloca %struct.iwch_dev*, align 8
  %5 = alloca %struct.idr*, align 8
  %6 = alloca i32, align 4
  store %struct.iwch_dev* %0, %struct.iwch_dev** %4, align 8
  store %struct.idr* %1, %struct.idr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iwch_dev*, %struct.iwch_dev** %4, align 8
  %8 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.idr*, %struct.idr** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @idr_remove(%struct.idr* %10, i32 %11)
  %13 = load %struct.iwch_dev*, %struct.iwch_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock_irq(i32* %14)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_remove(%struct.idr*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
