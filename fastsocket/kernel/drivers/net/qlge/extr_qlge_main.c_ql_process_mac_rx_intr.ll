; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_rx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_process_mac_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.rx_ring = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32, i32, i32, i32 }

@IB_MAC_IOCB_RSP_V = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_VLAN_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_HV = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_DS = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_DL = common dso_local global i32 0, align 4
@IB_MAC_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*)* @ql_process_mac_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ql_process_mac_rx_intr(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2) #0 {
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.rx_ring*, align 8
  %6 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %5, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %6, align 8
  %9 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %10 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le32_to_cpu(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %14 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IB_MAC_IOCB_RSP_V, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %21 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load i32, i32* @IB_MAC_IOCB_RSP_VLAN_MASK, align 4
  %25 = and i32 %23, %24
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i32 [ %25, %19 ], [ 65535, %26 ]
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %30 = call i32 @QL_DUMP_IB_MAC_RSP(%struct.ib_mac_iocb_rsp* %29)
  %31 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %32 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IB_MAC_IOCB_RSP_HV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %39 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %40 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ql_process_mac_split_rx_intr(%struct.ql_adapter* %38, %struct.rx_ring* %39, %struct.ib_mac_iocb_rsp* %40, i32 %41)
  br label %108

43:                                               ; preds = %27
  %44 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %45 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IB_MAC_IOCB_RSP_DS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %52 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %53 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ql_process_mac_rx_skb(%struct.ql_adapter* %51, %struct.rx_ring* %52, %struct.ib_mac_iocb_rsp* %53, i64 %54, i32 %55)
  br label %107

57:                                               ; preds = %43
  %58 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %59 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IB_MAC_IOCB_RSP_DL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %57
  %65 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %66 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IB_MAC_CSUM_ERR_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %64
  %72 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %73 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IB_MAC_IOCB_RSP_T, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %80 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %81 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ql_process_mac_rx_gro_page(%struct.ql_adapter* %79, %struct.rx_ring* %80, %struct.ib_mac_iocb_rsp* %81, i64 %82, i32 %83)
  br label %106

85:                                               ; preds = %71, %64, %57
  %86 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %87 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IB_MAC_IOCB_RSP_DL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %94 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %95 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @ql_process_mac_rx_page(%struct.ql_adapter* %93, %struct.rx_ring* %94, %struct.ib_mac_iocb_rsp* %95, i64 %96, i32 %97)
  br label %105

99:                                               ; preds = %85
  %100 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %101 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %102 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @ql_process_mac_split_rx_intr(%struct.ql_adapter* %100, %struct.rx_ring* %101, %struct.ib_mac_iocb_rsp* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %92
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106, %50
  br label %108

108:                                              ; preds = %107, %37
  %109 = load i64, i64* %7, align 8
  ret i64 %109
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @QL_DUMP_IB_MAC_RSP(%struct.ib_mac_iocb_rsp*) #1

declare dso_local i32 @ql_process_mac_split_rx_intr(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i32) #1

declare dso_local i32 @ql_process_mac_rx_skb(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32) #1

declare dso_local i32 @ql_process_mac_rx_gro_page(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32) #1

declare dso_local i32 @ql_process_mac_rx_page(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
