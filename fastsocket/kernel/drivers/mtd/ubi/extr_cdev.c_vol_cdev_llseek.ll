; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_vol_cdev_llseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_vol_cdev_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.ubi_volume_desc* }
%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_volume = type { i64, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"updating\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"bad seek %lld\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"seek volume %d, offset %lld, origin %d, new offset %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @vol_cdev_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vol_cdev_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_volume_desc*, align 8
  %9 = alloca %struct.ubi_volume*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  store %struct.ubi_volume_desc* %13, %struct.ubi_volume_desc** %8, align 8
  %14 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  %15 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %14, i32 0, i32 0
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %15, align 8
  store %struct.ubi_volume* %16, %struct.ubi_volume** %9, align 8
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %18 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @EBUSY, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %70

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %41 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %35
  ]

27:                                               ; preds = %25
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %10, align 8
  br label %44

29:                                               ; preds = %25
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %10, align 8
  br label %44

35:                                               ; preds = %25
  %36 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %37 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %10, align 8
  br label %44

41:                                               ; preds = %25
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %4, align 8
  br label %70

44:                                               ; preds = %35, %29, %27
  %45 = load i64, i64* %10, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %50 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %44
  %54 = load i64, i64* %10, align 8
  %55 = call i32 (i8*, ...) @dbg_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %4, align 8
  br label %70

58:                                               ; preds = %47
  %59 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %60 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @dbg_gen(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %62, i32 %63, i64 %64)
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.file*, %struct.file** %5, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %58, %53, %41, %21
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i32 @dbg_err(i8*, ...) #1

declare dso_local i32 @dbg_gen(i8*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
