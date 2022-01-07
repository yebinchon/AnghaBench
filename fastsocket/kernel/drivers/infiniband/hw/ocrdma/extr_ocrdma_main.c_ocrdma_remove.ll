; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, i32, i32 }

@ocrdma_devlist_lock = common dso_local global i32 0, align 4
@ocrdma_remove_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*)* @ocrdma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_remove(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %3 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %4 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %3, i32 0, i32 2
  %5 = call i32 @ib_unregister_device(i32* %4)
  %6 = call i32 @spin_lock(i32* @ocrdma_devlist_lock)
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 1
  %9 = call i32 @list_del_rcu(i32* %8)
  %10 = call i32 @spin_unlock(i32* @ocrdma_devlist_lock)
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = load i32, i32* @ocrdma_remove_free, align 4
  %14 = call i32 @call_rcu(i32* %12, i32 %13)
  ret void
}

declare dso_local i32 @ib_unregister_device(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
