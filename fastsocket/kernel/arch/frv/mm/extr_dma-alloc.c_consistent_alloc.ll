; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_dma-alloc.c_consistent_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_dma-alloc.c_consistent_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32 }
%struct.page = type { i32 }

@VM_ALLOC = common dso_local global i32 0, align 4
@PAGE_KERNEL_NOCACHE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @consistent_alloc(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = call i64 (...) @in_interrupt()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (...) @BUG()
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @PAGE_ALIGN(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @get_order(i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @__get_free_pages(i32 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = call i32 (...) @BUG()
  store i8* null, i8** %4, align 8
  br label %104

33:                                               ; preds = %21
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @VM_ALLOC, align 4
  %36 = call %struct.vm_struct* @get_vm_area(i64 %34, i32 %35)
  store %struct.vm_struct* %36, %struct.vm_struct** %8, align 8
  %37 = load %struct.vm_struct*, %struct.vm_struct** %8, align 8
  %38 = icmp eq %struct.vm_struct* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @free_pages(i64 %40, i32 %41)
  store i8* null, i8** %4, align 8
  br label %104

43:                                               ; preds = %33
  %44 = load %struct.vm_struct*, %struct.vm_struct** %8, align 8
  %45 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @VMALLOC_VMADDR(i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %12, align 8
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i64 @virt_to_bus(i8* %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load i64, i64* %9, align 8
  %58 = call %struct.page* @virt_to_page(i64 %57)
  store %struct.page* %58, %struct.page** %16, align 8
  %59 = load %struct.page*, %struct.page** %16, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @split_page(%struct.page* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %43
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %84, %62
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %6, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i1 [ false, %63 ], [ %70, %68 ]
  br i1 %72, label %73, label %90

73:                                               ; preds = %71
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %74, %76
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = load i32, i32* @PAGE_KERNEL_NOCACHE, align 4
  %83 = call i32 @map_page(i64 %77, i64 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %73
  %85 = load i64, i64* @PAGE_SIZE, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %15, align 4
  br label %63

90:                                               ; preds = %71
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i64, i64* %10, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @vfree(i8* %95)
  store i8* null, i8** %4, align 8
  br label %104

97:                                               ; preds = %90
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %99, %100
  %102 = call i32 @frv_cache_invalidate(i64 %98, i64 %101)
  %103 = load i8*, i8** %12, align 8
  store i8* %103, i8** %4, align 8
  br label %104

104:                                              ; preds = %97, %93, %39, %31
  %105 = load i8*, i8** %4, align 8
  ret i8* %105
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local %struct.vm_struct* @get_vm_area(i64, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @VMALLOC_VMADDR(i32) #1

declare dso_local i64 @virt_to_bus(i8*) #1

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @map_page(i64, i64, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @frv_cache_invalidate(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
