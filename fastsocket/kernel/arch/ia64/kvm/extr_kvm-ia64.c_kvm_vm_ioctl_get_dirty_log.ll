; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_vm_ioctl_get_dirty_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_vm_ioctl_get_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i32 }
%struct.kvm_dirty_log = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_get_dirty_log(%struct.kvm* %0, %struct.kvm_dirty_log* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_dirty_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_memory_slot*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_dirty_log* %1, %struct.kvm_dirty_log** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.kvm*, %struct.kvm** %3, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %18 = call i32 @kvm_ia64_sync_dirty_log(%struct.kvm* %16, %struct.kvm_dirty_log* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.kvm*, %struct.kvm** %3, align 8
  %24 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %25 = call i32 @kvm_get_dirty_log(%struct.kvm* %23, %struct.kvm_dirty_log* %24, i32* %8)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %52

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.kvm*, %struct.kvm** %3, align 8
  %34 = call i32 @kvm_flush_remote_tlbs(%struct.kvm* %33)
  %35 = load %struct.kvm*, %struct.kvm** %3, align 8
  %36 = getelementptr inbounds %struct.kvm, %struct.kvm* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %38, align 8
  %40 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %39, i64 %42
  store %struct.kvm_memory_slot* %43, %struct.kvm_memory_slot** %7, align 8
  %44 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %45 = call i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot* %44)
  store i64 %45, i64* %6, align 8
  %46 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @memset(i32 %48, i32 0, i64 %49)
  br label %51

51:                                               ; preds = %32, %29
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %28, %21
  %53 = load %struct.kvm*, %struct.kvm** %3, align 8
  %54 = getelementptr inbounds %struct.kvm, %struct.kvm* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.kvm*, %struct.kvm** %3, align 8
  %57 = getelementptr inbounds %struct.kvm, %struct.kvm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvm_ia64_sync_dirty_log(%struct.kvm*, %struct.kvm_dirty_log*) #1

declare dso_local i32 @kvm_get_dirty_log(%struct.kvm*, %struct.kvm_dirty_log*, i32*) #1

declare dso_local i32 @kvm_flush_remote_tlbs(%struct.kvm*) #1

declare dso_local i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
