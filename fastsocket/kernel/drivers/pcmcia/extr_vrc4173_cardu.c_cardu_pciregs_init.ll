; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_pciregs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_pciregs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@BRGCNT = common dso_local global i32 0, align 4
@IREQ_INT = common dso_local global i32 0, align 4
@SYSCNT = common dso_local global i32 0, align 4
@BAD_VCC_REQ_DISB = common dso_local global i32 0, align 4
@PCPCI_EN = common dso_local global i32 0, align 4
@CH_ASSIGN_MASK = common dso_local global i32 0, align 4
@SUB_ID_WR_EN = common dso_local global i32 0, align 4
@PCI_CLK_RIN = common dso_local global i32 0, align 4
@CH_ASSIGN_NODMA = common dso_local global i32 0, align 4
@ASYN_INT_MODE = common dso_local global i32 0, align 4
@DEVCNT = common dso_local global i32 0, align 4
@ZOOM_VIDEO_EN = common dso_local global i32 0, align 4
@SR_PCI_INT_SEL_MASK = common dso_local global i32 0, align 4
@PCI_INT_MODE = common dso_local global i32 0, align 4
@IRQ_MODE = common dso_local global i32 0, align 4
@SR_PCI_INT_SEL_NONE = common dso_local global i32 0, align 4
@IFG = common dso_local global i32 0, align 4
@CHIPCNT = common dso_local global i32 0, align 4
@S_PREF_DISB = common dso_local global i32 0, align 4
@SERRDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cardu_pciregs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cardu_pciregs_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call i32 @pci_write_config_dword(%struct.pci_dev* %6, i32 28, i32 268435456)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call i32 @pci_write_config_dword(%struct.pci_dev* %8, i32 32, i32 402649088)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pci_write_config_dword(%struct.pci_dev* %10, i32 44, i32 0)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = call i32 @pci_write_config_dword(%struct.pci_dev* %12, i32 48, i32 65532)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = load i32, i32* @BRGCNT, align 4
  %16 = call i32 @pci_read_config_word(%struct.pci_dev* %14, i32 %15, i32* %4)
  %17 = load i32, i32* @IREQ_INT, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load i32, i32* @BRGCNT, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pci_write_config_word(%struct.pci_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = load i32, i32* @SYSCNT, align 4
  %27 = call i32 @pci_read_config_dword(%struct.pci_dev* %25, i32 %26, i32* %3)
  %28 = load i32, i32* @BAD_VCC_REQ_DISB, align 4
  %29 = load i32, i32* @PCPCI_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CH_ASSIGN_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SUB_ID_WR_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PCI_CLK_RIN, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @CH_ASSIGN_NODMA, align 4
  %41 = load i32, i32* @ASYN_INT_MODE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* @SYSCNT, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @pci_write_config_dword(%struct.pci_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = load i32, i32* @DEVCNT, align 4
  %51 = call i32 @pci_read_config_byte(%struct.pci_dev* %49, i32 %50, i32* %5)
  %52 = load i32, i32* @ZOOM_VIDEO_EN, align 4
  %53 = load i32, i32* @SR_PCI_INT_SEL_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PCI_INT_MODE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @IRQ_MODE, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @SR_PCI_INT_SEL_NONE, align 4
  %63 = load i32, i32* @IFG, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %68 = load i32, i32* @DEVCNT, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @pci_write_config_byte(%struct.pci_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = load i32, i32* @CHIPCNT, align 4
  %73 = load i32, i32* @S_PREF_DISB, align 4
  %74 = call i32 @pci_write_config_byte(%struct.pci_dev* %71, i32 %72, i32 %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %76 = load i32, i32* @SERRDIS, align 4
  %77 = call i32 @pci_write_config_byte(%struct.pci_dev* %75, i32 %76, i32 0)
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
