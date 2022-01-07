; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_get_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_ibdev = type { i32, i32, i32, i32, i32, i32 }
%struct.ipath_cregs = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_ibdev*, %struct.ipath_cregs*, i32)* @get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_counter(%struct.ipath_ibdev* %0, %struct.ipath_cregs* %1, i32 %2) #0 {
  %4 = alloca %struct.ipath_ibdev*, align 8
  %5 = alloca %struct.ipath_cregs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipath_ibdev* %0, %struct.ipath_ibdev** %4, align 8
  store %struct.ipath_cregs* %1, %struct.ipath_cregs** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %104 [
    i32 130, label %9
    i32 132, label %28
    i32 129, label %47
    i32 131, label %66
    i32 128, label %85
  ]

9:                                                ; preds = %3
  %10 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %11 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %16 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %19 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ipath_read_creg32(i32 %17, i32 %20)
  br label %26

22:                                               ; preds = %9
  %23 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %24 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i32 [ %21, %14 ], [ %25, %22 ]
  store i32 %27, i32* %7, align 4
  br label %105

28:                                               ; preds = %3
  %29 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %30 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %35 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %38 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ipath_read_creg32(i32 %36, i32 %39)
  br label %45

41:                                               ; preds = %28
  %42 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %43 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = phi i32 [ %40, %33 ], [ %44, %41 ]
  store i32 %46, i32* %7, align 4
  br label %105

47:                                               ; preds = %3
  %48 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %49 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %54 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %57 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ipath_read_creg32(i32 %55, i32 %58)
  br label %64

60:                                               ; preds = %47
  %61 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %62 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = phi i32 [ %59, %52 ], [ %63, %60 ]
  store i32 %65, i32* %7, align 4
  br label %105

66:                                               ; preds = %3
  %67 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %68 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %73 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %76 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ipath_read_creg32(i32 %74, i32 %77)
  br label %83

79:                                               ; preds = %66
  %80 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %81 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %79, %71
  %84 = phi i32 [ %78, %71 ], [ %82, %79 ]
  store i32 %84, i32* %7, align 4
  br label %105

85:                                               ; preds = %3
  %86 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %87 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %92 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ipath_cregs*, %struct.ipath_cregs** %5, align 8
  %95 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ipath_read_creg32(i32 %93, i32 %96)
  br label %102

98:                                               ; preds = %85
  %99 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %4, align 8
  %100 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %98, %90
  %103 = phi i32 [ %97, %90 ], [ %101, %98 ]
  store i32 %103, i32* %7, align 4
  br label %105

104:                                              ; preds = %3
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %102, %83, %64, %45, %26
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @ipath_read_creg32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
