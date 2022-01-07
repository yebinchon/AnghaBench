; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_clean_inbound_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_clean_inbound_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_ring = type { i64, i32, %struct.ql_net_rsp_iocb*, i32, %struct.ql_adapter* }
%struct.ql_net_rsp_iocb = type { i32 }
%struct.ql_adapter = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32 }
%struct.ib_ae_iocb_rsp = type { i32 }

@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cq_id = %d, prod = %d, cnsmr = %d.\0A.\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Hit default case, not handled! dropping the packet, opcode = %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_ring*, i32)* @ql_clean_inbound_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_clean_inbound_rx_ring(%struct.rx_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.rx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ql_net_rsp_iocb*, align 8
  %8 = alloca i32, align 4
  store %struct.rx_ring* %0, %struct.rx_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %10 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %9, i32 0, i32 4
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %10, align 8
  store %struct.ql_adapter* %11, %struct.ql_adapter** %5, align 8
  %12 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ql_read_sh_reg(i32 %14)
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %79, %2
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %19 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %16
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %24 = load i32, i32* @rx_status, align 4
  %25 = load i32, i32* @KERN_DEBUG, align 4
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %30 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %34 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, i32, ...) @netif_printk(%struct.ql_adapter* %23, i32 %24, i32 %25, i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32, i64 %35)
  %37 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %38 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %37, i32 0, i32 2
  %39 = load %struct.ql_net_rsp_iocb*, %struct.ql_net_rsp_iocb** %38, align 8
  store %struct.ql_net_rsp_iocb* %39, %struct.ql_net_rsp_iocb** %7, align 8
  %40 = call i32 (...) @rmb()
  %41 = load %struct.ql_net_rsp_iocb*, %struct.ql_net_rsp_iocb** %7, align 8
  %42 = getelementptr inbounds %struct.ql_net_rsp_iocb, %struct.ql_net_rsp_iocb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %55 [
    i32 128, label %44
    i32 129, label %50
  ]

44:                                               ; preds = %22
  %45 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %46 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %47 = load %struct.ql_net_rsp_iocb*, %struct.ql_net_rsp_iocb** %7, align 8
  %48 = bitcast %struct.ql_net_rsp_iocb* %47 to %struct.ib_mac_iocb_rsp*
  %49 = call i32 @ql_process_mac_rx_intr(%struct.ql_adapter* %45, %struct.rx_ring* %46, %struct.ib_mac_iocb_rsp* %48)
  br label %66

50:                                               ; preds = %22
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %52 = load %struct.ql_net_rsp_iocb*, %struct.ql_net_rsp_iocb** %7, align 8
  %53 = bitcast %struct.ql_net_rsp_iocb* %52 to %struct.ib_ae_iocb_rsp*
  %54 = call i32 @ql_process_chip_ae_intr(%struct.ql_adapter* %51, %struct.ib_ae_iocb_rsp* %53)
  br label %66

55:                                               ; preds = %22
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %57 = load i32, i32* @rx_status, align 4
  %58 = load i32, i32* @KERN_DEBUG, align 4
  %59 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ql_net_rsp_iocb*, %struct.ql_net_rsp_iocb** %7, align 8
  %63 = getelementptr inbounds %struct.ql_net_rsp_iocb, %struct.ql_net_rsp_iocb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, i32, ...) @netif_printk(%struct.ql_adapter* %56, i32 %57, i32 %58, i32 %61, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %55, %50, %44
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %70 = call i32 @ql_update_cq(%struct.rx_ring* %69)
  %71 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %72 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @ql_read_sh_reg(i32 %73)
  store i64 %74, i64* %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %80

79:                                               ; preds = %66
  br label %16

80:                                               ; preds = %78, %16
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %82 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %83 = call i32 @ql_update_buffer_queues(%struct.ql_adapter* %81, %struct.rx_ring* %82)
  %84 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %85 = call i32 @ql_write_cq_idx(%struct.rx_ring* %84)
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i64 @ql_read_sh_reg(i32) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ql_process_mac_rx_intr(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*) #1

declare dso_local i32 @ql_process_chip_ae_intr(%struct.ql_adapter*, %struct.ib_ae_iocb_rsp*) #1

declare dso_local i32 @ql_update_cq(%struct.rx_ring*) #1

declare dso_local i32 @ql_update_buffer_queues(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @ql_write_cq_idx(%struct.rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
