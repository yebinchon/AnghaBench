; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_map.c_kobj_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_map.c_kobj_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_map = type { i32, %struct.probe** }
%struct.probe = type { i32 (i64, i8*)*, i64, %struct.probe*, i8*, i64, i32*, %struct.module* }
%struct.module = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobj_map(%struct.kobj_map* %0, i64 %1, i64 %2, %struct.module* %3, i32* %4, i32 (i64, i8*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kobj_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32 (i64, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.probe*, align 8
  %20 = alloca %struct.probe**, align 8
  store %struct.kobj_map* %0, %struct.kobj_map** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.module* %3, %struct.module** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 (i64, i8*)* %5, i32 (i64, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = call i32 @MAJOR(i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @MAJOR(i64 %26)
  %28 = sub nsw i32 %25, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %16, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @MAJOR(i64 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ugt i32 %32, 255
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32 255, i32* %16, align 4
  br label %35

35:                                               ; preds = %34, %7
  %36 = load i32, i32* %16, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 56, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.probe* @kmalloc(i32 %39, i32 %40)
  store %struct.probe* %41, %struct.probe** %19, align 8
  %42 = load %struct.probe*, %struct.probe** %19, align 8
  %43 = icmp eq %struct.probe* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %134

47:                                               ; preds = %35
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load %struct.module*, %struct.module** %12, align 8
  %54 = load %struct.probe*, %struct.probe** %19, align 8
  %55 = getelementptr inbounds %struct.probe, %struct.probe* %54, i32 0, i32 6
  store %struct.module* %53, %struct.module** %55, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.probe*, %struct.probe** %19, align 8
  %58 = getelementptr inbounds %struct.probe, %struct.probe* %57, i32 0, i32 5
  store i32* %56, i32** %58, align 8
  %59 = load i32 (i64, i8*)*, i32 (i64, i8*)** %14, align 8
  %60 = load %struct.probe*, %struct.probe** %19, align 8
  %61 = getelementptr inbounds %struct.probe, %struct.probe* %60, i32 0, i32 0
  store i32 (i64, i8*)* %59, i32 (i64, i8*)** %61, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.probe*, %struct.probe** %19, align 8
  %64 = getelementptr inbounds %struct.probe, %struct.probe* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.probe*, %struct.probe** %19, align 8
  %67 = getelementptr inbounds %struct.probe, %struct.probe* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load %struct.probe*, %struct.probe** %19, align 8
  %70 = getelementptr inbounds %struct.probe, %struct.probe* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %18, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %18, align 4
  %74 = load %struct.probe*, %struct.probe** %19, align 8
  %75 = getelementptr inbounds %struct.probe, %struct.probe* %74, i32 1
  store %struct.probe* %75, %struct.probe** %19, align 8
  br label %48

76:                                               ; preds = %48
  %77 = load %struct.kobj_map*, %struct.kobj_map** %9, align 8
  %78 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mutex_lock(i32 %79)
  store i32 0, i32* %18, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.probe*, %struct.probe** %19, align 8
  %83 = zext i32 %81 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds %struct.probe, %struct.probe* %82, i64 %84
  store %struct.probe* %85, %struct.probe** %19, align 8
  br label %86

86:                                               ; preds = %122, %76
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %129

90:                                               ; preds = %86
  %91 = load %struct.kobj_map*, %struct.kobj_map** %9, align 8
  %92 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %91, i32 0, i32 1
  %93 = load %struct.probe**, %struct.probe*** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = urem i32 %94, 255
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.probe*, %struct.probe** %93, i64 %96
  store %struct.probe** %97, %struct.probe*** %20, align 8
  br label %98

98:                                               ; preds = %111, %90
  %99 = load %struct.probe**, %struct.probe*** %20, align 8
  %100 = load %struct.probe*, %struct.probe** %99, align 8
  %101 = icmp ne %struct.probe* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.probe**, %struct.probe*** %20, align 8
  %104 = load %struct.probe*, %struct.probe** %103, align 8
  %105 = getelementptr inbounds %struct.probe, %struct.probe* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp ult i64 %106, %107
  br label %109

109:                                              ; preds = %102, %98
  %110 = phi i1 [ false, %98 ], [ %108, %102 ]
  br i1 %110, label %111, label %115

111:                                              ; preds = %109
  %112 = load %struct.probe**, %struct.probe*** %20, align 8
  %113 = load %struct.probe*, %struct.probe** %112, align 8
  %114 = getelementptr inbounds %struct.probe, %struct.probe* %113, i32 0, i32 2
  store %struct.probe** %114, %struct.probe*** %20, align 8
  br label %98

115:                                              ; preds = %109
  %116 = load %struct.probe**, %struct.probe*** %20, align 8
  %117 = load %struct.probe*, %struct.probe** %116, align 8
  %118 = load %struct.probe*, %struct.probe** %19, align 8
  %119 = getelementptr inbounds %struct.probe, %struct.probe* %118, i32 0, i32 2
  store %struct.probe* %117, %struct.probe** %119, align 8
  %120 = load %struct.probe*, %struct.probe** %19, align 8
  %121 = load %struct.probe**, %struct.probe*** %20, align 8
  store %struct.probe* %120, %struct.probe** %121, align 8
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %18, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %18, align 4
  %125 = load %struct.probe*, %struct.probe** %19, align 8
  %126 = getelementptr inbounds %struct.probe, %struct.probe* %125, i32 1
  store %struct.probe* %126, %struct.probe** %19, align 8
  %127 = load i32, i32* %17, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %86

129:                                              ; preds = %86
  %130 = load %struct.kobj_map*, %struct.kobj_map** %9, align 8
  %131 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @mutex_unlock(i32 %132)
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %129, %44
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @MAJOR(i64) #1

declare dso_local %struct.probe* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
