; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_get_exec_dcookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_get_exec_dcookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.TYPE_2__*, %struct.vm_area_struct* }
%struct.TYPE_2__ = type { i32 }

@NO_COOKIE = common dso_local global i64 0, align 8
@VM_EXECUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*)* @get_exec_dcookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_exec_dcookie(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = load i64, i64* @NO_COOKIE, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %7 = icmp ne %struct.mm_struct* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  store %struct.vm_area_struct* %12, %struct.vm_area_struct** %4, align 8
  br label %13

13:                                               ; preds = %36, %9
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VM_EXECUTABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i64 @fast_get_dcookie(i32* %34)
  store i64 %35, i64* %3, align 8
  br label %40

36:                                               ; preds = %29, %21
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 2
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %38, align 8
  store %struct.vm_area_struct* %39, %struct.vm_area_struct** %4, align 8
  br label %13

40:                                               ; preds = %30, %13
  br label %41

41:                                               ; preds = %40, %8
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i64 @fast_get_dcookie(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
