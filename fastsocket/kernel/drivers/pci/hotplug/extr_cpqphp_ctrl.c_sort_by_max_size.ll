; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_sort_by_max_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_sort_by_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_resource = type { i64, %struct.pci_resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_resource**)* @sort_by_max_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_by_max_size(%struct.pci_resource** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_resource**, align 8
  %4 = alloca %struct.pci_resource*, align 8
  %5 = alloca %struct.pci_resource*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_resource** %0, %struct.pci_resource*** %3, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %8 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %9 = icmp ne %struct.pci_resource* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %122

11:                                               ; preds = %1
  %12 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %13 = load %struct.pci_resource*, %struct.pci_resource** %12, align 8
  %14 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %13, i32 0, i32 1
  %15 = load %struct.pci_resource*, %struct.pci_resource** %14, align 8
  %16 = icmp ne %struct.pci_resource* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %122

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %120, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %121

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  %23 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %24 = load %struct.pci_resource*, %struct.pci_resource** %23, align 8
  %25 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %24, i32 0, i32 1
  %26 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  %27 = icmp ne %struct.pci_resource* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %30 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %31 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %34 = load %struct.pci_resource*, %struct.pci_resource** %33, align 8
  %35 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %34, i32 0, i32 1
  %36 = load %struct.pci_resource*, %struct.pci_resource** %35, align 8
  %37 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %32, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %44 = load %struct.pci_resource*, %struct.pci_resource** %43, align 8
  store %struct.pci_resource* %44, %struct.pci_resource** %4, align 8
  %45 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %46 = load %struct.pci_resource*, %struct.pci_resource** %45, align 8
  %47 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %46, i32 0, i32 1
  %48 = load %struct.pci_resource*, %struct.pci_resource** %47, align 8
  %49 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  store %struct.pci_resource* %48, %struct.pci_resource** %49, align 8
  %50 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %51 = load %struct.pci_resource*, %struct.pci_resource** %50, align 8
  %52 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %51, i32 0, i32 1
  %53 = load %struct.pci_resource*, %struct.pci_resource** %52, align 8
  %54 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %55 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %54, i32 0, i32 1
  store %struct.pci_resource* %53, %struct.pci_resource** %55, align 8
  %56 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %57 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %58 = load %struct.pci_resource*, %struct.pci_resource** %57, align 8
  %59 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %58, i32 0, i32 1
  store %struct.pci_resource* %56, %struct.pci_resource** %59, align 8
  br label %60

60:                                               ; preds = %40, %28, %22
  %61 = load %struct.pci_resource**, %struct.pci_resource*** %3, align 8
  %62 = load %struct.pci_resource*, %struct.pci_resource** %61, align 8
  store %struct.pci_resource* %62, %struct.pci_resource** %4, align 8
  br label %63

63:                                               ; preds = %119, %60
  %64 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %65 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %64, i32 0, i32 1
  %66 = load %struct.pci_resource*, %struct.pci_resource** %65, align 8
  %67 = icmp ne %struct.pci_resource* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %70 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %69, i32 0, i32 1
  %71 = load %struct.pci_resource*, %struct.pci_resource** %70, align 8
  %72 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %71, i32 0, i32 1
  %73 = load %struct.pci_resource*, %struct.pci_resource** %72, align 8
  %74 = icmp ne %struct.pci_resource* %73, null
  br label %75

75:                                               ; preds = %68, %63
  %76 = phi i1 [ false, %63 ], [ %74, %68 ]
  br i1 %76, label %77, label %120

77:                                               ; preds = %75
  %78 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %79 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %78, i32 0, i32 1
  %80 = load %struct.pci_resource*, %struct.pci_resource** %79, align 8
  %81 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %84 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %83, i32 0, i32 1
  %85 = load %struct.pci_resource*, %struct.pci_resource** %84, align 8
  %86 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %85, i32 0, i32 1
  %87 = load %struct.pci_resource*, %struct.pci_resource** %86, align 8
  %88 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %82, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %77
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %95 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %94, i32 0, i32 1
  %96 = load %struct.pci_resource*, %struct.pci_resource** %95, align 8
  store %struct.pci_resource* %96, %struct.pci_resource** %5, align 8
  %97 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %98 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %97, i32 0, i32 1
  %99 = load %struct.pci_resource*, %struct.pci_resource** %98, align 8
  %100 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %99, i32 0, i32 1
  %101 = load %struct.pci_resource*, %struct.pci_resource** %100, align 8
  %102 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %103 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %102, i32 0, i32 1
  store %struct.pci_resource* %101, %struct.pci_resource** %103, align 8
  %104 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %105 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %104, i32 0, i32 1
  %106 = load %struct.pci_resource*, %struct.pci_resource** %105, align 8
  store %struct.pci_resource* %106, %struct.pci_resource** %4, align 8
  %107 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %108 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %107, i32 0, i32 1
  %109 = load %struct.pci_resource*, %struct.pci_resource** %108, align 8
  %110 = load %struct.pci_resource*, %struct.pci_resource** %5, align 8
  %111 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %110, i32 0, i32 1
  store %struct.pci_resource* %109, %struct.pci_resource** %111, align 8
  %112 = load %struct.pci_resource*, %struct.pci_resource** %5, align 8
  %113 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %114 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %113, i32 0, i32 1
  store %struct.pci_resource* %112, %struct.pci_resource** %114, align 8
  br label %119

115:                                              ; preds = %77
  %116 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  %117 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %116, i32 0, i32 1
  %118 = load %struct.pci_resource*, %struct.pci_resource** %117, align 8
  store %struct.pci_resource* %118, %struct.pci_resource** %4, align 8
  br label %119

119:                                              ; preds = %115, %91
  br label %63

120:                                              ; preds = %75
  br label %19

121:                                              ; preds = %19
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %17, %10
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
