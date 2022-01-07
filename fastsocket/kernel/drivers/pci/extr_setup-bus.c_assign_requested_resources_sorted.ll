; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_assign_requested_resources_sorted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_assign_requested_resources_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { %struct.TYPE_3__*, %struct.resource*, %struct.resource_list* }
%struct.TYPE_3__ = type { i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.resource_list_x = type { i32 }

@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_ROM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_list*, %struct.resource_list_x*)* @assign_requested_resources_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_requested_resources_sorted(%struct.resource_list* %0, %struct.resource_list_x* %1) #0 {
  %3 = alloca %struct.resource_list*, align 8
  %4 = alloca %struct.resource_list_x*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource_list*, align 8
  %7 = alloca i32, align 4
  store %struct.resource_list* %0, %struct.resource_list** %3, align 8
  store %struct.resource_list_x* %1, %struct.resource_list_x** %4, align 8
  %8 = load %struct.resource_list*, %struct.resource_list** %3, align 8
  %9 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %8, i32 0, i32 2
  %10 = load %struct.resource_list*, %struct.resource_list** %9, align 8
  store %struct.resource_list* %10, %struct.resource_list** %6, align 8
  br label %11

11:                                               ; preds = %74, %2
  %12 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %13 = icmp ne %struct.resource_list* %12, null
  br i1 %13, label %14, label %78

14:                                               ; preds = %11
  %15 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %16 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %15, i32 0, i32 1
  %17 = load %struct.resource*, %struct.resource** %16, align 8
  store %struct.resource* %17, %struct.resource** %5, align 8
  %18 = load %struct.resource*, %struct.resource** %5, align 8
  %19 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %20 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.resource*, %struct.resource** %22, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i64 0
  %25 = ptrtoint %struct.resource* %18 to i64
  %26 = ptrtoint %struct.resource* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i64 @resource_size(%struct.resource* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %14
  %34 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %35 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @pci_assign_resource(%struct.TYPE_3__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %33
  %41 = load %struct.resource_list_x*, %struct.resource_list_x** %4, align 8
  %42 = icmp ne %struct.resource_list_x* %41, null
  br i1 %42, label %43, label %70

43:                                               ; preds = %40
  %44 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %45 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_is_root_bus(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IORESOURCE_ROM_ENABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55, %51
  %63 = load %struct.resource_list_x*, %struct.resource_list_x** %4, align 8
  %64 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %65 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  %68 = call i32 @add_to_failed_list(%struct.resource_list_x* %63, %struct.TYPE_3__* %66, %struct.resource* %67)
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %43, %40
  %71 = load %struct.resource*, %struct.resource** %5, align 8
  %72 = call i32 @reset_resource(%struct.resource* %71)
  br label %73

73:                                               ; preds = %70, %33, %14
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %76 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %75, i32 0, i32 2
  %77 = load %struct.resource_list*, %struct.resource_list** %76, align 8
  store %struct.resource_list* %77, %struct.resource_list** %6, align 8
  br label %11

78:                                               ; preds = %11
  ret void
}

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i64 @pci_assign_resource(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pci_is_root_bus(i32) #1

declare dso_local i32 @add_to_failed_list(%struct.resource_list_x*, %struct.TYPE_3__*, %struct.resource*) #1

declare dso_local i32 @reset_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
