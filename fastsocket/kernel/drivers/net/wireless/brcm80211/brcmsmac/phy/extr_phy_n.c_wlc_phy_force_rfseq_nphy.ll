; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_force_rfseq_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_force_rfseq_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@NPHY_RfseqTrigger_rx2tx = common dso_local global i32 0, align 4
@NPHY_RfseqStatus_rx2tx = common dso_local global i32 0, align 4
@NPHY_RfseqTrigger_tx2rx = common dso_local global i32 0, align 4
@NPHY_RfseqStatus_tx2rx = common dso_local global i32 0, align 4
@NPHY_RfseqTrigger_reset2rx = common dso_local global i32 0, align 4
@NPHY_RfseqStatus_reset2rx = common dso_local global i32 0, align 4
@NPHY_RfseqTrigger_updategainh = common dso_local global i32 0, align 4
@NPHY_RfseqStatus_updategainh = common dso_local global i32 0, align 4
@NPHY_RfseqTrigger_updategainl = common dso_local global i32 0, align 4
@NPHY_RfseqStatus_updategainl = common dso_local global i32 0, align 4
@NPHY_RfseqTrigger_updategainu = common dso_local global i32 0, align 4
@NPHY_RfseqStatus_updategainu = common dso_local global i32 0, align 4
@NPHY_RfseqMode_CoreActv_override = common dso_local global i32 0, align 4
@NPHY_RfseqMode_Trigger_override = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"HW error in rf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_force_rfseq_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %27 [
    i32 132, label %9
    i32 131, label %12
    i32 133, label %15
    i32 130, label %18
    i32 129, label %21
    i32 128, label %24
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @NPHY_RfseqTrigger_rx2tx, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @NPHY_RfseqStatus_rx2tx, align 4
  store i32 %11, i32* %6, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @NPHY_RfseqTrigger_tx2rx, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @NPHY_RfseqStatus_tx2rx, align 4
  store i32 %14, i32* %6, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @NPHY_RfseqTrigger_reset2rx, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @NPHY_RfseqStatus_reset2rx, align 4
  store i32 %17, i32* %6, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* @NPHY_RfseqTrigger_updategainh, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @NPHY_RfseqStatus_updategainh, align 4
  store i32 %20, i32* %6, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @NPHY_RfseqTrigger_updategainl, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @NPHY_RfseqStatus_updategainl, align 4
  store i32 %23, i32* %6, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @NPHY_RfseqTrigger_updategainu, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @NPHY_RfseqStatus_updategainu, align 4
  store i32 %26, i32* %6, align 4
  br label %28

27:                                               ; preds = %2
  br label %52

28:                                               ; preds = %24, %21, %18, %15, %12, %9
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = call i32 @read_phy_reg(%struct.brcms_phy* %29, i32 161)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %32 = load i32, i32* @NPHY_RfseqMode_CoreActv_override, align 4
  %33 = load i32, i32* @NPHY_RfseqMode_Trigger_override, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @or_phy_reg(%struct.brcms_phy* %31, i32 161, i32 %34)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @or_phy_reg(%struct.brcms_phy* %36, i32 163, i32 %37)
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = call i32 @read_phy_reg(%struct.brcms_phy* %39, i32 164)
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @SPINWAIT(i32 %42, i32 200000)
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @write_phy_reg(%struct.brcms_phy* %44, i32 161, i32 %45)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = call i32 @read_phy_reg(%struct.brcms_phy* %47, i32 164)
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @WARN(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
