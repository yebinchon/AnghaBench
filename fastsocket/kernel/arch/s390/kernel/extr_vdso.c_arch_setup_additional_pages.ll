; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_vdso.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_vdso.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.page = type { i32 }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@vdso_enabled = common dso_local global i32 0, align 4
@vdso32_pagelist = common dso_local global %struct.page** null, align 8
@vdso32_pages = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
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
  %14 = load i32, i32* @vdso_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %83

21:                                               ; preds = %17
  %22 = load %struct.page**, %struct.page*** @vdso32_pagelist, align 8
  store %struct.page** %22, %struct.page*** %7, align 8
  %23 = load i64, i64* @vdso32_pages, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %83

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.mm_struct*, %struct.mm_struct** %29, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 0
  %35 = call i32 @down_write(i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = shl i64 %36, %37
  %39 = call i64 @get_unmapped_area(i32* null, i32 0, i64 %38, i32 0, i32 0)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @IS_ERR_VALUE(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  br label %78

46:                                               ; preds = %27
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.mm_struct*, %struct.mm_struct** %49, align 8
  %51 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  %53 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = shl i64 %55, %56
  %58 = load i32, i32* @VM_READ, align 4
  %59 = load i32, i32* @VM_EXEC, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @VM_MAYREAD, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @VM_MAYWRITE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @VM_MAYEXEC, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.page**, %struct.page*** %7, align 8
  %68 = call i32 @install_special_mapping(%struct.mm_struct* %53, i64 %54, i64 %57, i32 %66, %struct.page** %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %46
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.mm_struct*, %struct.mm_struct** %73, align 8
  %75 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %46
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %80 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %79, i32 0, i32 0
  %81 = call i32 @up_write(i32* %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %26, %20, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @get_unmapped_area(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i64, i64, i32, %struct.page**) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
