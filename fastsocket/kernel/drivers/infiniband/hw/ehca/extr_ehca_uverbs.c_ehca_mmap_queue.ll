; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_uverbs.c_ehca_mmap_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_uverbs.c_ehca_mmap_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i32*, i32*, i32 }
%struct.ipz_queue = type { i64 }
%struct.page = type { i32 }

@VM_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vm_insert_page() failed rc=%i\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.ipz_queue*, i32*)* @ehca_mmap_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_mmap_queue(%struct.vm_area_struct* %0, %struct.ipz_queue* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.ipz_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.ipz_queue* %1, %struct.ipz_queue** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @VM_RESERVED, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %49, %3
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.ipz_queue*, %struct.ipz_queue** %6, align 8
  %24 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load %struct.ipz_queue*, %struct.ipz_queue** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @ipz_qeit_calc(%struct.ipz_queue* %28, i64 %29)
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call %struct.page* @virt_to_page(i64 %32)
  store %struct.page* %33, %struct.page** %11, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.page*, %struct.page** %11, align 8
  %37 = call i32 @vm_insert_page(%struct.vm_area_struct* %34, i64 %35, %struct.page* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %27
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %45
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %21

53:                                               ; preds = %21
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 1
  store i32* @vm_ops, i32** %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %41
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ipz_qeit_calc(%struct.ipz_queue*, i64) #1

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ehca_gen_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
