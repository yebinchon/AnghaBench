; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_uservirt_to_phys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_uservirt_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64 }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@VM_IO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"get_user_pages failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @vpif_uservirt_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vpif_uservirt_to_phys(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %5, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %13, i64 %14)
  store %struct.vm_area_struct* %15, %struct.vm_area_struct** %6, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @PAGE_OFFSET, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i64 @virt_to_phys(i8* %21)
  store i64 %22, i64* %4, align 8
  br label %85

23:                                               ; preds = %1
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = icmp ne %struct.vm_area_struct* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VM_IO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = shl i64 %41, %42
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  %49 = add i64 %43, %48
  store i64 %49, i64* %4, align 8
  br label %84

50:                                               ; preds = %33, %26, %23
  store i32 1, i32* %8, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.mm_struct*, %struct.mm_struct** %52, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 0
  %55 = call i32 @down_read(i32* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.mm_struct*, %struct.mm_struct** %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @get_user_pages(%struct.TYPE_3__* %56, %struct.mm_struct* %59, i64 %60, i32 %61, i32 1, i32 0, %struct.page** %9, i32* null)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.mm_struct*, %struct.mm_struct** %64, align 8
  %66 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %65, i32 0, i32 0
  %67 = call i32 @up_read(i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %50
  %72 = load %struct.page*, %struct.page** %9, align 8
  %73 = getelementptr inbounds %struct.page, %struct.page* %72, i64 0
  %74 = call i64 @page_address(%struct.page* %73)
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @PAGE_MASK, align 8
  %77 = xor i64 %76, -1
  %78 = and i64 %75, %77
  %79 = add i64 %74, %78
  %80 = call i64 @__pa(i64 %79)
  store i64 %80, i64* %4, align 8
  br label %83

81:                                               ; preds = %50
  %82 = call i32 @vpif_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %87

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %38
  br label %85

85:                                               ; preds = %84, %19
  %86 = load i64, i64* %4, align 8
  store i64 %86, i64* %2, align 8
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i64, i64* %2, align 8
  ret i64 %88
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_3__*, %struct.mm_struct*, i64, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @vpif_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
