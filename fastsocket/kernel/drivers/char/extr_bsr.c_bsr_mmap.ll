; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_bsr.c_bsr_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_bsr.c_bsr_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.bsr_dev* }
%struct.bsr_dev = type { i64, i32 }
%struct.vm_area_struct = type { i64, i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @bsr_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsr_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bsr_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  store i64 %15, i64* %6, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.bsr_dev*, %struct.bsr_dev** %17, align 8
  store %struct.bsr_dev* %18, %struct.bsr_dev** %7, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pgprot_noncached(i32 %21)
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bsr_dev*, %struct.bsr_dev** %7, align 8
  %26 = getelementptr inbounds %struct.bsr_dev, %struct.bsr_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bsr_dev*, %struct.bsr_dev** %7, align 8
  %40 = getelementptr inbounds %struct.bsr_dev, %struct.bsr_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 12
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @remap_4k_pfn(%struct.vm_area_struct* %35, i64 %38, i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %72

47:                                               ; preds = %30, %2
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.bsr_dev*, %struct.bsr_dev** %7, align 8
  %50 = getelementptr inbounds %struct.bsr_dev, %struct.bsr_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ule i64 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bsr_dev*, %struct.bsr_dev** %7, align 8
  %59 = getelementptr inbounds %struct.bsr_dev, %struct.bsr_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %54, i64 %57, i32 %62, i64 %63, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %47
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %79

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71, %34
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %75, %68
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_4k_pfn(%struct.vm_area_struct*, i64, i32, i32) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
