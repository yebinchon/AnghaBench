; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_safe_delay_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_safe_delay_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @safe_delay_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_delay_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strict_strtoul_scaled(i8* %10, i64* %8, i32 3)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub i64 0, %14
  store i64 %15, i64* %4, align 8
  br label %52

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.mddev*, %struct.mddev** %5, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %50

22:                                               ; preds = %16
  %23 = load %struct.mddev*, %struct.mddev** %5, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @HZ, align 8
  %28 = mul i64 %26, %27
  %29 = udiv i64 %28, 1000
  %30 = load %struct.mddev*, %struct.mddev** %5, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.mddev*, %struct.mddev** %5, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.mddev*, %struct.mddev** %5, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 0
  store i64 1, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %22
  %40 = load %struct.mddev*, %struct.mddev** %5, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.mddev*, %struct.mddev** %5, align 8
  %47 = ptrtoint %struct.mddev* %46 to i64
  %48 = call i32 @md_safemode_timeout(i64 %47)
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %50, %13
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i64 @strict_strtoul_scaled(i8*, i64*, i32) #1

declare dso_local i32 @md_safemode_timeout(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
