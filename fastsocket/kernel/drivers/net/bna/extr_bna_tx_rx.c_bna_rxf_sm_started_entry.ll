; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_started_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_tx_rx.c_bna_rxf_sm_started_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*)* @bna_rxf_sm_started_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_sm_started_entry(%struct.bna_rxf* %0) #0 {
  %2 = alloca %struct.bna_rxf*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %2, align 8
  %3 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %4 = call i32 @call_rxf_start_cbfn(%struct.bna_rxf* %3)
  %5 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %6 = call i32 @call_rxf_cam_fltr_cbfn(%struct.bna_rxf* %5)
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %8 = call i32 @call_rxf_resume_cbfn(%struct.bna_rxf* %7)
  ret void
}

declare dso_local i32 @call_rxf_start_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_cam_fltr_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_resume_cbfn(%struct.bna_rxf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
