; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_adjust_resources_sorted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_adjust_resources_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list_x = type { %struct.resource_list_x*, %struct.TYPE_2__*, i64, %struct.resource* }
%struct.TYPE_2__ = type { %struct.resource* }
%struct.resource = type { i64, i64, i32 }
%struct.resource_list = type { %struct.resource_list*, %struct.resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_list_x*, %struct.resource_list*)* @adjust_resources_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_resources_sorted(%struct.resource_list_x* %0, %struct.resource_list* %1) #0 {
  %3 = alloca %struct.resource_list_x*, align 8
  %4 = alloca %struct.resource_list*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource_list_x*, align 8
  %7 = alloca %struct.resource_list_x*, align 8
  %8 = alloca %struct.resource_list_x*, align 8
  %9 = alloca %struct.resource_list*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.resource_list_x* %0, %struct.resource_list_x** %3, align 8
  store %struct.resource_list* %1, %struct.resource_list** %4, align 8
  %12 = load %struct.resource_list_x*, %struct.resource_list_x** %3, align 8
  store %struct.resource_list_x* %12, %struct.resource_list_x** %8, align 8
  %13 = load %struct.resource_list_x*, %struct.resource_list_x** %3, align 8
  %14 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %13, i32 0, i32 0
  %15 = load %struct.resource_list_x*, %struct.resource_list_x** %14, align 8
  store %struct.resource_list_x* %15, %struct.resource_list_x** %6, align 8
  br label %16

16:                                               ; preds = %112, %51, %2
  %17 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  %18 = icmp ne %struct.resource_list_x* %17, null
  br i1 %18, label %19, label %121

19:                                               ; preds = %16
  %20 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  %21 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %20, i32 0, i32 3
  %22 = load %struct.resource*, %struct.resource** %21, align 8
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %112

28:                                               ; preds = %19
  %29 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  %30 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %29, i32 0, i32 0
  %31 = load %struct.resource_list*, %struct.resource_list** %30, align 8
  store %struct.resource_list* %31, %struct.resource_list** %9, align 8
  br label %32

32:                                               ; preds = %44, %28
  %33 = load %struct.resource_list*, %struct.resource_list** %9, align 8
  %34 = icmp ne %struct.resource_list* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.resource_list*, %struct.resource_list** %9, align 8
  %37 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %36, i32 0, i32 1
  %38 = load %struct.resource*, %struct.resource** %37, align 8
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = icmp ne %struct.resource* %38, %39
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ false, %32 ], [ %40, %35 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.resource_list*, %struct.resource_list** %9, align 8
  %46 = getelementptr inbounds %struct.resource_list, %struct.resource_list* %45, i32 0, i32 0
  %47 = load %struct.resource_list*, %struct.resource_list** %46, align 8
  store %struct.resource_list* %47, %struct.resource_list** %9, align 8
  br label %32

48:                                               ; preds = %41
  %49 = load %struct.resource_list*, %struct.resource_list** %9, align 8
  %50 = icmp ne %struct.resource_list* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  store %struct.resource_list_x* %52, %struct.resource_list_x** %8, align 8
  %53 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  %54 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %53, i32 0, i32 0
  %55 = load %struct.resource_list_x*, %struct.resource_list_x** %54, align 8
  store %struct.resource_list_x* %55, %struct.resource_list_x** %6, align 8
  br label %16

56:                                               ; preds = %48
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  %59 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.resource*, %struct.resource** %61, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i64 0
  %64 = ptrtoint %struct.resource* %57 to i64
  %65 = ptrtoint %struct.resource* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 24
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  %70 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  %72 = load %struct.resource*, %struct.resource** %5, align 8
  %73 = call i64 @resource_size(%struct.resource* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %56
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load %struct.resource*, %struct.resource** %5, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add nsw i64 %81, %82
  %84 = sub nsw i64 %83, 1
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  %88 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @pci_assign_resource(%struct.TYPE_2__* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load %struct.resource*, %struct.resource** %5, align 8
  %95 = call i32 @reset_resource(%struct.resource* %94)
  br label %96

96:                                               ; preds = %93, %78
  br label %111

97:                                               ; preds = %75, %56
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load %struct.resource*, %struct.resource** %5, align 8
  %102 = load %struct.resource*, %struct.resource** %5, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.resource*, %struct.resource** %5, align 8
  %106 = call i64 @resource_size(%struct.resource* %105)
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @adjust_resource(%struct.resource* %101, i64 %104, i64 %108)
  br label %110

110:                                              ; preds = %100, %97
  br label %111

111:                                              ; preds = %110, %96
  br label %112

112:                                              ; preds = %111, %27
  %113 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  store %struct.resource_list_x* %113, %struct.resource_list_x** %7, align 8
  %114 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  %115 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %114, i32 0, i32 0
  %116 = load %struct.resource_list_x*, %struct.resource_list_x** %115, align 8
  store %struct.resource_list_x* %116, %struct.resource_list_x** %6, align 8
  %117 = load %struct.resource_list_x*, %struct.resource_list_x** %8, align 8
  %118 = getelementptr inbounds %struct.resource_list_x, %struct.resource_list_x* %117, i32 0, i32 0
  store %struct.resource_list_x* %116, %struct.resource_list_x** %118, align 8
  %119 = load %struct.resource_list_x*, %struct.resource_list_x** %7, align 8
  %120 = call i32 @kfree(%struct.resource_list_x* %119)
  br label %16

121:                                              ; preds = %16
  ret void
}

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i64 @pci_assign_resource(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @reset_resource(%struct.resource*) #1

declare dso_local i32 @adjust_resource(%struct.resource*, i64, i64) #1

declare dso_local i32 @kfree(%struct.resource_list_x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
