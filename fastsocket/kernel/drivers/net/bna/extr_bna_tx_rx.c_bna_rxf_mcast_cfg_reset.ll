; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_mcast_cfg_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_mcast_cfg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }
%struct.bna_mac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*, i32)* @bna_rxf_mcast_cfg_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_mcast_cfg_reset(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bna_rxf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.bna_mac*, align 8
  %8 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %11 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %10, i32 0, i32 3
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %17 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %16, i32 0, i32 3
  %18 = call i32 @bfa_q_deq(i32* %17, %struct.list_head** %6)
  %19 = load %struct.list_head*, %struct.list_head** %6, align 8
  %20 = call i32 @bfa_q_qe_init(%struct.list_head* %19)
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = bitcast %struct.list_head* %21 to %struct.bna_mac*
  store %struct.bna_mac* %22, %struct.bna_mac** %7, align 8
  %23 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %24 = load %struct.bna_mac*, %struct.bna_mac** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @bna_rxf_mcast_del(%struct.bna_rxf* %23, %struct.bna_mac* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %28 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.bna_mac*, %struct.bna_mac** %7, align 8
  %34 = call i32 @bna_mcam_mod_mac_put(i32* %32, %struct.bna_mac* %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %15
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %67

39:                                               ; preds = %15
  br label %9

40:                                               ; preds = %9
  br label %41

41:                                               ; preds = %65, %40
  %42 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %43 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %42, i32 0, i32 1
  %44 = call i32 @list_empty(i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %49 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %48, i32 0, i32 1
  %50 = call i32 @bfa_q_deq(i32* %49, %struct.list_head** %6)
  %51 = load %struct.list_head*, %struct.list_head** %6, align 8
  %52 = call i32 @bfa_q_qe_init(%struct.list_head* %51)
  %53 = load %struct.list_head*, %struct.list_head** %6, align 8
  %54 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %55 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %54, i32 0, i32 0
  %56 = call i32 @list_add_tail(%struct.list_head* %53, i32* %55)
  %57 = load %struct.list_head*, %struct.list_head** %6, align 8
  %58 = bitcast %struct.list_head* %57 to %struct.bna_mac*
  store %struct.bna_mac* %58, %struct.bna_mac** %7, align 8
  %59 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %60 = load %struct.bna_mac*, %struct.bna_mac** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @bna_rxf_mcast_del(%struct.bna_rxf* %59, %struct.bna_mac* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %67

65:                                               ; preds = %47
  br label %41

66:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %37
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.list_head**) #1

declare dso_local i32 @bfa_q_qe_init(%struct.list_head*) #1

declare dso_local i32 @bna_rxf_mcast_del(%struct.bna_rxf*, %struct.bna_mac*, i32) #1

declare dso_local i32 @bna_mcam_mod_mac_put(i32*, %struct.bna_mac*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
