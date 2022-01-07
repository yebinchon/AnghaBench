; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SXFRCTL1 = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i64 0, align 8
@AHD_PCIX_CHIPRST_BUG = common dso_local global i32 0, align 4
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@CHIPRST = common dso_local global i32 0, align 4
@CHIPRSTACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s: WARNING - Failed chip reset!  Trying to initialize anyway.\0A\00", align 1
@PCIR_STATUS = common dso_local global i64 0, align 8
@MODE_PTR = common dso_local global i32 0, align 4
@STPWEN = common dso_local global i32 0, align 4
@AHD_WIDE = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@SELWIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_reset(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = call i32 @ahd_pause(%struct.ahd_softc* %9)
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = call i32 @ahd_update_modes(%struct.ahd_softc* %11)
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = load i32, i32* @AHD_MODE_SCSI, align 4
  %15 = load i32, i32* @AHD_MODE_SCSI, align 4
  %16 = call i32 @ahd_set_modes(%struct.ahd_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = load i32, i32* @SXFRCTL1, align 4
  %19 = call i32 @ahd_inb(%struct.ahd_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @PCIR_COMMAND, align 8
  %24 = call i32 @ahd_pci_read_config(i32 %22, i64 %23, i32 2)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AHD_PCIX_CHIPRST_BUG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %34 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @PCIR_COMMAND, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ahd_pci_write_config(i32 %40, i64 %41, i32 %42, i32 2)
  br label %44

44:                                               ; preds = %31, %2
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %46 = load i32, i32* @HCNTRL, align 4
  %47 = load i32, i32* @CHIPRST, align 4
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = call i32 @ahd_outb(%struct.ahd_softc* %45, i32 %46, i32 %51)
  store i32 1000, i32* %6, align 4
  br label %53

53:                                               ; preds = %67, %44
  %54 = call i32 @ahd_delay(i32 1000)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = load i32, i32* @HCNTRL, align 4
  %62 = call i32 @ahd_inb(%struct.ahd_softc* %60, i32 %61)
  %63 = load i32, i32* @CHIPRSTACK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %59, %55
  %68 = phi i1 [ false, %55 ], [ %66, %59 ]
  br i1 %68, label %53, label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %74 = call i8* @ahd_name(%struct.ahd_softc* %73)
  %75 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %78 = load i32, i32* @HCNTRL, align 4
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ahd_outb(%struct.ahd_softc* %77, i32 %78, i32 %81)
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AHD_PCIX_CHIPRST_BUG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %76
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @PCIR_STATUS, align 8
  %94 = add nsw i64 %93, 1
  %95 = call i32 @ahd_pci_write_config(i32 %92, i64 %94, i32 255, i32 1)
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %97 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* @PCIR_COMMAND, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @ahd_pci_write_config(i32 %98, i64 %99, i32 %100, i32 2)
  br label %102

102:                                              ; preds = %89, %76
  %103 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %104 = load i32, i32* @AHD_MODE_SCSI, align 4
  %105 = load i32, i32* @AHD_MODE_SCSI, align 4
  %106 = call i32 @ahd_known_modes(%struct.ahd_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %108 = load i32, i32* @MODE_PTR, align 4
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %110 = load i32, i32* @AHD_MODE_SCSI, align 4
  %111 = load i32, i32* @AHD_MODE_SCSI, align 4
  %112 = call i32 @ahd_build_mode_state(%struct.ahd_softc* %109, i32 %110, i32 %111)
  %113 = call i32 @ahd_outb(%struct.ahd_softc* %107, i32 %108, i32 %112)
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %115 = load i32, i32* @SXFRCTL1, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @STPWEN, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @ahd_outb(%struct.ahd_softc* %114, i32 %115, i32 %118)
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %121 = load i32, i32* @SXFRCTL1, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @ahd_outb(%struct.ahd_softc* %120, i32 %121, i32 %122)
  %124 = load i32, i32* @AHD_WIDE, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %127 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %131 = load i32, i32* @SBLKCTL, align 4
  %132 = call i32 @ahd_inb(%struct.ahd_softc* %130, i32 %131)
  %133 = load i32, i32* @SELWIDE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %102
  %137 = load i32, i32* @AHD_WIDE, align 4
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %102
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %147 = call i32 @ahd_chip_init(%struct.ahd_softc* %146)
  br label %148

148:                                              ; preds = %145, %142
  ret i32 0
}

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_update_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_pci_read_config(i32, i64, i32) #1

declare dso_local i32 @ahd_pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_delay(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_known_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_build_mode_state(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_chip_init(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
