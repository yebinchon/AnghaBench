; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-res.c_pdev_sort_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-res.c_pdev_sort_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32, i64 }
%struct.resource_list = type { %struct.resource_list*, %struct.pci_dev*, %struct.resource* }

@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BAR %d: %pR has bogus alignment\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"pdev_sort_resources(): kmalloc() failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdev_sort_resources(%struct.pci_dev* %0, %struct.resource_list* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource_list*, align 8
  %8 = alloca %struct.resource_list*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.resource_list*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.resource_list* %1, %struct.resource_list** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %99, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %102

16:                                               ; preds = %12
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load %struct.resource*, %struct.resource** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %19, i64 %21
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %99

30:                                               ; preds = %16
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  br label %99

41:                                               ; preds = %35
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i64 @pci_resource_alignment(%struct.pci_dev* %42, %struct.resource* %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50, %struct.resource* %51)
  br label %99

53:                                               ; preds = %41
  %54 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  store %struct.resource_list* %54, %struct.resource_list** %7, align 8
  br label %55

55:                                               ; preds = %94, %53
  store i64 0, i64* %10, align 8
  %56 = load %struct.resource_list*, %struct.resource_list** %7, align 8
  %57 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %56, i32 0, i32 0
  %58 = load %struct.resource_list*, %struct.resource_list** %57, align 8
  store %struct.resource_list* %58, %struct.resource_list** %11, align 8
  %59 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %60 = icmp ne %struct.resource_list* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %63 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %62, i32 0, i32 1
  %64 = load %struct.pci_dev*, %struct.pci_dev** %63, align 8
  %65 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %66 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %65, i32 0, i32 2
  %67 = load %struct.resource*, %struct.resource** %66, align 8
  %68 = call i64 @pci_resource_alignment(%struct.pci_dev* %64, %struct.resource* %67)
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %61, %55
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.resource_list* @kmalloc(i32 24, i32 %74)
  store %struct.resource_list* %75, %struct.resource_list** %8, align 8
  %76 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %77 = icmp ne %struct.resource_list* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load %struct.resource_list*, %struct.resource_list** %11, align 8
  %82 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %83 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %82, i32 0, i32 0
  store %struct.resource_list* %81, %struct.resource_list** %83, align 8
  %84 = load %struct.resource*, %struct.resource** %6, align 8
  %85 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %86 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %85, i32 0, i32 2
  store %struct.resource* %84, %struct.resource** %86, align 8
  %87 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %88 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %89 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %88, i32 0, i32 1
  store %struct.pci_dev* %87, %struct.pci_dev** %89, align 8
  %90 = load %struct.resource_list*, %struct.resource_list** %8, align 8
  %91 = load %struct.resource_list*, %struct.resource_list** %7, align 8
  %92 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %91, i32 0, i32 0
  store %struct.resource_list* %90, %struct.resource_list** %92, align 8
  br label %98

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.resource_list*, %struct.resource_list** %7, align 8
  %96 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %95, i32 0, i32 0
  %97 = load %struct.resource_list*, %struct.resource_list** %96, align 8
  store %struct.resource_list* %97, %struct.resource_list** %7, align 8
  br label %55

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %47, %40, %29
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %12

102:                                              ; preds = %12
  ret void
}

declare dso_local i64 @pci_resource_alignment(%struct.pci_dev*, %struct.resource*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, %struct.resource*) #1

declare dso_local %struct.resource_list* @kmalloc(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
