; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_hst_pcix_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_hst_pcix_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@PCI_STATUS = common dso_local global i32 0, align 4
@PCIX_STATUS = common dso_local global i32 0, align 4
@ECC_CTRL_STAT = common dso_local global i32 0, align 4
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"parity error for %s\0A\00", align 1
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"master abort for %s\0A\00", align 1
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"target abort for %s\0A\00", align 1
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"data parity for %s\0A\00", align 1
@RCV_SCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"received split completion error for %s\0A\00", align 1
@UNEXP_SC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"unexpected split completion for %s\0A\00", align 1
@SC_DISCARD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"split completion discarded for %s\0A\00", align 1
@UNCOR_ECCERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"uncorrectable ECC error for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_hst_pcix_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_hst_pcix_isr(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %7 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCI_STATUS, align 4
  %10 = call i32 @pci_read_config_word(i32 %8, i32 %9, i32* %3)
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %12 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCIX_STATUS, align 4
  %15 = call i32 @pci_read_config_dword(i32 %13, i32 %14, i32* %4)
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %17 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ECC_CTRL_STAT, align 4
  %20 = call i32 @pci_read_config_dword(i32 %18, i32 %19, i32* %5)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %27 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_name(i32 %28)
  %30 = call i32 @asd_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %127

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %38 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_name(i32 %39)
  %41 = call i32 @asd_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %126

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %49 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pci_name(i32 %50)
  %52 = call i32 @asd_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %125

53:                                               ; preds = %42
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %60 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pci_name(i32 %61)
  %63 = call i32 @asd_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %124

64:                                               ; preds = %53
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RCV_SCE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %71 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_name(i32 %72)
  %74 = call i32 @asd_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %76 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PCIX_STATUS, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @pci_write_config_dword(i32 %77, i32 %78, i32 %79)
  br label %130

81:                                               ; preds = %64
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @UNEXP_SC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %88 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pci_name(i32 %89)
  %91 = call i32 @asd_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %93 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PCIX_STATUS, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @pci_write_config_dword(i32 %94, i32 %95, i32 %96)
  br label %130

98:                                               ; preds = %81
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @SC_DISCARD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %105 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pci_name(i32 %106)
  %108 = call i32 @asd_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  br label %121

109:                                              ; preds = %98
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @UNCOR_ECCERR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %116 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pci_name(i32 %117)
  %119 = call i32 @asd_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %103
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123, %58
  br label %125

125:                                              ; preds = %124, %47
  br label %126

126:                                              ; preds = %125, %36
  br label %127

127:                                              ; preds = %126, %25
  %128 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %129 = call i32 @asd_chip_reset(%struct.asd_ha_struct* %128)
  br label %130

130:                                              ; preds = %127, %86, %69
  ret void
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @asd_chip_reset(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
