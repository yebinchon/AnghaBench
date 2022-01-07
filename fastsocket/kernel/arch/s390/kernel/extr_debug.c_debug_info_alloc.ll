; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_debug.c_debug_info_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_debug.c_debug_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32, i32, i32, i64, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ALL_AREAS = common dso_local global i32 0, align 4
@DEBUG_MAX_VIEWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, i32, i32, i32, i32, i32)* @debug_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @debug_info_alloc(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_5__* @kmalloc(i32 80, i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %14, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %128

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kcalloc(i32 %21, i32 4, i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_5__*
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %125

32:                                               ; preds = %20
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kcalloc(i32 %33, i32 4, i32 %34)
  %36 = bitcast i8* %35 to %struct.TYPE_5__*
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %120

44:                                               ; preds = %32
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @ALL_AREAS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32* @debug_areas_alloc(i32 %52, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 13
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 13
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %115

62:                                               ; preds = %51
  br label %66

63:                                               ; preds = %48, %44
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 13
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 12
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 11
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @strlcpy(i32 %92, i8* %93, i32 4)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DEBUG_MAX_VIEWS, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memset(i32 %97, i32 0, i32 %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DEBUG_MAX_VIEWS, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memset(i32 %105, i32 0, i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 7
  %113 = call i32 @atomic_set(i32* %112, i32 0)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %7, align 8
  br label %129

115:                                              ; preds = %61
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = call i32 @kfree(%struct.TYPE_5__* %118)
  br label %120

120:                                              ; preds = %115, %43
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = call i32 @kfree(%struct.TYPE_5__* %123)
  br label %125

125:                                              ; preds = %120, %31
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %127 = call i32 @kfree(%struct.TYPE_5__* %126)
  br label %128

128:                                              ; preds = %125, %19
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %129

129:                                              ; preds = %128, %66
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %130
}

declare dso_local %struct.TYPE_5__* @kmalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @debug_areas_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
