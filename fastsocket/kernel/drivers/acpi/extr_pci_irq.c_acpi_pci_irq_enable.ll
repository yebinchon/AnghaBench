; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.acpi_prt_entry = type { i32, i64 }

@ACPI_LEVEL_SENSITIVE = common dso_local global i32 0, align 4
@ACPI_ACTIVE_LOW = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No interrupt pin configured for device %s\0A\00", align 1
@PCI_CLASS_STORAGE_IDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PCI INT %c: no GSI\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" - using IRQ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"PCI INT %c: failed to register GSI\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" -> Link[%s]\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"PCI INT %c%s -> GSI %u (%s, %s) -> IRQ %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"high\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_pci_irq_enable(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.acpi_prt_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %12 = load i32, i32* @ACPI_LEVEL_SENSITIVE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @ACPI_ACTIVE_LOW, align 4
  store i32 %13, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ACPI_DB_INFO, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_name(%struct.pci_dev* %21)
  %23 = call i32 @ACPI_DEBUG_PRINT(i32 %22)
  store i32 0, i32* %2, align 4
  br label %149

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %25, i32 %26)
  store %struct.acpi_prt_entry* %27, %struct.acpi_prt_entry** %4, align 8
  %28 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %29 = icmp ne %struct.acpi_prt_entry* %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 8
  %35 = load i32, i32* @PCI_CLASS_STORAGE_IDE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %149

44:                                               ; preds = %37, %30
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %47 = icmp ne %struct.acpi_prt_entry* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @acpi_pci_link_allocate_irq(i64 %56, i32 %59, i32* %7, i32* %8, i8** %9)
  store i32 %60, i32* %5, align 4
  br label %65

61:                                               ; preds = %48
  %62 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %4, align 8
  %63 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %53
  br label %67

66:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %67
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @pin_name(i32 %73)
  %75 = call i32 @dev_warn(i32* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %70
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 15
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 2
  %92 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ACPI_LEVEL_SENSITIVE, align 4
  %96 = load i32, i32* @ACPI_ACTIVE_LOW, align 4
  %97 = call i32 @acpi_register_gsi(i32* %91, i32 %94, i32 %95, i32 %96)
  store i32 0, i32* %2, align 4
  br label %149

98:                                               ; preds = %80, %70
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %149

100:                                              ; preds = %67
  %101 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @acpi_register_gsi(i32* %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 2
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @pin_name(i32 %112)
  %114 = call i32 @dev_warn(i32* %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %2, align 4
  br label %149

116:                                              ; preds = %100
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @snprintf(i8* %123, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %124)
  br label %128

126:                                              ; preds = %116
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %127, align 16
  br label %128

128:                                              ; preds = %126, %122
  %129 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @pin_name(i32 %131)
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @ACPI_LEVEL_SENSITIVE, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @ACPI_ACTIVE_LOW, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dev_info(i32* %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %132, i8* %133, i32 %134, i8* %139, i8* %144, i32 %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %128, %109, %98, %85, %43, %19
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev*, i32) #1

declare dso_local i32 @acpi_pci_link_allocate_irq(i64, i32, i32*, i32*, i8**) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pin_name(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @acpi_register_gsi(i32*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
