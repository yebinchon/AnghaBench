; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_non_atomic_pte_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_non_atomic_pte_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@HPAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i32, i64*, i32*)* @non_atomic_pte_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @non_atomic_pte_lookup(%struct.vm_area_struct* %0, i64 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = load i32*, i32** %11, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @get_user_pages(%struct.TYPE_3__* %15, i32 %18, i64 %19, i32 1, i32 %20, i32 0, %struct.page** %12, i32* null)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %32

26:                                               ; preds = %5
  %27 = load %struct.page*, %struct.page** %12, align 8
  %28 = call i64 @page_to_phys(%struct.page* %27)
  %29 = load i64*, i64** %10, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.page*, %struct.page** %12, align 8
  %31 = call i32 @put_page(%struct.page* %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i64 @get_user_pages(%struct.TYPE_3__*, i32, i64, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
