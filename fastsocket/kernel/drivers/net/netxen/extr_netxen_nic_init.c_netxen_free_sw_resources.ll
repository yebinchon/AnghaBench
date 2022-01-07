; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_free_sw_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_free_sw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.nx_host_tx_ring*, %struct.netxen_recv_context }
%struct.nx_host_tx_ring = type { i32*, i32* }
%struct.netxen_recv_context = type { %struct.nx_host_tx_ring* }
%struct.nx_host_rds_ring = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netxen_free_sw_resources(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.netxen_recv_context*, align 8
  %4 = alloca %struct.nx_host_rds_ring*, align 8
  %5 = alloca %struct.nx_host_tx_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %7 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %7, i32 0, i32 2
  store %struct.netxen_recv_context* %8, %struct.netxen_recv_context** %3, align 8
  %9 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %10 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %9, i32 0, i32 0
  %11 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %10, align 8
  %12 = icmp eq %struct.nx_host_tx_ring* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %23 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %22, i32 0, i32 0
  %24 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %24, i64 %26
  %28 = bitcast %struct.nx_host_tx_ring* %27 to %struct.nx_host_rds_ring*
  store %struct.nx_host_rds_ring* %28, %struct.nx_host_rds_ring** %4, align 8
  %29 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %30 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @vfree(i32* %31)
  %33 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %34 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %40 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %39, i32 0, i32 0
  %41 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %40, align 8
  %42 = call i32 @kfree(%struct.nx_host_tx_ring* %41)
  br label %43

43:                                               ; preds = %38, %13
  %44 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %44, i32 0, i32 1
  %46 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %45, align 8
  %47 = icmp eq %struct.nx_host_tx_ring* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %61

49:                                               ; preds = %43
  %50 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %50, i32 0, i32 1
  %52 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %51, align 8
  store %struct.nx_host_tx_ring* %52, %struct.nx_host_tx_ring** %5, align 8
  %53 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %5, align 8
  %54 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @vfree(i32* %55)
  %57 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %5, align 8
  %58 = call i32 @kfree(%struct.nx_host_tx_ring* %57)
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %59, i32 0, i32 1
  store %struct.nx_host_tx_ring* null, %struct.nx_host_tx_ring** %60, align 8
  br label %61

61:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(%struct.nx_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
