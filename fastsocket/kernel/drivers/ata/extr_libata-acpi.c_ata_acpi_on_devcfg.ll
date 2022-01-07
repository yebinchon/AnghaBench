; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_on_devcfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_on_devcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ata_port* }
%struct.ata_port = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ATA_FLAG_ACPI_SATA = common dso_local global i32 0, align 4
@ATA_DFLAG_ACPI_PENDING = common dso_local global i32 0, align 4
@ATA_EHI_DID_HARDRESET = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to IDENTIFY after ACPI commands\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@ATA_DFLAG_ACPI_FAILED = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ACPI: failed the second time, disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_acpi_on_devcfg(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_eh_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.ata_eh_context* %16, %struct.ata_eh_context** %5, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATA_FLAG_ACPI_SATA, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %131

27:                                               ; preds = %1
  %28 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATA_DFLAG_ACPI_PENDING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %39 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATA_EHI_DID_HARDRESET, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37, %34
  store i32 0, i32* %2, align 4
  br label %131

46:                                               ; preds = %37, %27
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %51 = call i32 @ata_acpi_push_id(%struct.ata_device* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %83

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %46
  %57 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %58 = call i32 @ata_acpi_exec_tfs(%struct.ata_device* %57, i32* %7)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %83

62:                                               ; preds = %56
  %63 = load i32, i32* @ATA_DFLAG_ACPI_PENDING, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %66 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %73 = call i32 @ata_dev_reread_id(%struct.ata_device* %72, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %78 = load i32, i32* @KERN_ERR, align 4
  %79 = call i32 @ata_dev_printk(%struct.ata_device* %77, i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %131

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %62
  store i32 0, i32* %2, align 4
  br label %131

83:                                               ; preds = %61, %54
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %93 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %131

99:                                               ; preds = %91, %88, %83
  %100 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %101 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ATA_DFLAG_ACPI_FAILED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @ATA_DFLAG_ACPI_FAILED, align 4
  %108 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %109 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %131

113:                                              ; preds = %99
  %114 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %115 = load i32, i32* @KERN_WARNING, align 4
  %116 = call i32 @ata_dev_printk(%struct.ata_device* %114, i32 %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %118 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %123 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %131

129:                                              ; preds = %121, %113
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %128, %106, %98, %82, %76, %45, %26
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @ata_acpi_push_id(%struct.ata_device*) #1

declare dso_local i32 @ata_acpi_exec_tfs(%struct.ata_device*, i32*) #1

declare dso_local i32 @ata_dev_reread_id(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
