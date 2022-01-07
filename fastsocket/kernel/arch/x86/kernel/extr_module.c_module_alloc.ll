; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_module.c_module_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_module.c_module_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32 }

@MODULES_LEN = common dso_local global i64 0, align 8
@VM_ALLOC = common dso_local global i32 0, align 4
@MODULES_VADDR = common dso_local global i32 0, align 4
@MODULES_END = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @module_alloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vm_struct*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @PAGE_ALIGN(i64 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @MODULES_LEN, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %31

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @VM_ALLOC, align 4
  %18 = load i32, i32* @MODULES_VADDR, align 4
  %19 = load i32, i32* @MODULES_END, align 4
  %20 = call %struct.vm_struct* @__get_vm_area(i64 %16, i32 %17, i32 %18, i32 %19)
  store %struct.vm_struct* %20, %struct.vm_struct** %4, align 8
  %21 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %22 = icmp ne %struct.vm_struct* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @__GFP_HIGHMEM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %30 = call i8* @__vmalloc_area(%struct.vm_struct* %25, i32 %28, i32 %29)
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %24, %23, %14, %7
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_struct* @__get_vm_area(i64, i32, i32, i32) #1

declare dso_local i8* @__vmalloc_area(%struct.vm_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
