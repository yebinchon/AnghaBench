; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_grant-table.c_xen_alloc_vm_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_grant-table.c_xen_alloc_vm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64, i64, i64, i32*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_IOREMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_struct* @xen_alloc_vm_area(i64 %0) #0 {
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_struct*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @get_order(i64 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @__get_free_pages(i32 %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %51

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @scrub_pages(i64 %20, i64 %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.vm_struct* @kmalloc(i32 48, i32 %23)
  store %struct.vm_struct* %24, %struct.vm_struct** %7, align 8
  %25 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %26 = icmp eq %struct.vm_struct* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %47

28:                                               ; preds = %16
  %29 = load i32, i32* @VM_IOREMAP, align 4
  %30 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %31 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %35 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %40 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %43 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %45 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  store %struct.vm_struct* %46, %struct.vm_struct** %2, align 8
  br label %52

47:                                               ; preds = %27
  %48 = load i64, i64* %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @free_pages(i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %15
  store %struct.vm_struct* null, %struct.vm_struct** %2, align 8
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  ret %struct.vm_struct* %53
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @scrub_pages(i64, i64) #1

declare dso_local %struct.vm_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
