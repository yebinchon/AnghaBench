; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mspec.c_mspec_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mspec.c_mspec_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i32, i32, i32, i32*, i32, %struct.vma_data* }
%struct.vma_data = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VMD_VMALLOCED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@MSPEC_FETCHOP = common dso_local global i64 0, align 8
@MSPEC_UNCACHED = common dso_local global i64 0, align 8
@mspec_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*, i32)* @mspec_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspec_mmap(%struct.file* %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vma_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %134

19:                                               ; preds = %3
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VM_SHARED, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %134

29:                                               ; preds = %19
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VM_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %134

39:                                               ; preds = %29
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = load i32, i32* @PAGE_SHIFT, align 4
  %48 = ashr i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = add i64 24, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %39
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.vma_data* @kmalloc(i32 %58, i32 %59)
  store %struct.vma_data* %60, %struct.vma_data** %8, align 8
  br label %65

61:                                               ; preds = %39
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.vma_data* @vmalloc(i32 %62)
  store %struct.vma_data* %63, %struct.vma_data** %8, align 8
  %64 = load i32, i32* @VMD_VMALLOCED, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %67 = icmp ne %struct.vma_data* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %134

71:                                               ; preds = %65
  %72 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @memset(%struct.vma_data* %72, i32 0, i32 %73)
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %79 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %84 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %87 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %90 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %92 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %91, i32 0, i32 5
  %93 = call i32 @spin_lock_init(i32* %92)
  %94 = call i32 @ATOMIC_INIT(i32 1)
  %95 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %96 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 6
  store %struct.vma_data* %97, %struct.vma_data** %99, align 8
  %100 = load i32, i32* @VM_IO, align 4
  %101 = load i32, i32* @VM_RESERVED, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @VM_PFNMAP, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @VM_DONTEXPAND, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %112 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @MSPEC_FETCHOP, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %71
  %118 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %119 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @MSPEC_UNCACHED, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %117, %71
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %126 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @pgprot_noncached(i32 %127)
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %132, i32 0, i32 4
  store i32* @mspec_vm_ops, i32** %133, align 8
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %68, %36, %26, %16
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.vma_data* @kmalloc(i32, i32) #1

declare dso_local %struct.vma_data* @vmalloc(i32) #1

declare dso_local i32 @memset(%struct.vma_data*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ATOMIC_INIT(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
