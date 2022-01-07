; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_min_sync_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_min_sync_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @min_sync_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @min_sync_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
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
  %11 = call i64 @kstrtoull(i8* %10, i32 10, i64* %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub i64 0, %14
  store i64 %15, i64* %4, align 8
  br label %56

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.mddev*, %struct.mddev** %5, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %56

25:                                               ; preds = %16
  %26 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %27 = load %struct.mddev*, %struct.mddev** %5, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 3
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @EBUSY, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %4, align 8
  br label %56

34:                                               ; preds = %25
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.mddev*, %struct.mddev** %5, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @sector_div(i64 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %4, align 8
  br label %56

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.mddev*, %struct.mddev** %5, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %51, %47, %31, %22, %13
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @sector_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
