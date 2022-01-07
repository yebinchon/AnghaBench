; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_crash.c_crash_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_crash.c_crash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i64, i64*)* @crash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crash_read(%struct.file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64*, i64** %9, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = lshr i64 %16, %17
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = icmp ne i64 %18, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %57

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = call i8* @map_virtual(i64 %30, %struct.page** %11)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @EFAULT, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %57

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @copy_to_user(i8* %38, i8* %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.page*, %struct.page** %11, align 8
  %45 = call i32 @unmap_virtual(%struct.page* %44)
  %46 = load i64, i64* @EFAULT, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %57

48:                                               ; preds = %37
  %49 = load %struct.page*, %struct.page** %11, align 8
  %50 = call i32 @unmap_virtual(%struct.page* %49)
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %13, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %48, %43, %34, %26
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i8* @map_virtual(i64, %struct.page**) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i64) #1

declare dso_local i32 @unmap_virtual(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
