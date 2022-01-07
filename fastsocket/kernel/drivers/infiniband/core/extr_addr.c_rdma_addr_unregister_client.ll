; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_addr.c_rdma_addr_unregister_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_addr.c_rdma_addr_unregister_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addr_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_addr_unregister_client(%struct.rdma_addr_client* %0) #0 {
  %2 = alloca %struct.rdma_addr_client*, align 8
  store %struct.rdma_addr_client* %0, %struct.rdma_addr_client** %2, align 8
  %3 = load %struct.rdma_addr_client*, %struct.rdma_addr_client** %2, align 8
  %4 = call i32 @put_client(%struct.rdma_addr_client* %3)
  %5 = load %struct.rdma_addr_client*, %struct.rdma_addr_client** %2, align 8
  %6 = getelementptr inbounds %struct.rdma_addr_client, %struct.rdma_addr_client* %5, i32 0, i32 0
  %7 = call i32 @wait_for_completion(i32* %6)
  ret void
}

declare dso_local i32 @put_client(%struct.rdma_addr_client*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
