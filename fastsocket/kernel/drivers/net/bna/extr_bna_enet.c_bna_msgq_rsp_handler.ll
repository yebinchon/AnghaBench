; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_msgq_rsp_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_msgq_rsp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_msgq_mhdr = type { i32, i32 }
%struct.bna = type { i32, i32, i32, i32 }
%struct.bna_tx = type { i32 }
%struct.bna_rx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfi_msgq_mhdr*)* @bna_msgq_rsp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_msgq_rsp_handler(i8* %0, %struct.bfi_msgq_mhdr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_msgq_mhdr*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_tx*, align 8
  %7 = alloca %struct.bna_rx*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_msgq_mhdr* %1, %struct.bfi_msgq_mhdr** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bna*
  store %struct.bna* %9, %struct.bna** %5, align 8
  %10 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %11 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %163 [
    i32 137, label %13
    i32 138, label %27
    i32 141, label %41
    i32 140, label %41
    i32 139, label %41
    i32 135, label %41
    i32 136, label %41
    i32 147, label %41
    i32 148, label %41
    i32 146, label %41
    i32 150, label %41
    i32 149, label %41
    i32 134, label %41
    i32 133, label %41
    i32 145, label %56
    i32 151, label %71
    i32 128, label %86
    i32 129, label %100
    i32 144, label %114
    i32 155, label %119
    i32 132, label %124
    i32 154, label %129
    i32 130, label %134
    i32 131, label %138
    i32 152, label %139
    i32 153, label %144
    i32 142, label %149
    i32 143, label %154
    i32 156, label %159
  ]

13:                                               ; preds = %2
  %14 = load %struct.bna*, %struct.bna** %5, align 8
  %15 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %16 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %19 = call i32 @bna_rx_from_rid(%struct.bna* %14, i32 %17, %struct.bna_rx* %18)
  %20 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %21 = icmp ne %struct.bna_rx* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %24 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %25 = call i32 @bna_bfi_rx_enet_start_rsp(%struct.bna_rx* %23, %struct.bfi_msgq_mhdr* %24)
  br label %26

26:                                               ; preds = %22, %13
  br label %164

27:                                               ; preds = %2
  %28 = load %struct.bna*, %struct.bna** %5, align 8
  %29 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %30 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %33 = call i32 @bna_rx_from_rid(%struct.bna* %28, i32 %31, %struct.bna_rx* %32)
  %34 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %35 = icmp ne %struct.bna_rx* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %38 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %39 = call i32 @bna_bfi_rx_enet_stop_rsp(%struct.bna_rx* %37, %struct.bfi_msgq_mhdr* %38)
  br label %40

40:                                               ; preds = %36, %27
  br label %164

41:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %42 = load %struct.bna*, %struct.bna** %5, align 8
  %43 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %44 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %47 = call i32 @bna_rx_from_rid(%struct.bna* %42, i32 %45, %struct.bna_rx* %46)
  %48 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %49 = icmp ne %struct.bna_rx* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %52 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %51, i32 0, i32 0
  %53 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %54 = call i32 @bna_bfi_rxf_cfg_rsp(i32* %52, %struct.bfi_msgq_mhdr* %53)
  br label %55

55:                                               ; preds = %50, %41
  br label %164

56:                                               ; preds = %2
  %57 = load %struct.bna*, %struct.bna** %5, align 8
  %58 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %59 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %62 = call i32 @bna_rx_from_rid(%struct.bna* %57, i32 %60, %struct.bna_rx* %61)
  %63 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %64 = icmp ne %struct.bna_rx* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %67 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %66, i32 0, i32 0
  %68 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %69 = call i32 @bna_bfi_rxf_ucast_set_rsp(i32* %67, %struct.bfi_msgq_mhdr* %68)
  br label %70

70:                                               ; preds = %65, %56
  br label %164

71:                                               ; preds = %2
  %72 = load %struct.bna*, %struct.bna** %5, align 8
  %73 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %74 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %77 = call i32 @bna_rx_from_rid(%struct.bna* %72, i32 %75, %struct.bna_rx* %76)
  %78 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %79 = icmp ne %struct.bna_rx* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  %82 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %81, i32 0, i32 0
  %83 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %84 = call i32 @bna_bfi_rxf_mcast_add_rsp(i32* %82, %struct.bfi_msgq_mhdr* %83)
  br label %85

85:                                               ; preds = %80, %71
  br label %164

86:                                               ; preds = %2
  %87 = load %struct.bna*, %struct.bna** %5, align 8
  %88 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %89 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bna_tx*, %struct.bna_tx** %6, align 8
  %92 = call i32 @bna_tx_from_rid(%struct.bna* %87, i32 %90, %struct.bna_tx* %91)
  %93 = load %struct.bna_tx*, %struct.bna_tx** %6, align 8
  %94 = icmp ne %struct.bna_tx* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.bna_tx*, %struct.bna_tx** %6, align 8
  %97 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %98 = call i32 @bna_bfi_tx_enet_start_rsp(%struct.bna_tx* %96, %struct.bfi_msgq_mhdr* %97)
  br label %99

99:                                               ; preds = %95, %86
  br label %164

100:                                              ; preds = %2
  %101 = load %struct.bna*, %struct.bna** %5, align 8
  %102 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %103 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.bna_tx*, %struct.bna_tx** %6, align 8
  %106 = call i32 @bna_tx_from_rid(%struct.bna* %101, i32 %104, %struct.bna_tx* %105)
  %107 = load %struct.bna_tx*, %struct.bna_tx** %6, align 8
  %108 = icmp ne %struct.bna_tx* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load %struct.bna_tx*, %struct.bna_tx** %6, align 8
  %111 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %112 = call i32 @bna_bfi_tx_enet_stop_rsp(%struct.bna_tx* %110, %struct.bfi_msgq_mhdr* %111)
  br label %113

113:                                              ; preds = %109, %100
  br label %164

114:                                              ; preds = %2
  %115 = load %struct.bna*, %struct.bna** %5, align 8
  %116 = getelementptr inbounds %struct.bna, %struct.bna* %115, i32 0, i32 1
  %117 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %118 = call i32 @bna_bfi_ethport_admin_rsp(i32* %116, %struct.bfi_msgq_mhdr* %117)
  br label %164

119:                                              ; preds = %2
  %120 = load %struct.bna*, %struct.bna** %5, align 8
  %121 = getelementptr inbounds %struct.bna, %struct.bna* %120, i32 0, i32 1
  %122 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %123 = call i32 @bna_bfi_ethport_lpbk_rsp(i32* %121, %struct.bfi_msgq_mhdr* %122)
  br label %164

124:                                              ; preds = %2
  %125 = load %struct.bna*, %struct.bna** %5, align 8
  %126 = getelementptr inbounds %struct.bna, %struct.bna* %125, i32 0, i32 3
  %127 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %128 = call i32 @bna_bfi_pause_set_rsp(i32* %126, %struct.bfi_msgq_mhdr* %127)
  br label %164

129:                                              ; preds = %2
  %130 = load %struct.bna*, %struct.bna** %5, align 8
  %131 = getelementptr inbounds %struct.bna, %struct.bna* %130, i32 0, i32 2
  %132 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %133 = call i32 @bna_bfi_attr_get_rsp(i32* %131, %struct.bfi_msgq_mhdr* %132)
  br label %164

134:                                              ; preds = %2
  %135 = load %struct.bna*, %struct.bna** %5, align 8
  %136 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %137 = call i32 @bna_bfi_stats_get_rsp(%struct.bna* %135, %struct.bfi_msgq_mhdr* %136)
  br label %164

138:                                              ; preds = %2
  br label %164

139:                                              ; preds = %2
  %140 = load %struct.bna*, %struct.bna** %5, align 8
  %141 = getelementptr inbounds %struct.bna, %struct.bna* %140, i32 0, i32 1
  %142 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %143 = call i32 @bna_bfi_ethport_linkup_aen(i32* %141, %struct.bfi_msgq_mhdr* %142)
  br label %164

144:                                              ; preds = %2
  %145 = load %struct.bna*, %struct.bna** %5, align 8
  %146 = getelementptr inbounds %struct.bna, %struct.bna* %145, i32 0, i32 1
  %147 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %148 = call i32 @bna_bfi_ethport_linkdown_aen(i32* %146, %struct.bfi_msgq_mhdr* %147)
  br label %164

149:                                              ; preds = %2
  %150 = load %struct.bna*, %struct.bna** %5, align 8
  %151 = getelementptr inbounds %struct.bna, %struct.bna* %150, i32 0, i32 1
  %152 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %153 = call i32 @bna_bfi_ethport_enable_aen(i32* %151, %struct.bfi_msgq_mhdr* %152)
  br label %164

154:                                              ; preds = %2
  %155 = load %struct.bna*, %struct.bna** %5, align 8
  %156 = getelementptr inbounds %struct.bna, %struct.bna* %155, i32 0, i32 1
  %157 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %158 = call i32 @bna_bfi_ethport_disable_aen(i32* %156, %struct.bfi_msgq_mhdr* %157)
  br label %164

159:                                              ; preds = %2
  %160 = load %struct.bna*, %struct.bna** %5, align 8
  %161 = getelementptr inbounds %struct.bna, %struct.bna* %160, i32 0, i32 0
  %162 = call i32 @bna_bfi_bw_update_aen(i32* %161)
  br label %164

163:                                              ; preds = %2
  br label %164

164:                                              ; preds = %163, %159, %154, %149, %144, %139, %138, %134, %129, %124, %119, %114, %113, %99, %85, %70, %55, %40, %26
  ret void
}

declare dso_local i32 @bna_rx_from_rid(%struct.bna*, i32, %struct.bna_rx*) #1

declare dso_local i32 @bna_bfi_rx_enet_start_rsp(%struct.bna_rx*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_rx_enet_stop_rsp(%struct.bna_rx*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_rxf_cfg_rsp(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_rxf_ucast_set_rsp(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_rxf_mcast_add_rsp(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_tx_from_rid(%struct.bna*, i32, %struct.bna_tx*) #1

declare dso_local i32 @bna_bfi_tx_enet_start_rsp(%struct.bna_tx*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_tx_enet_stop_rsp(%struct.bna_tx*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_ethport_admin_rsp(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_ethport_lpbk_rsp(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_pause_set_rsp(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_attr_get_rsp(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_stats_get_rsp(%struct.bna*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_ethport_linkup_aen(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_ethport_linkdown_aen(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_ethport_enable_aen(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_ethport_disable_aen(i32*, %struct.bfi_msgq_mhdr*) #1

declare dso_local i32 @bna_bfi_bw_update_aen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
