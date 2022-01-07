; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac_ring_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac_ring_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FM_MDREG1 = common dso_local global i32 0, align 4
@FM_MDISRCV = common dso_local global i32 0, align 4
@FM_ADDET = common dso_local global i32 0, align 4
@FM_CMDREG2 = common dso_local global i32 0, align 4
@FM_IACTR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i32)* @mac_ring_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_ring_up(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %9 = call i32 @formac_rcv_restart(%struct.s_smc* %8)
  %10 = load i32, i32* @TRUE, align 4
  %11 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %12 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %15 = call i32 @llc_restart_tx(%struct.s_smc* %14)
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* @FM_MDREG1, align 4
  %18 = call i32 @FM_A(i32 %17)
  %19 = load i32, i32* @FM_MDISRCV, align 4
  %20 = load i32, i32* @FM_ADDET, align 4
  %21 = call i32 @SETMASK(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @FM_CMDREG2, align 4
  %23 = call i32 @FM_A(i32 %22)
  %24 = load i32, i32* @FM_IACTR, align 4
  %25 = call i32 @outpw(i32 %23, i32 %24)
  %26 = load i32, i32* @FALSE, align 4
  %27 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %28 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @formac_rcv_restart(%struct.s_smc*) #1

declare dso_local i32 @llc_restart_tx(%struct.s_smc*) #1

declare dso_local i32 @SETMASK(i32, i32, i32) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @outpw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
