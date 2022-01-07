; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_nic_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_nic_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, i32, %struct.netxen_recv_context, %struct.net_device* }
%struct.netxen_recv_context = type { %struct.nx_host_sds_ring* }
%struct.nx_host_sds_ring = type { i32, i32 }
%struct.net_device = type { i8*, i32 }

@IRQF_SAMPLE_RANDOM = common dso_local global i64 0, align 8
@NETXEN_NIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@netxen_msix_intr = common dso_local global i32 0, align 4
@NETXEN_NIC_MSI_ENABLED = common dso_local global i32 0, align 4
@netxen_msi_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@netxen_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_nic_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_request_irq(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nx_host_sds_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netxen_recv_context*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %11 = load i64, i64* @IRQF_SAMPLE_RANDOM, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %9, align 8
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 3
  store %struct.netxen_recv_context* %16, %struct.netxen_recv_context** %10, align 8
  %17 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NETXEN_NIC_MSIX_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @netxen_msix_intr, align 4
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %1
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NETXEN_NIC_MSI_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @netxen_msi_intr, align 4
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i64, i64* @IRQF_SHARED, align 8
  %36 = load i64, i64* %8, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* @netxen_intr, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %32
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %82, %40
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %46
  %53 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %10, align 8
  %54 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %53, i32 0, i32 0
  %55 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %55, i64 %57
  store %struct.nx_host_sds_ring* %58, %struct.nx_host_sds_ring** %5, align 8
  %59 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %60 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @sprintf(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %65)
  %67 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %68 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %73 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %5, align 8
  %76 = call i32 @request_irq(i32 %69, i32 %70, i64 %71, i32 %74, %struct.nx_host_sds_ring* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %52
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %52
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %46

85:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.nx_host_sds_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
