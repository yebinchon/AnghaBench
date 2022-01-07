; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)* @mlx4_ib_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %8 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mlx4_ib_dev* @to_mdev(i32 %9)
  store %struct.mlx4_ib_dev* %10, %struct.mlx4_ib_dev** %6, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %105

23:                                               ; preds = %2
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pgprot_noncached(i32 %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %40 = call %struct.TYPE_8__* @to_mucontext(%struct.ib_ucontext* %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %35, i64 %38, i64 %43, i64 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %28
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %105

53:                                               ; preds = %28
  br label %104

54:                                               ; preds = %23
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %100

59:                                               ; preds = %54
  %60 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %59
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pgprot_writecombine(i32 %70)
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %79 = call %struct.TYPE_8__* @to_mucontext(%struct.ib_ucontext* %78)
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %82, %88
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %74, i64 %77, i64 %89, i64 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %67
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %105

99:                                               ; preds = %67
  br label %103

100:                                              ; preds = %59, %54
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %105

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %53
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %100, %96, %50, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

declare dso_local %struct.TYPE_8__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
