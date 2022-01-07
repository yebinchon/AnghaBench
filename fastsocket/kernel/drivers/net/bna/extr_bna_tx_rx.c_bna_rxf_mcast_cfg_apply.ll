; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_mcast_cfg_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_mcast_cfg_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bna_mac = type { i32 }
%struct.list_head = type { i32 }

@BNA_HARD_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_mcast_cfg_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_mcast_cfg_apply(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca %struct.bna_mac*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store %struct.bna_mac* null, %struct.bna_mac** %4, align 8
  br label %7

7:                                                ; preds = %37, %1
  %8 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %9 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %8, i32 0, i32 3
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %38

13:                                               ; preds = %7
  %14 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %15 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %14, i32 0, i32 3
  %16 = call i32 @bfa_q_deq(i32* %15, %struct.list_head** %5)
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = call i32 @bfa_q_qe_init(%struct.list_head* %17)
  %19 = load %struct.list_head*, %struct.list_head** %5, align 8
  %20 = bitcast %struct.list_head* %19 to %struct.bna_mac*
  store %struct.bna_mac* %20, %struct.bna_mac** %4, align 8
  %21 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %22 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %23 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %24 = call i32 @bna_rxf_mcast_del(%struct.bna_rxf* %21, %struct.bna_mac* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %26 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %32 = call i32 @bna_mcam_mod_mac_put(i32* %30, %struct.bna_mac* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %13
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %60

37:                                               ; preds = %13
  br label %7

38:                                               ; preds = %7
  %39 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %40 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %39, i32 0, i32 1
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %45 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %44, i32 0, i32 1
  %46 = call i32 @bfa_q_deq(i32* %45, %struct.list_head** %5)
  %47 = load %struct.list_head*, %struct.list_head** %5, align 8
  %48 = call i32 @bfa_q_qe_init(%struct.list_head* %47)
  %49 = load %struct.list_head*, %struct.list_head** %5, align 8
  %50 = bitcast %struct.list_head* %49 to %struct.bna_mac*
  store %struct.bna_mac* %50, %struct.bna_mac** %4, align 8
  %51 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %52 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %51, i32 0, i32 0
  %53 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %54 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %57 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %58 = call i32 @bna_bfi_mcast_add_req(%struct.bna_rxf* %56, %struct.bna_mac* %57)
  store i32 1, i32* %2, align 4
  br label %60

59:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %43, %35
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.list_head**) #1

declare dso_local i32 @bfa_q_qe_init(%struct.list_head*) #1

declare dso_local i32 @bna_rxf_mcast_del(%struct.bna_rxf*, %struct.bna_mac*, i32) #1

declare dso_local i32 @bna_mcam_mod_mac_put(i32*, %struct.bna_mac*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bna_bfi_mcast_add_req(%struct.bna_rxf*, %struct.bna_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
