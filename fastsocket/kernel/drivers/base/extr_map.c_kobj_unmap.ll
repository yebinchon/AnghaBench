; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_map.c_kobj_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_map.c_kobj_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_map = type { i32, %struct.probe** }
%struct.probe = type { i64, i64, %struct.probe* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kobj_unmap(%struct.kobj_map* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kobj_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.probe*, align 8
  %11 = alloca %struct.probe**, align 8
  %12 = alloca %struct.probe*, align 8
  store %struct.kobj_map* %0, %struct.kobj_map** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %13, %14
  %16 = sub i64 %15, 1
  %17 = call i32 @MAJOR(i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @MAJOR(i64 %18)
  %20 = sub nsw i32 %17, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @MAJOR(i64 %22)
  store i32 %23, i32* %8, align 4
  store %struct.probe* null, %struct.probe** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 255, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.kobj_map*, %struct.kobj_map** %4, align 8
  %29 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mutex_lock(i32 %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %78, %27
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %32
  %37 = load %struct.kobj_map*, %struct.kobj_map** %4, align 8
  %38 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %37, i32 0, i32 1
  %39 = load %struct.probe**, %struct.probe*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = urem i32 %40, 255
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.probe*, %struct.probe** %39, i64 %42
  store %struct.probe** %43, %struct.probe*** %11, align 8
  br label %44

44:                                               ; preds = %73, %36
  %45 = load %struct.probe**, %struct.probe*** %11, align 8
  %46 = load %struct.probe*, %struct.probe** %45, align 8
  %47 = icmp ne %struct.probe* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = load %struct.probe**, %struct.probe*** %11, align 8
  %50 = load %struct.probe*, %struct.probe** %49, align 8
  store %struct.probe* %50, %struct.probe** %12, align 8
  %51 = load %struct.probe*, %struct.probe** %12, align 8
  %52 = getelementptr inbounds %struct.probe, %struct.probe* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %48
  %57 = load %struct.probe*, %struct.probe** %12, align 8
  %58 = getelementptr inbounds %struct.probe, %struct.probe* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.probe*, %struct.probe** %12, align 8
  %64 = getelementptr inbounds %struct.probe, %struct.probe* %63, i32 0, i32 2
  %65 = load %struct.probe*, %struct.probe** %64, align 8
  %66 = load %struct.probe**, %struct.probe*** %11, align 8
  store %struct.probe* %65, %struct.probe** %66, align 8
  %67 = load %struct.probe*, %struct.probe** %10, align 8
  %68 = icmp ne %struct.probe* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load %struct.probe*, %struct.probe** %12, align 8
  store %struct.probe* %70, %struct.probe** %10, align 8
  br label %71

71:                                               ; preds = %69, %62
  br label %77

72:                                               ; preds = %56, %48
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.probe**, %struct.probe*** %11, align 8
  %75 = load %struct.probe*, %struct.probe** %74, align 8
  %76 = getelementptr inbounds %struct.probe, %struct.probe* %75, i32 0, i32 2
  store %struct.probe** %76, %struct.probe*** %11, align 8
  br label %44

77:                                               ; preds = %71, %44
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %32

83:                                               ; preds = %32
  %84 = load %struct.kobj_map*, %struct.kobj_map** %4, align 8
  %85 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mutex_unlock(i32 %86)
  %88 = load %struct.probe*, %struct.probe** %10, align 8
  %89 = call i32 @kfree(%struct.probe* %88)
  ret void
}

declare dso_local i32 @MAJOR(i64) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @kfree(%struct.probe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
