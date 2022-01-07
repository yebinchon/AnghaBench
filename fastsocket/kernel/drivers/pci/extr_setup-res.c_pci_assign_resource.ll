; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-res.c_pci_assign_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-res.c_pci_assign_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_bus*, %struct.resource* }
%struct.pci_bus = type { %struct.pci_bus*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"BAR %d: can't assign %pR (bogus alignment)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mem pref\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"BAR %d: can't assign %s (size %#llx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_assign_resource(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 2
  %13 = load %struct.resource*, %struct.resource** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %13, i64 %15
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load %struct.resource*, %struct.resource** %6, align 8
  %19 = call i32 @pci_resource_alignment(%struct.pci_dev* %17, %struct.resource* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, %struct.resource* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %102

30:                                               ; preds = %2
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = load %struct.pci_bus*, %struct.pci_bus** %32, align 8
  store %struct.pci_bus* %33, %struct.pci_bus** %8, align 8
  br label %34

34:                                               ; preds = %60, %30
  %35 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @__pci_assign_resource(%struct.pci_bus* %35, %struct.pci_dev* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %42 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %41, i32 0, i32 0
  %43 = load %struct.pci_bus*, %struct.pci_bus** %42, align 8
  %44 = icmp ne %struct.pci_bus* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %47 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %54 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %53, i32 0, i32 0
  %55 = load %struct.pci_bus*, %struct.pci_bus** %54, align 8
  store %struct.pci_bus* %55, %struct.pci_bus** %8, align 8
  br label %57

56:                                               ; preds = %45, %40
  store %struct.pci_bus* null, %struct.pci_bus** %8, align 8
  br label %57

57:                                               ; preds = %56, %52
  %58 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %59 = icmp ne %struct.pci_bus* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %34

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %62
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IORESOURCE_MEM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %81

80:                                               ; preds = %72
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %81

81:                                               ; preds = %80, %79
  br label %92

82:                                               ; preds = %65
  %83 = load %struct.resource*, %struct.resource** %6, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IORESOURCE_IO, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %91

90:                                               ; preds = %82
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %81
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load %struct.resource*, %struct.resource** %6, align 8
  %98 = call i64 @resource_size(%struct.resource* %97)
  %99 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %95, i8* %96, i64 %98)
  br label %100

100:                                              ; preds = %92, %62
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @pci_resource_alignment(%struct.pci_dev*, %struct.resource*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @__pci_assign_resource(%struct.pci_bus*, %struct.pci_dev*, i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
