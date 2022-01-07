; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_recs_per_track.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_recs_per_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_eckd_characteristics = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_eckd_characteristics*, i32, i32)* @recs_per_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recs_per_track(%struct.dasd_eckd_characteristics* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_eckd_characteristics*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dasd_eckd_characteristics* %0, %struct.dasd_eckd_characteristics** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dasd_eckd_characteristics*, %struct.dasd_eckd_characteristics** %5, align 8
  %11 = getelementptr inbounds %struct.dasd_eckd_characteristics, %struct.dasd_eckd_characteristics* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %99 [
    i32 13184, label %13
    i32 13200, label %32
    i32 37701, label %66
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 12
  %19 = call i32 @ceil_quot(i32 %18, i32 32)
  %20 = add nsw i32 22, %19
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 12
  %23 = call i32 @ceil_quot(i32 %22, i32 32)
  %24 = add nsw i32 %20, %23
  %25 = sdiv i32 1499, %24
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %13
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 12
  %29 = call i32 @ceil_quot(i32 %28, i32 32)
  %30 = add nsw i32 15, %29
  %31 = sdiv i32 1499, %30
  store i32 %31, i32* %4, align 4
  br label %100

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 6
  %35 = call i32 @ceil_quot(i32 %34, i32 232)
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 6
  %42 = call i32 @ceil_quot(i32 %41, i32 232)
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 6, %45
  %47 = add i32 %44, %46
  %48 = call i32 @ceil_quot(i32 %47, i32 34)
  %49 = add nsw i32 19, %48
  %50 = add nsw i32 %49, 9
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 6, %52
  %54 = add i32 %51, %53
  %55 = call i32 @ceil_quot(i32 %54, i32 34)
  %56 = add nsw i32 %50, %55
  %57 = sdiv i32 1729, %56
  store i32 %57, i32* %4, align 4
  br label %100

58:                                               ; preds = %32
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 6, %60
  %62 = add i32 %59, %61
  %63 = call i32 @ceil_quot(i32 %62, i32 34)
  %64 = add nsw i32 19, %63
  %65 = sdiv i32 1729, %64
  store i32 %65, i32* %4, align 4
  br label %100

66:                                               ; preds = %3
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 6
  %69 = call i32 @ceil_quot(i32 %68, i32 232)
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 6
  %76 = call i32 @ceil_quot(i32 %75, i32 232)
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 6, %79
  %81 = add i32 %78, %80
  %82 = call i32 @ceil_quot(i32 %81, i32 34)
  %83 = add nsw i32 25, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 6, %85
  %87 = add i32 %84, %86
  %88 = call i32 @ceil_quot(i32 %87, i32 34)
  %89 = add nsw i32 %83, %88
  %90 = sdiv i32 1420, %89
  store i32 %90, i32* %4, align 4
  br label %100

91:                                               ; preds = %66
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 6, %93
  %95 = add i32 %92, %94
  %96 = call i32 @ceil_quot(i32 %95, i32 34)
  %97 = add nsw i32 25, %96
  %98 = sdiv i32 1420, %97
  store i32 %98, i32* %4, align 4
  br label %100

99:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %91, %73, %58, %39, %26, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @ceil_quot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
