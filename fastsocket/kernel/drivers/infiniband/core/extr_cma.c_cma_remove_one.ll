; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.cma_device = type { i32 }

@cma_client = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @cma_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_remove_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.cma_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %4 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %5 = call %struct.cma_device* @ib_get_client_data(%struct.ib_device* %4, i32* @cma_client)
  store %struct.cma_device* %5, %struct.cma_device** %3, align 8
  %6 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %7 = icmp ne %struct.cma_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  %10 = call i32 @mutex_lock(i32* @lock)
  %11 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %12 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %11, i32 0, i32 0
  %13 = call i32 @list_del(i32* %12)
  %14 = call i32 @mutex_unlock(i32* @lock)
  %15 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %16 = call i32 @cma_process_remove(%struct.cma_device* %15)
  %17 = load %struct.cma_device*, %struct.cma_device** %3, align 8
  %18 = call i32 @kfree(%struct.cma_device* %17)
  br label %19

19:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.cma_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cma_process_remove(%struct.cma_device*) #1

declare dso_local i32 @kfree(%struct.cma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
