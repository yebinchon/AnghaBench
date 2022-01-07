; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_test_register_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_test_register_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i64 0, align 8
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@CHIPRST = common dso_local global i32 0, align 4
@PAUSE = common dso_local global i32 0, align 4
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@TARGPCISTAT = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i64 0, align 8
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRPCIINT = common dso_local global i32 0, align 4
@SEQCTL0 = common dso_local global i32 0, align 4
@PERRORDIS = common dso_local global i32 0, align 4
@SRAM_BASE = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@PCIINT = common dso_local global i32 0, align 4
@STA = common dso_local global i32 0, align 4
@FAILDIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_pci_test_register_access(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %8 = load i32, i32* @EIO, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @PCIR_COMMAND, align 8
  %13 = call i32 @ahd_pci_read_config(i32 %11, i64 %12, i32 2)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @PCIR_COMMAND, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @ahd_pci_write_config(i32 %16, i64 %17, i32 %21, i32 2)
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %24 = load i32, i32* @HCNTRL, align 4
  %25 = call i32 @ahd_inb(%struct.ahd_softc* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %112

29:                                               ; preds = %1
  %30 = load i32, i32* @CHIPRST, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i32, i32* @HCNTRL, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PAUSE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @ahd_outb(%struct.ahd_softc* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %44, %29
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %42 = call i64 @ahd_is_paused(%struct.ahd_softc* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %40

45:                                               ; preds = %40
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %47 = load i32, i32* @AHD_MODE_CFG, align 4
  %48 = load i32, i32* @AHD_MODE_CFG, align 4
  %49 = call i32 @ahd_set_modes(%struct.ahd_softc* %46, i32 %47, i32 %48)
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %51 = load i32, i32* @TARGPCISTAT, align 4
  %52 = call i32 @ahd_inb(%struct.ahd_softc* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %54 = load i32, i32* @TARGPCISTAT, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ahd_outb(%struct.ahd_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @PCIR_STATUS, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @ahd_pci_read_config(i32 %59, i64 %61, i32 1)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @PCIR_STATUS, align 8
  %67 = add nsw i64 %66, 1
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ahd_pci_write_config(i32 %65, i64 %67, i32 %68, i32 1)
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %71 = load i32, i32* @AHD_MODE_SCSI, align 4
  %72 = load i32, i32* @AHD_MODE_SCSI, align 4
  %73 = call i32 @ahd_set_modes(%struct.ahd_softc* %70, i32 %71, i32 %72)
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %75 = load i32, i32* @CLRINT, align 4
  %76 = load i32, i32* @CLRPCIINT, align 4
  %77 = call i32 @ahd_outb(%struct.ahd_softc* %74, i32 %75, i32 %76)
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %79 = load i32, i32* @SEQCTL0, align 4
  %80 = load i32, i32* @PERRORDIS, align 4
  %81 = call i32 @ahd_outb(%struct.ahd_softc* %78, i32 %79, i32 %80)
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %83 = load i32, i32* @SRAM_BASE, align 4
  %84 = call i32 @ahd_outl(%struct.ahd_softc* %82, i32 %83, i32 1520784810)
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %86 = load i32, i32* @SRAM_BASE, align 4
  %87 = call i32 @ahd_inl(%struct.ahd_softc* %85, i32 %86)
  %88 = icmp ne i32 %87, 1520784810
  br i1 %88, label %89, label %90

89:                                               ; preds = %45
  br label %112

90:                                               ; preds = %45
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %92 = load i32, i32* @INTSTAT, align 4
  %93 = call i32 @ahd_inb(%struct.ahd_softc* %91, i32 %92)
  %94 = load i32, i32* @PCIINT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %99 = load i32, i32* @AHD_MODE_CFG, align 4
  %100 = load i32, i32* @AHD_MODE_CFG, align 4
  %101 = call i32 @ahd_set_modes(%struct.ahd_softc* %98, i32 %99, i32 %100)
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %103 = load i32, i32* @TARGPCISTAT, align 4
  %104 = call i32 @ahd_inb(%struct.ahd_softc* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @STA, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %112

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %90
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %109, %89, %28
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %114 = load i32, i32* @INTSTAT, align 4
  %115 = call i32 @ahd_inb(%struct.ahd_softc* %113, i32 %114)
  %116 = load i32, i32* @PCIINT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %112
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %121 = load i32, i32* @AHD_MODE_CFG, align 4
  %122 = load i32, i32* @AHD_MODE_CFG, align 4
  %123 = call i32 @ahd_set_modes(%struct.ahd_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %125 = load i32, i32* @TARGPCISTAT, align 4
  %126 = call i32 @ahd_inb(%struct.ahd_softc* %124, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %128 = load i32, i32* @TARGPCISTAT, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @ahd_outb(%struct.ahd_softc* %127, i32 %128, i32 %129)
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %132 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* @PCIR_STATUS, align 8
  %135 = add nsw i64 %134, 1
  %136 = call i32 @ahd_pci_read_config(i32 %133, i64 %135, i32 1)
  store i32 %136, i32* %5, align 4
  %137 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %138 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* @PCIR_STATUS, align 8
  %141 = add nsw i64 %140, 1
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @ahd_pci_write_config(i32 %139, i64 %141, i32 %142, i32 1)
  %144 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %145 = load i32, i32* @CLRINT, align 4
  %146 = load i32, i32* @CLRPCIINT, align 4
  %147 = call i32 @ahd_outb(%struct.ahd_softc* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %119, %112
  %149 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %150 = load i32, i32* @SEQCTL0, align 4
  %151 = load i32, i32* @PERRORDIS, align 4
  %152 = load i32, i32* @FAILDIS, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @ahd_outb(%struct.ahd_softc* %149, i32 %150, i32 %153)
  %155 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %156 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i64, i64* @PCIR_COMMAND, align 8
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @ahd_pci_write_config(i32 %157, i64 %158, i32 %159, i32 2)
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local i32 @ahd_pci_read_config(i32, i64, i32) #1

declare dso_local i32 @ahd_pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inl(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
