; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_mem_usage_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_mem_usage_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"jar: [\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"cookies: used:%3d / total:%3d, allocs:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"memory: free:%3d (%3d KiB) / total:%3d KiB)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ar9170*, i8*, i64, i64*)* @carl9170_debugfs_mem_usage_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @carl9170_debugfs_mem_usage_read(%struct.ar9170* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i64*, i64** %8, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 (i8*, i64, i64, i8*, ...) @ADD(i8* %9, i64 %11, i64 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %15 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i64, i64* %7, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %21, %23
  %25 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %26 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %29 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @bitmap_scnprintf(i8* %20, i64 %24, i32 %27, i32 %31)
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i8*, i64, i64, i8*, ...) @ADD(i8* %36, i64 %38, i64 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %6, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %46 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %49 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bitmap_weight(i32 %47, i32 %51)
  %53 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %54 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %58 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %57, i32 0, i32 3
  %59 = call i32 @atomic_read(i32* %58)
  %60 = call i32 (i8*, i64, i64, i8*, ...) @ADD(i8* %41, i64 %43, i64 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %56, i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %66 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %65, i32 0, i32 2
  %67 = call i32 @atomic_read(i32* %66)
  %68 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %69 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %68, i32 0, i32 2
  %70 = call i32 @atomic_read(i32* %69)
  %71 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %72 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = sdiv i32 %75, 1024
  %77 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %78 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %82 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %80, %84
  %86 = sdiv i32 %85, 1024
  %87 = call i32 (i8*, i64, i64, i8*, ...) @ADD(i8* %61, i64 %63, i64 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %76, i32 %86)
  %88 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %89 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock_bh(i32* %89)
  %91 = load i8*, i8** %6, align 8
  ret i8* %91
}

declare dso_local i32 @ADD(i8*, i64, i64, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @bitmap_scnprintf(i8*, i64, i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
