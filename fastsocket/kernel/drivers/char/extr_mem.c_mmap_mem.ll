; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mem.c_mmap_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mem.c_mmap_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@mmap_mem_ops = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @mmap_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_mem(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @valid_mmap_phys_addr_range(i32 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = call i32 @private_mapping_ok(%struct.vm_area_struct* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %84

30:                                               ; preds = %23
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @range_is_allowed(i32 %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %84

40:                                               ; preds = %30
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 2
  %48 = call i32 @phys_mem_access_prot_allowed(%struct.file* %41, i32 %44, i64 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %84

53:                                               ; preds = %40
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @phys_mem_access_prot(%struct.file* %54, i32 %57, i64 %58, i32 %61)
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 4
  store i32* @mmap_mem_ops, i32** %66, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @remap_pfn_range(%struct.vm_area_struct* %67, i64 %70, i32 %73, i64 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %53
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %80, %50, %37, %27, %20
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @valid_mmap_phys_addr_range(i32, i64) #1

declare dso_local i32 @private_mapping_ok(%struct.vm_area_struct*) #1

declare dso_local i32 @range_is_allowed(i32, i64) #1

declare dso_local i32 @phys_mem_access_prot_allowed(%struct.file*, i32, i64, i32*) #1

declare dso_local i32 @phys_mem_access_prot(%struct.file*, i32, i64, i32) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
