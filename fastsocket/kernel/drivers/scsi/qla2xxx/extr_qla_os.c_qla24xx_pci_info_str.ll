; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla24xx_pci_info_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla24xx_pci_info_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32 }

@qla24xx_pci_info_str.pci_bus_modes = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"33\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"66\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"133\00", align 1
@PCI_EXP_LNKCAP = common dso_local global i64 0, align 8
@BIT_0 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_8 = common dso_local global i32 0, align 4
@BIT_9 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"PCIe (\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"2.5GT/s \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"5.0GT/s \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"8.0GT/s \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"<unknown> \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"x%d)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@CSRX_PCIX_BUS_MODE_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"-X \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Mode 2\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Mode 1\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" MHz)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_qla_host*, i8*)* @qla24xx_pci_info_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla24xx_pci_info_str(%struct.scsi_qla_host* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %6, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_pcie_cap(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %2
  %23 = load i64, i64* @PCI_EXP_LNKCAP, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pci_read_config_word(i32 %30, i32 %31, i32* %10)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @BIT_0, align 4
  %35 = load i32, i32* @BIT_1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BIT_2, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BIT_3, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %33, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @BIT_4, align 4
  %44 = load i32, i32* @BIT_5, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BIT_6, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BIT_7, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BIT_8, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BIT_9, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %42, %53
  %55 = ashr i32 %54, 4
  store i32 %55, i32* %12, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %68 [
    i32 1, label %59
    i32 2, label %62
    i32 3, label %65
  ]

59:                                               ; preds = %22
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcat(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %71

62:                                               ; preds = %22
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strcat(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %71

65:                                               ; preds = %22
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @strcat(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %71

68:                                               ; preds = %22
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcat(i8* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65, %62, %59
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @snprintf(i8* %72, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %77 = call i32 @strcat(i8* %75, i8* %76)
  %78 = load i8*, i8** %5, align 8
  store i8* %78, i8** %3, align 8
  br label %132

79:                                               ; preds = %2
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @strcpy(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CSRX_PCIX_BUS_MODE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = ashr i32 %86, 8
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %93, label %103

93:                                               ; preds = %90, %79
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @strcat(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = ashr i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8*], [4 x i8*]* @qla24xx_pci_info_str.pci_bus_modes, i64 0, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcat(i8* %96, i8* %101)
  br label %128

103:                                              ; preds = %90
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @strcat(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @BIT_2, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @strcat(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %116

113:                                              ; preds = %103
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @strcat(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @strcat(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @BIT_2, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i8*], [4 x i8*]* @qla24xx_pci_info_str.pci_bus_modes, i64 0, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strcat(i8* %119, i8* %126)
  br label %128

128:                                              ; preds = %116, %93
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 @strcat(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %131 = load i8*, i8** %5, align 8
  store i8* %131, i8** %3, align 8
  br label %132

132:                                              ; preds = %128, %71
  %133 = load i8*, i8** %3, align 8
  ret i8* %133
}

declare dso_local i32 @pci_pcie_cap(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
