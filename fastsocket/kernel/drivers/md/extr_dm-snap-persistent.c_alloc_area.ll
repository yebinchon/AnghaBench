; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_alloc_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_alloc_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore*)* @alloc_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_area(%struct.pstore* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pstore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pstore* %0, %struct.pstore** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.pstore*, %struct.pstore** %3, align 8
  %9 = getelementptr inbounds %struct.pstore, %struct.pstore* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SECTOR_SHIFT, align 8
  %14 = shl i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i8* @vmalloc(i64 %15)
  %17 = load %struct.pstore*, %struct.pstore** %3, align 8
  %18 = getelementptr inbounds %struct.pstore, %struct.pstore* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.pstore*, %struct.pstore** %3, align 8
  %20 = getelementptr inbounds %struct.pstore, %struct.pstore* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %55

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  %26 = call i8* @vzalloc(i64 %25)
  %27 = load %struct.pstore*, %struct.pstore** %3, align 8
  %28 = getelementptr inbounds %struct.pstore, %struct.pstore* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.pstore*, %struct.pstore** %3, align 8
  %30 = getelementptr inbounds %struct.pstore, %struct.pstore* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %50

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = call i8* @vmalloc(i64 %35)
  %37 = load %struct.pstore*, %struct.pstore** %3, align 8
  %38 = getelementptr inbounds %struct.pstore, %struct.pstore* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.pstore*, %struct.pstore** %3, align 8
  %40 = getelementptr inbounds %struct.pstore, %struct.pstore* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %57

45:                                               ; preds = %43
  %46 = load %struct.pstore*, %struct.pstore** %3, align 8
  %47 = getelementptr inbounds %struct.pstore, %struct.pstore* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @vfree(i8* %48)
  br label %50

50:                                               ; preds = %45, %33
  %51 = load %struct.pstore*, %struct.pstore** %3, align 8
  %52 = getelementptr inbounds %struct.pstore, %struct.pstore* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @vfree(i8* %53)
  br label %55

55:                                               ; preds = %50, %23
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i8* @vzalloc(i64) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
