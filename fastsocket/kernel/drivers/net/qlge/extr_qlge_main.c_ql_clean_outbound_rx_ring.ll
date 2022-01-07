; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_clean_outbound_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_clean_outbound_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_ring = type { i64, i32, i64, i32, %struct.ql_adapter* }
%struct.ql_adapter = type { i32, %struct.tx_ring* }
%struct.tx_ring = type { i32, i32, i32 }
%struct.ob_mac_iocb_rsp = type { i32, i64 }

@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cq_id = %d, prod = %d, cnsmr = %d.\0A.\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Hit default case, not handled! dropping the packet, opcode = %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_ring*)* @ql_clean_outbound_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_clean_outbound_rx_ring(%struct.rx_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rx_ring*, align 8
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ob_mac_iocb_rsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_ring*, align 8
  store %struct.rx_ring* %0, %struct.rx_ring** %3, align 8
  %9 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %10 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %9, i32 0, i32 4
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %10, align 8
  store %struct.ql_adapter* %11, %struct.ql_adapter** %4, align 8
  %12 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ql_read_sh_reg(i32 %14)
  store i64 %15, i64* %5, align 8
  store %struct.ob_mac_iocb_rsp* null, %struct.ob_mac_iocb_rsp** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %60, %1
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %19 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %16
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %24 = load i32, i32* @rx_status, align 4
  %25 = load i32, i32* @KERN_DEBUG, align 4
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %30 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %34 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, i32, ...) @netif_printk(%struct.ql_adapter* %23, i32 %24, i32 %25, i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32, i64 %35)
  %37 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %38 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.ob_mac_iocb_rsp*
  store %struct.ob_mac_iocb_rsp* %40, %struct.ob_mac_iocb_rsp** %6, align 8
  %41 = call i32 (...) @rmb()
  %42 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %6, align 8
  %43 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %49 [
    i32 128, label %45
    i32 129, label %45
  ]

45:                                               ; preds = %22, %22
  %46 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %47 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %6, align 8
  %48 = call i32 @ql_process_mac_tx_intr(%struct.ql_adapter* %46, %struct.ob_mac_iocb_rsp* %47)
  br label %60

49:                                               ; preds = %22
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %51 = load i32, i32* @rx_status, align 4
  %52 = load i32, i32* @KERN_DEBUG, align 4
  %53 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %6, align 8
  %57 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, i32, ...) @netif_printk(%struct.ql_adapter* %50, i32 %51, i32 %52, i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %49, %45
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %64 = call i32 @ql_update_cq(%struct.rx_ring* %63)
  %65 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %66 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @ql_read_sh_reg(i32 %67)
  store i64 %68, i64* %5, align 8
  br label %16

69:                                               ; preds = %16
  %70 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %6, align 8
  %71 = icmp ne %struct.ob_mac_iocb_rsp* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %111

73:                                               ; preds = %69
  %74 = load %struct.rx_ring*, %struct.rx_ring** %3, align 8
  %75 = call i32 @ql_write_cq_idx(%struct.rx_ring* %74)
  %76 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %76, i32 0, i32 1
  %78 = load %struct.tx_ring*, %struct.tx_ring** %77, align 8
  %79 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %6, align 8
  %80 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %78, i64 %81
  store %struct.tx_ring* %82, %struct.tx_ring** %8, align 8
  %83 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %87 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @__netif_subqueue_stopped(i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %73
  %92 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %93 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %92, i32 0, i32 2
  %94 = call i32 @atomic_read(i32* %93)
  %95 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %96 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %97, 4
  %99 = icmp sgt i32 %94, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %105 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @netif_wake_subqueue(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %100, %91
  br label %109

109:                                              ; preds = %108, %73
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %72
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @ql_read_sh_reg(i32) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ql_process_mac_tx_intr(%struct.ql_adapter*, %struct.ob_mac_iocb_rsp*) #1

declare dso_local i32 @ql_update_cq(%struct.rx_ring*) #1

declare dso_local i32 @ql_write_cq_idx(%struct.rx_ring*) #1

declare dso_local i64 @__netif_subqueue_stopped(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
