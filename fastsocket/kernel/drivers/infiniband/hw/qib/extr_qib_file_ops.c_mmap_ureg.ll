; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_mmap_ureg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_mmap_ureg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.qib_devdata = type { i32, i64, i32 }

@QIB_HAS_HDRSUPP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"FAIL mmap userreg: reqlen %lx > PAGE\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.qib_devdata*, i64)* @mmap_ureg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_ureg(%struct.vm_area_struct* %0, %struct.qib_devdata* %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.qib_devdata* %1, %struct.qib_devdata** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @QIB_HAS_HDRSUPP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = mul nsw i32 2, %17
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @PAGE_SIZE, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = load i64, i64* %8, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %21
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = call i32 @qib_devinfo(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %84

47:                                               ; preds = %21
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %7, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pgprot_noncached(i32 %55)
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @VM_DONTCOPY, align 4
  %60 = load i32, i32* @VM_DONTEXPAND, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @PAGE_SHIFT, align 8
  %72 = lshr i64 %70, %71
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %75, %78
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %66, i64 %69, i64 %72, i64 %79, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %47, %33
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @qib_devinfo(i32, i8*, i64) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
