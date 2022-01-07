; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_munmap_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_munmap_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.notifier_block = type { i32 }
%struct.vm_area_struct = type { i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @munmap_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @munmap_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %9, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 0
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %19, i64 %20)
  store %struct.vm_area_struct* %21, %struct.vm_area_struct** %10, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %23 = icmp ne %struct.vm_area_struct* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VM_EXEC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = call i32 @up_read(i32* %38)
  %40 = call i32 (...) @raw_smp_processor_id()
  %41 = call i32 @sync_buffer(i32 %40)
  store i32 0, i32* %4, align 4
  br label %46

42:                                               ; preds = %29, %24, %3
  %43 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 0
  %45 = call i32 @up_read(i32* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @sync_buffer(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
