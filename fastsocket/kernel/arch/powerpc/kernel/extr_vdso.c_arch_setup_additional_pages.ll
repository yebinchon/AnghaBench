; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vdso.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vdso.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.page = type { i32 }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@vdso_ready = common dso_local global i32 0, align 4
@vdso32_pagelist = common dso_local global %struct.page** null, align 8
@vdso32_pages = common dso_local global i64 0, align 8
@VDSO32_MBASE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VDSO_ALIGNMENT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@vdso64_pagelist = common dso_local global %struct.page** null, align 8
@vdso64_pages = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %6, align 8
  %14 = load i32, i32* @vdso_ready, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

17:                                               ; preds = %2
  %18 = load %struct.page**, %struct.page*** @vdso32_pagelist, align 8
  store %struct.page** %18, %struct.page*** %7, align 8
  %19 = load i64, i64* @vdso32_pages, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @VDSO32_MBASE, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %95

29:                                               ; preds = %17
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  %34 = call i32 @down_write(i32* %33)
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = shl i64 %36, %37
  %39 = load i32, i32* @VDSO_ALIGNMENT, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @PAGE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add i64 %38, %43
  %45 = call i64 @get_unmapped_area(i32* null, i64 %35, i64 %44, i32 0, i32 0)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @IS_ERR_VALUE(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  br label %90

52:                                               ; preds = %29
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* @VDSO_ALIGNMENT, align 4
  %55 = call i64 @ALIGN(i64 %53, i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.mm_struct*, %struct.mm_struct** %58, align 8
  %60 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 %56, i64* %61, align 8
  %62 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @PAGE_SHIFT, align 8
  %66 = shl i64 %64, %65
  %67 = load i32, i32* @VM_READ, align 4
  %68 = load i32, i32* @VM_EXEC, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @VM_MAYREAD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @VM_MAYWRITE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @VM_MAYEXEC, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.page**, %struct.page*** %7, align 8
  %77 = call i32 @install_special_mapping(%struct.mm_struct* %62, i64 %63, i64 %66, i32 %75, %struct.page** %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %52
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.mm_struct*, %struct.mm_struct** %82, align 8
  %84 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %90

86:                                               ; preds = %52
  %87 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %88 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %87, i32 0, i32 0
  %89 = call i32 @up_write(i32* %88)
  store i32 0, i32* %3, align 4
  br label %95

90:                                               ; preds = %80, %49
  %91 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %92 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %91, i32 0, i32 0
  %93 = call i32 @up_write(i32* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %86, %28, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @get_unmapped_area(i32*, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i64, i64, i32, %struct.page**) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
