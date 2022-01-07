; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_ethport_cb_rx_started.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_ethport_cb_rx_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i32, i32 }

@BNA_ETHPORT_F_RX_STARTED = common dso_local global i32 0, align 4
@ETHPORT_E_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_ethport_cb_rx_started(%struct.bna_ethport* %0) #0 {
  %2 = alloca %struct.bna_ethport*, align 8
  store %struct.bna_ethport* %0, %struct.bna_ethport** %2, align 8
  %3 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %4 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %8 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @BNA_ETHPORT_F_RX_STARTED, align 4
  %13 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %14 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %18 = call i64 @ethport_can_be_up(%struct.bna_ethport* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %22 = load i32, i32* @ETHPORT_E_UP, align 4
  %23 = call i32 @bfa_fsm_send_event(%struct.bna_ethport* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %11
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local i64 @ethport_can_be_up(%struct.bna_ethport*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_ethport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
