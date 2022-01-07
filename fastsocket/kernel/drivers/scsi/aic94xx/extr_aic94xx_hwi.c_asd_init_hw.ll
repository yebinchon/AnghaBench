; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@PCIC_HSTPCIX_CNTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"couldn't read PCIC_HSTPCIX_CNTRL of %s\0A\00", align 1
@SC_TMR_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"couldn't disable split completion timer of %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"couldn't read ocm(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"couldn't read flash(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"No SAS Address provided for %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"couldn't initialize phys for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"couldn't initialize scbs for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"couldn't initialize the done list:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"couldn't initialize escbs\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"couldn't init the chip\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_init_hw(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = call i32 @asd_init_sw(%struct.asd_ha_struct* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %126

12:                                               ; preds = %1
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %14 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCIC_HSTPCIX_CNTRL, align 4
  %17 = call i32 @pci_read_config_dword(i32 %15, i32 %16, i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %22 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_name(i32 %23)
  %25 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %126

27:                                               ; preds = %12
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %29 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PCIC_HSTPCIX_CNTRL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SC_TMR_DIS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @pci_write_config_dword(i32 %30, i32 %31, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %40 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_name(i32 %41)
  %43 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %126

45:                                               ; preds = %27
  %46 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %47 = call i32 @asd_read_ocm(%struct.asd_ha_struct* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %55 = call i32 @asd_read_flash(%struct.asd_ha_struct* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %63 = call i32 @asd_init_ctxmem(%struct.asd_ha_struct* %62)
  %64 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %65 = call i64 @asd_get_user_sas_addr(%struct.asd_ha_struct* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %69 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pci_name(i32 %70)
  %72 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %124

75:                                               ; preds = %61
  %76 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %77 = call i32 @asd_propagate_sas_addr(%struct.asd_ha_struct* %76)
  %78 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %79 = call i32 @asd_init_phys(%struct.asd_ha_struct* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %84 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pci_name(i32 %85)
  %87 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %124

88:                                               ; preds = %75
  %89 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %90 = call i32 @asd_init_ports(%struct.asd_ha_struct* %89)
  %91 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %92 = call i32 @asd_init_scbs(%struct.asd_ha_struct* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %97 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pci_name(i32 %98)
  %100 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  br label %124

101:                                              ; preds = %88
  %102 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %103 = call i32 @asd_init_dl(%struct.asd_ha_struct* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  br label %124

109:                                              ; preds = %101
  %110 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %111 = call i32 @asd_init_escbs(%struct.asd_ha_struct* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %124

116:                                              ; preds = %109
  %117 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %118 = call i32 @asd_init_chip(%struct.asd_ha_struct* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %124

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %121, %114, %106, %95, %82, %67
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %38, %20, %10
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @asd_init_sw(%struct.asd_ha_struct*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @asd_printk(i8*, ...) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @asd_read_ocm(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_read_flash(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_init_ctxmem(%struct.asd_ha_struct*) #1

declare dso_local i64 @asd_get_user_sas_addr(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_propagate_sas_addr(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_init_phys(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_init_ports(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_init_scbs(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_init_dl(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_init_escbs(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_init_chip(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
