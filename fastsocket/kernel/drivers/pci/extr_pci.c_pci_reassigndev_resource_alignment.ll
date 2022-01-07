; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_reassigndev_resource_alignment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_reassigndev_resource_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, %struct.resource*, i32 }
%struct.resource = type { i32, i64, i64 }

@PCI_HEADER_TYPE_NORMAL = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't reassign resources to host bridge.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Disabling memory decoding and releasing memory resources.\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Rounding up size of resource #%d to %#llx.\0A\00", align 1
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_reassigndev_resource_alignment(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call i32 @pci_is_reassigndev(%struct.pci_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %134

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_HEADER_TYPE_NORMAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 8
  %23 = load i32, i32* @PCI_CLASS_BRIDGE_HOST, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 3
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %134

29:                                               ; preds = %18, %12
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 3
  %32 = call i32 (i32*, i8*, ...) @dev_info(i32* %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = load i32, i32* @PCI_COMMAND, align 4
  %35 = call i32 @pci_read_config_word(%struct.pci_dev* %33, i32 %34, i32* %7)
  %36 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load i32, i32* @PCI_COMMAND, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pci_write_config_word(%struct.pci_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = call i64 @pci_specified_resource_alignment(%struct.pci_dev* %44)
  store i64 %45, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %84, %29
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %46
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 2
  %53 = load %struct.resource*, %struct.resource** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %53, i64 %55
  store %struct.resource* %56, %struct.resource** %4, align 8
  %57 = load %struct.resource*, %struct.resource** %4, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  br label %84

64:                                               ; preds = %50
  %65 = load %struct.resource*, %struct.resource** %4, align 8
  %66 = call i64 @resource_size(%struct.resource* %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i64, i64* %5, align 8
  store i64 %71, i64* %6, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 3
  %74 = load i32, i32* %3, align 4
  %75 = load i64, i64* %6, align 8
  %76 = call i32 (i32*, i8*, ...) @dev_info(i32* %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %70, %64
  %78 = load i64, i64* %6, align 8
  %79 = sub nsw i64 %78, 1
  %80 = load %struct.resource*, %struct.resource** %4, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.resource*, %struct.resource** %4, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %63
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %46

87:                                               ; preds = %46
  %88 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PCI_HEADER_TYPE_BRIDGE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %134

93:                                               ; preds = %87
  %94 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = ashr i32 %96, 8
  %98 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %93
  %101 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %128, %100
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 2
  %109 = load %struct.resource*, %struct.resource** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %109, i64 %111
  store %struct.resource* %112, %struct.resource** %4, align 8
  %113 = load %struct.resource*, %struct.resource** %4, align 8
  %114 = getelementptr inbounds %struct.resource, %struct.resource* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IORESOURCE_MEM, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %106
  br label %128

120:                                              ; preds = %106
  %121 = load %struct.resource*, %struct.resource** %4, align 8
  %122 = call i64 @resource_size(%struct.resource* %121)
  %123 = sub nsw i64 %122, 1
  %124 = load %struct.resource*, %struct.resource** %4, align 8
  %125 = getelementptr inbounds %struct.resource, %struct.resource* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.resource*, %struct.resource** %4, align 8
  %127 = getelementptr inbounds %struct.resource, %struct.resource* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %120, %119
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %102

131:                                              ; preds = %102
  %132 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %133 = call i32 @pci_disable_bridge_window(%struct.pci_dev* %132)
  br label %134

134:                                              ; preds = %11, %25, %131, %93, %87
  ret void
}

declare dso_local i32 @pci_is_reassigndev(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_specified_resource_alignment(%struct.pci_dev*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @pci_disable_bridge_window(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
