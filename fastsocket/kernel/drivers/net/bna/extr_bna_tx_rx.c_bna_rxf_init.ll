; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i64, i32*, i32, i64, i32, i32, i32, i64*, i32, i32, i32, i32, i32, i32*, i32, i64, i64, i32, i32, %struct.bna_rx* }
%struct.bna_rx = type { i32 }
%struct.bna_rx_config = type { i64, i32, i32, i32, i64 }
%struct.bna_res_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@BNA_RXF_F_PAUSED = common dso_local global i32 0, align 4
@BNA_RX_RES_MEM_T_RIT = common dso_local global i64 0, align 8
@BNA_STATUS_T_ENABLED = common dso_local global i64 0, align 8
@BNA_RSS_F_CFG_PENDING = common dso_local global i32 0, align 4
@BNA_RSS_F_RIT_PENDING = common dso_local global i32 0, align 4
@BNA_RSS_F_STATUS_PENDING = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i32 0, align 4
@BFI_ENET_VLAN_ID_MAX = common dso_local global i32 0, align 4
@BFI_VLAN_BMASK_ALL = common dso_local global i64 0, align 8
@bna_rxf_sm_stopped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, %struct.bna_rx*, %struct.bna_rx_config*, %struct.bna_res_info*)* @bna_rxf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_init(%struct.bna_rxf* %0, %struct.bna_rx* %1, %struct.bna_rx_config* %2, %struct.bna_res_info* %3) #0 {
  %5 = alloca %struct.bna_rxf*, align 8
  %6 = alloca %struct.bna_rx*, align 8
  %7 = alloca %struct.bna_rx_config*, align 8
  %8 = alloca %struct.bna_res_info*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %5, align 8
  store %struct.bna_rx* %1, %struct.bna_rx** %6, align 8
  store %struct.bna_rx_config* %2, %struct.bna_rx_config** %7, align 8
  store %struct.bna_res_info* %3, %struct.bna_res_info** %8, align 8
  %9 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %10 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %11 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %10, i32 0, i32 19
  store %struct.bna_rx* %9, %struct.bna_rx** %11, align 8
  %12 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %13 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %12, i32 0, i32 18
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %16 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %15, i32 0, i32 17
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %19 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %18, i32 0, i32 16
  store i64 0, i64* %19, align 8
  %20 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %21 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %20, i32 0, i32 15
  store i64 0, i64* %21, align 8
  %22 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %23 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %22, i32 0, i32 14
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %26 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %25, i32 0, i32 13
  store i32* null, i32** %26, align 8
  %27 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %28 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %27, i32 0, i32 12
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 11
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %34 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %33, i32 0, i32 10
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %37 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %36, i32 0, i32 9
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %40 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %4
  %44 = load i32, i32* @BNA_RXF_F_PAUSED, align 4
  %45 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %46 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %4
  %50 = load %struct.bna_res_info*, %struct.bna_res_info** %8, align 8
  %51 = load i64, i64* @BNA_RX_RES_MEM_T_RIT, align 8
  %52 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %50, i64 %51
  %53 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %62 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %61, i32 0, i32 7
  store i64* %60, i64** %62, align 8
  %63 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %64 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %65 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bna_rit_init(%struct.bna_rxf* %63, i32 %66)
  %68 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %69 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %72 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %74 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BNA_STATUS_T_ENABLED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %49
  %79 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %80 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %83 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @BNA_RSS_F_CFG_PENDING, align 4
  %85 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %86 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @BNA_RSS_F_RIT_PENDING, align 4
  %90 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %91 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @BNA_RSS_F_STATUS_PENDING, align 4
  %95 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %96 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %78, %49
  %100 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %101 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %102 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %104 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @BFI_ENET_VLAN_ID_MAX, align 4
  %107 = sdiv i32 %106, 32
  %108 = sext i32 %107 to i64
  %109 = mul i64 4, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(i32* %105, i32 0, i32 %110)
  %112 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %113 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load i64, i64* @BFI_VLAN_BMASK_ALL, align 8
  %119 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %120 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %122 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %125 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %127 = load i32, i32* @bna_rxf_sm_stopped, align 4
  %128 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %126, i32 %127)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bna_rit_init(%struct.bna_rxf*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
