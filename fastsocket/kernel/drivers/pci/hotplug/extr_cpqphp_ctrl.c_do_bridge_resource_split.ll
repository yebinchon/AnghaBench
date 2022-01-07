; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_do_bridge_resource_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_do_bridge_resource_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_resource = type { i32, i32, %struct.pci_resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_resource* (%struct.pci_resource**, i32)* @do_bridge_resource_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_resource* @do_bridge_resource_split(%struct.pci_resource** %0, i32 %1) #0 {
  %3 = alloca %struct.pci_resource*, align 8
  %4 = alloca %struct.pci_resource**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_resource*, align 8
  %7 = alloca %struct.pci_resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_resource** %0, %struct.pci_resource*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pci_resource* null, %struct.pci_resource** %6, align 8
  %10 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %11 = call i32 @cpqhp_resource_sort_and_combine(%struct.pci_resource** %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %17 = load %struct.pci_resource*, %struct.pci_resource** %16, align 8
  store %struct.pci_resource* %17, %struct.pci_resource** %7, align 8
  br label %18

18:                                               ; preds = %23, %15
  %19 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %20 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %19, i32 0, i32 2
  %21 = load %struct.pci_resource*, %struct.pci_resource** %20, align 8
  %22 = icmp ne %struct.pci_resource* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  store %struct.pci_resource* %24, %struct.pci_resource** %6, align 8
  %25 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %26 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %25, i32 0, i32 2
  %27 = load %struct.pci_resource*, %struct.pci_resource** %26, align 8
  store %struct.pci_resource* %27, %struct.pci_resource** %7, align 8
  %28 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %29 = call i32 @kfree(%struct.pci_resource* %28)
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %32 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %89

37:                                               ; preds = %30
  %38 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %39 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %37
  %46 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %47 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = or i32 %48, %50
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %54 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %58 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = sub nsw i32 %55, %60
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %89

65:                                               ; preds = %45
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %68 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %72 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %77 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %65, %37
  %79 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %80 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %89

87:                                               ; preds = %78
  %88 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  store %struct.pci_resource* %88, %struct.pci_resource** %3, align 8
  br label %92

89:                                               ; preds = %86, %64, %36
  %90 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %91 = call i32 @kfree(%struct.pci_resource* %90)
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %92

92:                                               ; preds = %89, %87, %14
  %93 = load %struct.pci_resource*, %struct.pci_resource** %3, align 8
  ret %struct.pci_resource* %93
}

declare dso_local i32 @cpqhp_resource_sort_and_combine(%struct.pci_resource**) #1

declare dso_local i32 @kfree(%struct.pci_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
