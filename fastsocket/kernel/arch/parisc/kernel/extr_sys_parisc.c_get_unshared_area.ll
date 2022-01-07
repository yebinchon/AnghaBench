; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_sys_parisc.c_get_unshared_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_sys_parisc.c_get_unshared_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @get_unshared_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_unshared_area(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @PAGE_ALIGN(i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.vm_area_struct* @find_vma(i32 %11, i64 %12)
  store %struct.vm_area_struct* %13, %struct.vm_area_struct** %6, align 8
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i64, i64* @TASK_SIZE, align 8
  %16 = load i64, i64* %5, align 8
  %17 = sub i64 %15, %16
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i64, i64* @ENOMEM, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %3, align 8
  br label %44

23:                                               ; preds = %14
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = icmp ne %struct.vm_area_struct* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ule i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %23
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %3, align 8
  br label %44

36:                                               ; preds = %26
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %36
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 2
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %42, align 8
  store %struct.vm_area_struct* %43, %struct.vm_area_struct** %6, align 8
  br label %14

44:                                               ; preds = %34, %20
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
