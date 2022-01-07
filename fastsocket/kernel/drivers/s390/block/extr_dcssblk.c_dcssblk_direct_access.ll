; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dcssblk.c_dcssblk_direct_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dcssblk.c_dcssblk_direct_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dcssblk_dev_info* }
%struct.dcssblk_dev_info = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i8**, i64*)* @dcssblk_direct_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcssblk_direct_access(%struct.block_device* %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.dcssblk_dev_info*, align 8
  %11 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.block_device*, %struct.block_device** %6, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %15, align 8
  store %struct.dcssblk_dev_info* %16, %struct.dcssblk_dev_info** %10, align 8
  %17 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %10, align 8
  %18 = icmp ne %struct.dcssblk_dev_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %71

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sdiv i32 %24, 512
  %26 = srem i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %71

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sdiv i32 %33, 512
  %35 = sdiv i32 %32, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 1
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %38, %40
  %42 = sub i64 %41, 1
  %43 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %10, align 8
  %44 = getelementptr inbounds %struct.dcssblk_dev_info, %struct.dcssblk_dev_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %10, align 8
  %47 = getelementptr inbounds %struct.dcssblk_dev_info, %struct.dcssblk_dev_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = icmp ugt i64 %42, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %31
  %52 = load i32, i32* @ERANGE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %71

54:                                               ; preds = %31
  %55 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %10, align 8
  %56 = getelementptr inbounds %struct.dcssblk_dev_info, %struct.dcssblk_dev_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %58, %60
  %62 = add i64 %57, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8**, i8*** %8, align 8
  store i8* %63, i8** %64, align 8
  %65 = load i8**, i8*** %8, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @virt_to_phys(i8* %66)
  %68 = load i64, i64* @PAGE_SHIFT, align 8
  %69 = lshr i64 %67, %68
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %54, %51, %28, %19
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @virt_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
