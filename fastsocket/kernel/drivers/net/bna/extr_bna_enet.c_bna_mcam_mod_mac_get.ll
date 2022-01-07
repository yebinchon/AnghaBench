; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_mcam_mod_mac_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_mcam_mod_mac_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_mac = type { i32 }
%struct.bna_mcam_mod = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bna_mac* @bna_mcam_mod_mac_get(%struct.bna_mcam_mod* %0) #0 {
  %2 = alloca %struct.bna_mac*, align 8
  %3 = alloca %struct.bna_mcam_mod*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.bna_mcam_mod* %0, %struct.bna_mcam_mod** %3, align 8
  %5 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %3, align 8
  %6 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %5, i32 0, i32 0
  %7 = call i64 @list_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.bna_mac* null, %struct.bna_mac** %2, align 8
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.bna_mcam_mod*, %struct.bna_mcam_mod** %3, align 8
  %12 = getelementptr inbounds %struct.bna_mcam_mod, %struct.bna_mcam_mod* %11, i32 0, i32 0
  %13 = call i32 @bfa_q_deq(i32* %12, %struct.list_head** %4)
  %14 = load %struct.list_head*, %struct.list_head** %4, align 8
  %15 = bitcast %struct.list_head* %14 to %struct.bna_mac*
  store %struct.bna_mac* %15, %struct.bna_mac** %2, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = load %struct.bna_mac*, %struct.bna_mac** %2, align 8
  ret %struct.bna_mac* %17
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.list_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
