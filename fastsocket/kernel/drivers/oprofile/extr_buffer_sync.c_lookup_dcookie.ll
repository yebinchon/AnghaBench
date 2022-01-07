; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_lookup_dcookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_lookup_dcookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, %struct.TYPE_2__*, %struct.vm_area_struct* }
%struct.TYPE_2__ = type { i32 }

@NO_COOKIE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@INVALID_COOKIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*, i64, i64*)* @lookup_dcookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_dcookie(%struct.mm_struct* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* @NO_COOKIE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %10, i64 %11)
  store %struct.vm_area_struct* %12, %struct.vm_area_struct** %8, align 8
  br label %13

13:                                               ; preds = %56, %3
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16
  br label %56

29:                                               ; preds = %22
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i64 @fast_get_dcookie(i32* %38)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %44, %45
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  %51 = load i64*, i64** %6, align 8
  store i64 %50, i64* %51, align 8
  br label %55

52:                                               ; preds = %29
  %53 = load i64, i64* %5, align 8
  %54 = load i64*, i64** %6, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %34
  br label %60

56:                                               ; preds = %28
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 4
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %58, align 8
  store %struct.vm_area_struct* %59, %struct.vm_area_struct** %8, align 8
  br label %13

60:                                               ; preds = %55, %13
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %62 = icmp ne %struct.vm_area_struct* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @INVALID_COOKIE, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @fast_get_dcookie(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
