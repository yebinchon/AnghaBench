; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_free_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nandsim*)* @free_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_device(%struct.nandsim* %0) #0 {
  %2 = alloca %struct.nandsim*, align 8
  %3 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %2, align 8
  %4 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %5 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %10 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @kfree(i32 %11)
  %13 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %14 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @vfree(%struct.TYPE_4__* %15)
  %17 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %18 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @filp_close(i64 %19, i32* null)
  br label %70

21:                                               ; preds = %1
  %22 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %23 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %70

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %30 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %36 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %46 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %49 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @kmem_cache_free(i32 %47, i64 %55)
  br label %57

57:                                               ; preds = %44, %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %63 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @kmem_cache_destroy(i32 %64)
  %66 = load %struct.nandsim*, %struct.nandsim** %2, align 8
  %67 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @vfree(%struct.TYPE_4__* %68)
  br label %70

70:                                               ; preds = %8, %61, %21
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vfree(%struct.TYPE_4__*) #1

declare dso_local i32 @filp_close(i64, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, i64) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
