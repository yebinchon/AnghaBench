; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_ucast_cfg_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_ucast_cfg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.bna_mac, i64, i32, i32, %struct.TYPE_4__*, i32 }
%struct.bna_mac = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }

@BNA_SOFT_CLEANUP = common dso_local global i32 0, align 4
@BFI_ENET_H2I_MAC_UCAST_DEL_REQ = common dso_local global i32 0, align 4
@BNA_HARD_CLEANUP = common dso_local global i32 0, align 4
@BFI_ENET_H2I_MAC_UCAST_CLR_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*, i32)* @bna_rxf_ucast_cfg_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_ucast_cfg_reset(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bna_rxf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.bna_mac*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %47, %2
  %9 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %10 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %9, i32 0, i32 6
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %16 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %15, i32 0, i32 6
  %17 = call i32 @bfa_q_deq(i32* %16, %struct.list_head** %6)
  %18 = load %struct.list_head*, %struct.list_head** %6, align 8
  %19 = call i32 @bfa_q_qe_init(%struct.list_head* %18)
  %20 = load %struct.list_head*, %struct.list_head** %6, align 8
  %21 = bitcast %struct.list_head* %20 to %struct.bna_mac*
  store %struct.bna_mac* %21, %struct.bna_mac** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BNA_SOFT_CLEANUP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %14
  %26 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %27 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.bna_mac*, %struct.bna_mac** %7, align 8
  %33 = call i32 @bna_ucam_mod_mac_put(i32* %31, %struct.bna_mac* %32)
  br label %47

34:                                               ; preds = %14
  %35 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %36 = load %struct.bna_mac*, %struct.bna_mac** %7, align 8
  %37 = load i32, i32* @BFI_ENET_H2I_MAC_UCAST_DEL_REQ, align 4
  %38 = call i32 @bna_bfi_ucast_req(%struct.bna_rxf* %35, %struct.bna_mac* %36, i32 %37)
  %39 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %40 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.bna_mac*, %struct.bna_mac** %7, align 8
  %46 = call i32 @bna_ucam_mod_mac_put(i32* %44, %struct.bna_mac* %45)
  store i32 1, i32* %3, align 4
  br label %97

47:                                               ; preds = %25
  br label %8

48:                                               ; preds = %8
  br label %49

49:                                               ; preds = %75, %48
  %50 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %51 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %50, i32 0, i32 4
  %52 = call i32 @list_empty(i32* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %57 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %56, i32 0, i32 4
  %58 = call i32 @bfa_q_deq(i32* %57, %struct.list_head** %6)
  %59 = load %struct.list_head*, %struct.list_head** %6, align 8
  %60 = call i32 @bfa_q_qe_init(%struct.list_head* %59)
  %61 = load %struct.list_head*, %struct.list_head** %6, align 8
  %62 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %63 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %62, i32 0, i32 3
  %64 = call i32 @list_add_tail(%struct.list_head* %61, i32* %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %55
  %69 = load %struct.list_head*, %struct.list_head** %6, align 8
  %70 = bitcast %struct.list_head* %69 to %struct.bna_mac*
  store %struct.bna_mac* %70, %struct.bna_mac** %7, align 8
  %71 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %72 = load %struct.bna_mac*, %struct.bna_mac** %7, align 8
  %73 = load i32, i32* @BFI_ENET_H2I_MAC_UCAST_DEL_REQ, align 4
  %74 = call i32 @bna_bfi_ucast_req(%struct.bna_rxf* %71, %struct.bna_mac* %72, i32 %73)
  store i32 1, i32* %3, align 4
  br label %97

75:                                               ; preds = %55
  br label %49

76:                                               ; preds = %49
  %77 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %78 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %83 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %85 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %91 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %92 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %91, i32 0, i32 1
  %93 = load i32, i32* @BFI_ENET_H2I_MAC_UCAST_CLR_REQ, align 4
  %94 = call i32 @bna_bfi_ucast_req(%struct.bna_rxf* %90, %struct.bna_mac* %92, i32 %93)
  store i32 1, i32* %3, align 4
  br label %97

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %76
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %89, %68, %34
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.list_head**) #1

declare dso_local i32 @bfa_q_qe_init(%struct.list_head*) #1

declare dso_local i32 @bna_ucam_mod_mac_put(i32*, %struct.bna_mac*) #1

declare dso_local i32 @bna_bfi_ucast_req(%struct.bna_rxf*, %struct.bna_mac*, i32) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
