; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_tx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.tx_ring* }
%struct.tx_ring = type { i32, i32, i32, %struct.tx_ring_desc* }
%struct.tx_ring_desc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ob_mac_iocb_rsp = type { i64, i64, i32 }

@OB_MAC_IOCB_RSP_E = common dso_local global i32 0, align 4
@OB_MAC_IOCB_RSP_S = common dso_local global i32 0, align 4
@OB_MAC_IOCB_RSP_L = common dso_local global i32 0, align 4
@OB_MAC_IOCB_RSP_P = common dso_local global i32 0, align 4
@OB_MAC_IOCB_RSP_B = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Total descriptor length did not match transfer length.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Frame too short to be valid, not sent.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Frame too long, but sent anyway.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"PCI backplane error. Frame not sent.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.ob_mac_iocb_rsp*)* @ql_process_mac_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_tx_intr(%struct.ql_adapter* %0, %struct.ob_mac_iocb_rsp* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.ob_mac_iocb_rsp*, align 8
  %5 = alloca %struct.tx_ring*, align 8
  %6 = alloca %struct.tx_ring_desc*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.ob_mac_iocb_rsp* %1, %struct.ob_mac_iocb_rsp** %4, align 8
  %7 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %8 = call i32 @QL_DUMP_OB_MAC_RSP(%struct.ob_mac_iocb_rsp* %7)
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 1
  %11 = load %struct.tx_ring*, %struct.tx_ring** %10, align 8
  %12 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %13 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %11, i64 %14
  store %struct.tx_ring* %15, %struct.tx_ring** %5, align 8
  %16 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %17 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %16, i32 0, i32 3
  %18 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %17, align 8
  %19 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %20 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %18, i64 %21
  store %struct.tx_ring_desc* %22, %struct.tx_ring_desc** %6, align 8
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %24 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %6, align 8
  %25 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %6, align 8
  %26 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ql_unmap_send(%struct.ql_adapter* %23, %struct.tx_ring_desc* %24, i32 %27)
  %29 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %6, align 8
  %30 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  %40 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %6, align 8
  %45 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @dev_kfree_skb(%struct.TYPE_2__* %46)
  %48 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %6, align 8
  %49 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %48, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %49, align 8
  %50 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %51 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @OB_MAC_IOCB_RSP_E, align 4
  %54 = load i32, i32* @OB_MAC_IOCB_RSP_S, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @OB_MAC_IOCB_RSP_L, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @OB_MAC_IOCB_RSP_P, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @OB_MAC_IOCB_RSP_B, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %52, %61
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %122

65:                                               ; preds = %2
  %66 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %67 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @OB_MAC_IOCB_RSP_E, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %74 = load i32, i32* @tx_done, align 4
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @netif_warn(%struct.ql_adapter* %73, i32 %74, i32 %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %72, %65
  %80 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %81 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @OB_MAC_IOCB_RSP_S, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %88 = load i32, i32* @tx_done, align 4
  %89 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @netif_warn(%struct.ql_adapter* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %95 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @OB_MAC_IOCB_RSP_L, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %102 = load i32, i32* @tx_done, align 4
  %103 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @netif_warn(%struct.ql_adapter* %101, i32 %102, i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %100, %93
  %108 = load %struct.ob_mac_iocb_rsp*, %struct.ob_mac_iocb_rsp** %4, align 8
  %109 = getelementptr inbounds %struct.ob_mac_iocb_rsp, %struct.ob_mac_iocb_rsp* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @OB_MAC_IOCB_RSP_B, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %116 = load i32, i32* @tx_done, align 4
  %117 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @netif_warn(%struct.ql_adapter* %115, i32 %116, i32 %119, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %114, %107
  br label %122

122:                                              ; preds = %121, %2
  %123 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %124 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %123, i32 0, i32 0
  %125 = call i32 @atomic_inc(i32* %124)
  ret void
}

declare dso_local i32 @QL_DUMP_OB_MAC_RSP(%struct.ob_mac_iocb_rsp*) #1

declare dso_local i32 @ql_unmap_send(%struct.ql_adapter*, %struct.tx_ring_desc*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_2__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_warn(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
