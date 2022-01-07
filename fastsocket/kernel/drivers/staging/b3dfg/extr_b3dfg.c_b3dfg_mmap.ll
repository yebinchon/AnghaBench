; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_b3dfg_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_b3dfg_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.b3dfg_dev* }
%struct.b3dfg_dev = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@b3dfg_nbuf = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@VM_CAN_NONLINEAR = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@b3dfg_vm_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @b3dfg_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b3dfg_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.b3dfg_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %12, align 8
  store %struct.b3dfg_dev* %13, %struct.b3dfg_dev** %5, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PAGE_SHIFT, align 8
  %18 = shl i64 %16, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* @b3dfg_nbuf, align 4
  %27 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %28 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = mul nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %2
  %40 = load i32, i32* @VM_IO, align 4
  %41 = load i32, i32* @VM_RESERVED, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VM_CAN_NONLINEAR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @VM_PFNMAP, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 4
  store i32* @b3dfg_vm_ops, i32** %52, align 8
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %39
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
