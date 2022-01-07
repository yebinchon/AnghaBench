; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slb.c_slb_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slb.c_slb_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@slb_initialize.slb_encoding_inited = internal global i32 0, align 4
@mmu_psize_defs = common dso_local global %struct.TYPE_3__* null, align 8
@mmu_linear_psize = common dso_local global i64 0, align 8
@mmu_io_psize = common dso_local global i64 0, align 8
@mmu_vmalloc_psize = common dso_local global i64 0, align 8
@SLB_VSID_KERNEL = common dso_local global i64 0, align 8
@slb_miss_kernel_load_linear = external dso_local global i32*, align 8
@slb_miss_kernel_load_io = external dso_local global i32*, align 8
@slb_compare_rr_to_size = external dso_local global i32*, align 8
@mmu_slb_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"SLB: linear  LLP = %04lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SLB: io      LLP = %04lx\0A\00", align 1
@SLB_NUM_BOLTED = common dso_local global i32 0, align 4
@FW_FEATURE_ISERIES = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i32 0, align 4
@mmu_kernel_ssize = common dso_local global i32 0, align 4
@VMALLOC_START = common dso_local global i32 0, align 4
@boot_cpuid = common dso_local global i64 0, align 8
@mmu_vmemmap_psize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slb_initialize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %7 = load i64, i64* @mmu_linear_psize, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %1, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %12 = load i64, i64* @mmu_io_psize, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %17 = load i64, i64* @mmu_vmalloc_psize, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %22 = load i64, i64* %2, align 8
  %23 = or i64 %21, %22
  %24 = call %struct.TYPE_4__* (...) @get_paca()
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @slb_initialize.slb_encoding_inited, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %0
  store i32 1, i32* @slb_initialize.slb_encoding_inited, align 4
  %29 = load i32*, i32** @slb_miss_kernel_load_linear, align 8
  %30 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %31 = load i64, i64* %1, align 8
  %32 = or i64 %30, %31
  %33 = call i32 @patch_slb_encoding(i32* %29, i64 %32)
  %34 = load i32*, i32** @slb_miss_kernel_load_io, align 8
  %35 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %36 = load i64, i64* %3, align 8
  %37 = or i64 %35, %36
  %38 = call i32 @patch_slb_encoding(i32* %34, i64 %37)
  %39 = load i32*, i32** @slb_compare_rr_to_size, align 8
  %40 = load i64, i64* @mmu_slb_size, align 8
  %41 = call i32 @patch_slb_encoding(i32* %39, i64 %40)
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @pr_devel(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @pr_devel(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %28, %0
  %47 = load i32, i32* @SLB_NUM_BOLTED, align 4
  %48 = call %struct.TYPE_4__* (...) @get_paca()
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @FW_FEATURE_ISERIES, align 4
  %51 = call i64 @firmware_has_feature(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %90

54:                                               ; preds = %46
  %55 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %56 = load i64, i64* %1, align 8
  %57 = or i64 %55, %56
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %59 = load i64, i64* %2, align 8
  %60 = or i64 %58, %59
  store i64 %60, i64* %5, align 8
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "slbmte  $0,$0", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !3
  call void asm sideeffect "isync; slbia; isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %61 = load i32, i32* @PAGE_OFFSET, align 4
  %62 = load i32, i32* @mmu_kernel_ssize, align 4
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @create_shadowed_slbe(i32 %61, i32 %62, i64 %63, i32 0)
  %65 = load i32, i32* @VMALLOC_START, align 4
  %66 = load i32, i32* @mmu_kernel_ssize, align 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @create_shadowed_slbe(i32 %65, i32 %66, i64 %67, i32 1)
  %69 = call i32 @slb_shadow_clear(i32 2)
  %70 = call i64 (...) @raw_smp_processor_id()
  %71 = load i64, i64* @boot_cpuid, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %54
  %74 = call %struct.TYPE_4__* (...) @get_paca()
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @mmu_kernel_ssize, align 4
  %78 = call i32 @slb_esid_mask(i32 %77)
  %79 = and i32 %76, %78
  %80 = load i32, i32* @PAGE_OFFSET, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = call %struct.TYPE_4__* (...) @get_paca()
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @mmu_kernel_ssize, align 4
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @create_shadowed_slbe(i32 %85, i32 %86, i64 %87, i32 2)
  br label %89

89:                                               ; preds = %82, %73, %54
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  br label %90

90:                                               ; preds = %89, %53
  ret void
}

declare dso_local %struct.TYPE_4__* @get_paca(...) #1

declare dso_local i32 @patch_slb_encoding(i32*, i64) #1

declare dso_local i32 @pr_devel(i8*, i64) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @create_shadowed_slbe(i32, i32, i64, i32) #1

declare dso_local i32 @slb_shadow_clear(i32) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

declare dso_local i32 @slb_esid_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2083}
!3 = !{i32 2118}
!4 = !{i32 2170}
!5 = !{i32 2583}
