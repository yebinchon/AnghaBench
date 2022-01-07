; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_ucast_cfg_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_ucast_cfg_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, i32, i32, %struct.bna_mac, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i32 }
%struct.bna_mac = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32 }

@BFI_ENET_H2I_MAC_UCAST_DEL_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BFI_ENET_H2I_MAC_UCAST_SET_REQ = common dso_local global i32 0, align 4
@BFI_ENET_H2I_MAC_UCAST_ADD_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_ucast_cfg_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_ucast_cfg_apply(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca %struct.bna_mac*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store %struct.bna_mac* null, %struct.bna_mac** %4, align 8
  %6 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %7 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %6, i32 0, i32 7
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %12 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %11, i32 0, i32 7
  %13 = call i32 @bfa_q_deq(i32* %12, %struct.list_head** %5)
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8
  %15 = call i32 @bfa_q_qe_init(%struct.list_head* %14)
  %16 = load %struct.list_head*, %struct.list_head** %5, align 8
  %17 = bitcast %struct.list_head* %16 to %struct.bna_mac*
  store %struct.bna_mac* %17, %struct.bna_mac** %4, align 8
  %18 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %19 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %20 = load i32, i32* @BFI_ENET_H2I_MAC_UCAST_DEL_REQ, align 4
  %21 = call i32 @bna_bfi_ucast_req(%struct.bna_rxf* %18, %struct.bna_mac* %19, i32 %20)
  %22 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %23 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %22, i32 0, i32 6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %29 = call i32 @bna_ucam_mod_mac_put(i32* %27, %struct.bna_mac* %28)
  store i32 1, i32* %2, align 4
  br label %79

30:                                               ; preds = %1
  %31 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %32 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %37 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %39 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %43 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %41, i32 %46, i32 %47)
  %49 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %50 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %52 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %53 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %52, i32 0, i32 3
  %54 = load i32, i32* @BFI_ENET_H2I_MAC_UCAST_SET_REQ, align 4
  %55 = call i32 @bna_bfi_ucast_req(%struct.bna_rxf* %51, %struct.bna_mac* %53, i32 %54)
  store i32 1, i32* %2, align 4
  br label %79

56:                                               ; preds = %30
  %57 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %58 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %57, i32 0, i32 2
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %56
  %62 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %63 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %62, i32 0, i32 2
  %64 = call i32 @bfa_q_deq(i32* %63, %struct.list_head** %5)
  %65 = load %struct.list_head*, %struct.list_head** %5, align 8
  %66 = call i32 @bfa_q_qe_init(%struct.list_head* %65)
  %67 = load %struct.list_head*, %struct.list_head** %5, align 8
  %68 = bitcast %struct.list_head* %67 to %struct.bna_mac*
  store %struct.bna_mac* %68, %struct.bna_mac** %4, align 8
  %69 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %70 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %69, i32 0, i32 0
  %71 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %72 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %71, i32 0, i32 1
  %73 = call i32 @list_add_tail(i32* %70, i32* %72)
  %74 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %75 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %76 = load i32, i32* @BFI_ENET_H2I_MAC_UCAST_ADD_REQ, align 4
  %77 = call i32 @bna_bfi_ucast_req(%struct.bna_rxf* %74, %struct.bna_mac* %75, i32 %76)
  store i32 1, i32* %2, align 4
  br label %79

78:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %61, %35, %10
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.list_head**) #1

declare dso_local i32 @bfa_q_qe_init(%struct.list_head*) #1

declare dso_local i32 @bna_bfi_ucast_req(%struct.bna_rxf*, %struct.bna_mac*, i32) #1

declare dso_local i32 @bna_ucam_mod_mac_put(i32*, %struct.bna_mac*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
