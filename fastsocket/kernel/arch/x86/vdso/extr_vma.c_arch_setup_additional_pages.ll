; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/vdso/extr_vma.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/vdso/extr_vma.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@vdso_enabled = common dso_local global i32 0, align 4
@vdso_size = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@vdso_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %6, align 8
  %12 = load i32, i32* @vdso_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 0
  %18 = call i32 @down_write(i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @vdso_size, align 4
  %23 = call i64 @vdso_addr(i32 %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @vdso_size, align 4
  %26 = call i64 @get_unmapped_area(i32* null, i64 %24, i32 %25, i32 0, i32 0)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @IS_ERR_VALUE(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  br label %65

33:                                               ; preds = %15
  %34 = load i64, i64* %7, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.mm_struct*, %struct.mm_struct** %38, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32* %36, i32** %41, align 8
  %42 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @vdso_size, align 4
  %45 = load i32, i32* @VM_READ, align 4
  %46 = load i32, i32* @VM_EXEC, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @VM_MAYREAD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @VM_MAYWRITE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @VM_MAYEXEC, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @vdso_pages, align 4
  %55 = call i32 @install_special_mapping(%struct.mm_struct* %42, i64 %43, i32 %44, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %33
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.mm_struct*, %struct.mm_struct** %60, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %65

64:                                               ; preds = %33
  br label %65

65:                                               ; preds = %64, %58, %30
  %66 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %67 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %66, i32 0, i32 0
  %68 = call i32 @up_write(i32* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @vdso_addr(i32, i32) #1

declare dso_local i64 @get_unmapped_area(i32*, i64, i32, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i64, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
