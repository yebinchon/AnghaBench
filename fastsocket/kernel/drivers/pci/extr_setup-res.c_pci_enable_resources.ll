; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-res.c_pci_enable_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-res.c_pci_enable_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32, i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_ROM_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"device not available (can't reserve %pR)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"enabling device (%04x -> %04x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_resources(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @PCI_COMMAND, align 4
  %12 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 %11, i32* %6)
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %88, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %91

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %88

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load %struct.resource*, %struct.resource** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %28, i64 %30
  store %struct.resource* %31, %struct.resource** %9, align 8
  %32 = load %struct.resource*, %struct.resource** %9, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IORESOURCE_IO, align 4
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %25
  br label %88

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.resource*, %struct.resource** %9, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IORESOURCE_ROM_ENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %88

53:                                               ; preds = %45, %41
  %54 = load %struct.resource*, %struct.resource** %9, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load %struct.resource*, %struct.resource** %9, align 8
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.resource* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %106

65:                                               ; preds = %53
  %66 = load %struct.resource*, %struct.resource** %9, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IORESOURCE_IO, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @PCI_COMMAND_IO, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.resource*, %struct.resource** %9, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IORESOURCE_MEM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %76
  br label %88

88:                                               ; preds = %87, %52, %40, %24
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %14

91:                                               ; preds = %14
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @dev_info(i32* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = load i32, i32* @PCI_COMMAND, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @pci_write_config_word(%struct.pci_dev* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %95, %91
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %58
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.resource*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
