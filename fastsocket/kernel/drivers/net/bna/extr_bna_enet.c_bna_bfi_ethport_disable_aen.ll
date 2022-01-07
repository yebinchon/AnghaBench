; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_bfi_ethport_disable_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_bfi_ethport_disable_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i32 }
%struct.bfi_msgq_mhdr = type { i32 }

@BNA_ETHPORT_F_PORT_ENABLED = common dso_local global i32 0, align 4
@ETHPORT_E_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ethport*, %struct.bfi_msgq_mhdr*)* @bna_bfi_ethport_disable_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_ethport_disable_aen(%struct.bna_ethport* %0, %struct.bfi_msgq_mhdr* %1) #0 {
  %3 = alloca %struct.bna_ethport*, align 8
  %4 = alloca %struct.bfi_msgq_mhdr*, align 8
  %5 = alloca i32, align 4
  store %struct.bna_ethport* %0, %struct.bna_ethport** %3, align 8
  store %struct.bfi_msgq_mhdr* %1, %struct.bfi_msgq_mhdr** %4, align 8
  %6 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %7 = call i32 @ethport_is_up(%struct.bna_ethport* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @BNA_ETHPORT_F_PORT_ENABLED, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %11 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %18 = load i32, i32* @ETHPORT_E_DOWN, align 4
  %19 = call i32 @bfa_fsm_send_event(%struct.bna_ethport* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @ethport_is_up(%struct.bna_ethport*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_ethport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
