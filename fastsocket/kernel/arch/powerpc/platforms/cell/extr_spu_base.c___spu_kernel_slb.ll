; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_base.c___spu_kernel_slb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_base.c___spu_kernel_slb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.spu_slb = type { i32, i64 }

@KERNEL_REGION_ID = common dso_local global i64 0, align 8
@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@mmu_linear_psize = common dso_local global i64 0, align 8
@mmu_virtual_psize = common dso_local global i64 0, align 8
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@SLB_VSID_SHIFT = common dso_local global i32 0, align 4
@SLB_VSID_KERNEL = common dso_local global i32 0, align 4
@ESID_MASK = common dso_local global i64 0, align 8
@SLB_ESID_V = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.spu_slb*)* @__spu_kernel_slb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__spu_kernel_slb(i8* %0, %struct.spu_slb* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.spu_slb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.spu_slb* %1, %struct.spu_slb** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @REGION_ID(i64 %9)
  %11 = load i64, i64* @KERNEL_REGION_ID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %15 = load i64, i64* @mmu_linear_psize, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %21 = load i64, i64* @mmu_virtual_psize, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  %28 = call i32 @get_kernel_vsid(i64 %26, i32 %27)
  %29 = load i32, i32* @SLB_VSID_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @SLB_VSID_KERNEL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.spu_slb*, %struct.spu_slb** %4, align 8
  %36 = getelementptr inbounds %struct.spu_slb, %struct.spu_slb* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @ESID_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @SLB_ESID_V, align 8
  %41 = or i64 %39, %40
  %42 = load %struct.spu_slb*, %struct.spu_slb** %4, align 8
  %43 = getelementptr inbounds %struct.spu_slb, %struct.spu_slb* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  ret void
}

declare dso_local i64 @REGION_ID(i64) #1

declare dso_local i32 @get_kernel_vsid(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
