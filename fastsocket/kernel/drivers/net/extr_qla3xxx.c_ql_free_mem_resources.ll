; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_free_mem_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_free_mem_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32*, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_free_mem_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_mem_resources(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %3 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %4 = call i32 @ql_free_send_free_list(%struct.ql3_adapter* %3)
  %5 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %6 = call i32 @ql_free_large_buffers(%struct.ql3_adapter* %5)
  %7 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %8 = call i32 @ql_free_small_buffers(%struct.ql3_adapter* %7)
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %10 = call i32 @ql_free_buffer_queues(%struct.ql3_adapter* %9)
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %12 = call i32 @ql_free_net_req_rsp_queues(%struct.ql3_adapter* %11)
  %13 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_free_consistent(i32 %20, i32 %21, i32* %24, i32 %27)
  %29 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @ql_free_send_free_list(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_free_large_buffers(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_free_small_buffers(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_free_buffer_queues(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_free_net_req_rsp_queues(%struct.ql3_adapter*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
