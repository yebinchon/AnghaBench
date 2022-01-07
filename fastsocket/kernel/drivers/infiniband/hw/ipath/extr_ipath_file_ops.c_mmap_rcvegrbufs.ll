; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_mmap_rcvegrbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_mmap_rcvegrbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.ipath_portdata = type { i64, i64, i32*, %struct.ipath_devdata* }
%struct.ipath_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"FAIL on egr bufs: reqlen %lx > actual %lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Can't map eager buffers as writable (flags=%lx)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.ipath_portdata*)* @mmap_rcvegrbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_rcvegrbufs(%struct.vm_area_struct* %0, %struct.ipath_portdata* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.ipath_portdata*, align 8
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.ipath_portdata* %1, %struct.ipath_portdata** %4, align 8
  %12 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %13 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %12, i32 0, i32 3
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %13, align 8
  store %struct.ipath_devdata* %14, %struct.ipath_devdata** %5, align 8
  %15 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %16 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %19 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %25, %28
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %2
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %8, align 8
  %46 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %112

49:                                               ; preds = %2
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @VM_WRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %58 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %112

67:                                               ; preds = %49
  %68 = load i32, i32* @VM_MAYWRITE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %6, align 8
  store i64 0, i64* %9, align 8
  br label %77

77:                                               ; preds = %105, %67
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %80 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %77
  %84 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %85 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @virt_to_phys(i32 %89)
  %91 = load i64, i64* @PAGE_SHIFT, align 8
  %92 = lshr i64 %90, %91
  store i64 %92, i64* %10, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @remap_pfn_range(%struct.vm_area_struct* %93, i64 %94, i64 %95, i64 %96, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %83
  br label %112

104:                                              ; preds = %83
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %6, align 8
  br label %77

111:                                              ; preds = %77
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %111, %103, %56, %32
  %113 = load i32, i32* %11, align 4
  ret i32 %113
}

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
