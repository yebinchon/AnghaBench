; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_mmap_piobufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_mmap_piobufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, i32, i32 }
%struct.ipath_devdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_portdata = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"FAIL mmap piobufs: reqlen %lx > PAGE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@_PAGE_GUARDED = common dso_local global i32 0, align 4
@_PAGE_NO_CACHE = common dso_local global i32 0, align 4
@_PAGE_WRITETHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.ipath_devdata*, %struct.ipath_portdata*, i32, i32)* @mmap_piobufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_piobufs(%struct.vm_area_struct* %0, %struct.ipath_devdata* %1, %struct.ipath_portdata* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.ipath_devdata*, align 8
  %8 = alloca %struct.ipath_portdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.ipath_devdata* %1, %struct.ipath_devdata** %7, align 8
  store %struct.ipath_portdata* %2, %struct.ipath_portdata** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %22 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul i32 %20, %23
  %25 = icmp ugt i32 %19, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %5
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %28 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %33, %36
  %38 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %79

41:                                               ; preds = %5
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %43 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %44, %45
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* @VM_MAYREAD, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @VM_DONTCOPY, align 4
  %55 = load i32, i32* @VM_DONTEXPAND, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @PAGE_SHIFT, align 8
  %67 = lshr i64 %65, %66
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %70, %73
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %61, i32 %64, i64 %67, i32 %74, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %41, %26
  %80 = load i32, i32* %12, align 4
  ret i32 %80
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
