; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@INTSTAT = common dso_local global i32 0, align 4
@SPLTINT = common dso_local global i32 0, align 4
@PCIINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: PCI error Interrupt\0A\00", align 1
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@DF0PCISTAT = common dso_local global i32 0, align 4
@ahd_pci_intr.s = internal global i8* null, align 8
@pci_status_strings = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Signaled Target Abort\0A\00", align 1
@pci_status_source = common dso_local global i32* null, align 8
@PCIR_STATUS = common dso_local global i64 0, align 8
@CLRINT = common dso_local global i32 0, align 4
@CLRPCIINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_pci_intr(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %11 = load i32, i32* @INTSTAT, align 4
  %12 = call i32 @ahd_inb(%struct.ahd_softc* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SPLTINT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ahd_pci_split_intr(%struct.ahd_softc* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCIINT, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %140

27:                                               ; preds = %21
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %29 = call i8* @ahd_name(%struct.ahd_softc* %28)
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %32 = call i32 @ahd_save_modes(%struct.ahd_softc* %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %34 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %33)
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %36 = load i32, i32* @AHD_MODE_CFG, align 4
  %37 = load i32, i32* @AHD_MODE_CFG, align 4
  %38 = call i32 @ahd_set_modes(%struct.ahd_softc* %35, i32 %36, i32 %37)
  store i32 0, i32* %7, align 4
  %39 = load i32, i32* @DF0PCISTAT, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %61, %27
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %61

47:                                               ; preds = %43
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ahd_inb(%struct.ahd_softc* %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ahd_outb(%struct.ahd_softc* %54, i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %47, %46
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %40

66:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %114, %66
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %117

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 5
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %114

74:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %110, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 8
  br i1 %77, label %78, label %113

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 1, %83
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %78
  %88 = load i8**, i8*** @pci_status_strings, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** @ahd_pci_intr.s, align 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 7
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** @ahd_pci_intr.s, align 8
  br label %99

99:                                               ; preds = %98, %95, %87
  %100 = load i8*, i8** @ahd_pci_intr.s, align 8
  %101 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %102 = call i8* @ahd_name(%struct.ahd_softc* %101)
  %103 = load i32*, i32** @pci_status_source, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i8*, ...) @printf(i8* %100, i8* %102, i32 %107)
  br label %109

109:                                              ; preds = %99, %78
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %75

113:                                              ; preds = %75
  br label %114

114:                                              ; preds = %113, %73
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %67

117:                                              ; preds = %67
  %118 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* @PCIR_STATUS, align 8
  %122 = add nsw i64 %121, 1
  %123 = call i32 @ahd_pci_read_config(i32 %120, i64 %122, i32 1)
  store i32 %123, i32* %5, align 4
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %125 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* @PCIR_STATUS, align 8
  %128 = add nsw i64 %127, 1
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @ahd_pci_write_config(i32 %126, i64 %128, i32 %129, i32 1)
  %131 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @ahd_restore_modes(%struct.ahd_softc* %131, i32 %132)
  %134 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %135 = load i32, i32* @CLRINT, align 4
  %136 = load i32, i32* @CLRPCIINT, align 4
  %137 = call i32 @ahd_outb(%struct.ahd_softc* %134, i32 %135, i32 %136)
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %139 = call i32 @ahd_unpause(%struct.ahd_softc* %138)
  br label %140

140:                                              ; preds = %117, %26
  ret void
}

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_pci_split_intr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_pci_read_config(i32, i64, i32) #1

declare dso_local i32 @ahd_pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
