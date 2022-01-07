; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_get_dirty_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_get_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32, i32, %struct.kvm_memslots* }
%struct.kvm_memslots = type { %struct.kvm_memory_slot*, i32 }
%struct.kvm_memory_slot = type { i64* }
%struct.kvm_dirty_log = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_MEMORY_SLOTS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_get_dirty_log(%struct.kvm* %0, %struct.kvm_dirty_log* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_dirty_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_memory_slot*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.kvm_memslots*, align 8
  %12 = alloca %struct.kvm_memslots*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_dirty_log* %1, %struct.kvm_dirty_log** %4, align 8
  store i64 0, i64* %9, align 8
  store i64* null, i64** %10, align 8
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KVM_MEMORY_SLOTS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %153

24:                                               ; preds = %2
  %25 = load %struct.kvm*, %struct.kvm** %3, align 8
  %26 = getelementptr inbounds %struct.kvm, %struct.kvm* %25, i32 0, i32 3
  %27 = load %struct.kvm_memslots*, %struct.kvm_memslots** %26, align 8
  %28 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %27, i32 0, i32 0
  %29 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %28, align 8
  %30 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %29, i64 %32
  store %struct.kvm_memory_slot* %33, %struct.kvm_memory_slot** %7, align 8
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %37 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  br label %153

41:                                               ; preds = %24
  %42 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %43 = call i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i64* @vmalloc(i64 %46)
  store i64* %47, i64** %10, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %153

51:                                               ; preds = %41
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @memset(i64* %52, i32 0, i64 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %74, %51
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %8, align 8
  %62 = udiv i64 %61, 8
  %63 = icmp ult i64 %60, %62
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i1 [ false, %55 ], [ %63, %58 ]
  br i1 %65, label %66, label %77

66:                                               ; preds = %64
  %67 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %55

77:                                               ; preds = %64
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %138

80:                                               ; preds = %77
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.kvm_memslots* @kzalloc(i32 16, i32 %81)
  store %struct.kvm_memslots* %82, %struct.kvm_memslots** %11, align 8
  %83 = load %struct.kvm_memslots*, %struct.kvm_memslots** %11, align 8
  %84 = icmp ne %struct.kvm_memslots* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %150

86:                                               ; preds = %80
  %87 = load %struct.kvm_memslots*, %struct.kvm_memslots** %11, align 8
  %88 = load %struct.kvm*, %struct.kvm** %3, align 8
  %89 = getelementptr inbounds %struct.kvm, %struct.kvm* %88, i32 0, i32 3
  %90 = load %struct.kvm_memslots*, %struct.kvm_memslots** %89, align 8
  %91 = call i32 @memcpy(%struct.kvm_memslots* %87, %struct.kvm_memslots* %90, i32 16)
  %92 = load i64*, i64** %10, align 8
  %93 = load %struct.kvm_memslots*, %struct.kvm_memslots** %11, align 8
  %94 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %93, i32 0, i32 0
  %95 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %94, align 8
  %96 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %95, i64 %98
  %100 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %99, i32 0, i32 0
  store i64* %92, i64** %100, align 8
  %101 = load %struct.kvm_memslots*, %struct.kvm_memslots** %11, align 8
  %102 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.kvm*, %struct.kvm** %3, align 8
  %106 = getelementptr inbounds %struct.kvm, %struct.kvm* %105, i32 0, i32 3
  %107 = load %struct.kvm_memslots*, %struct.kvm_memslots** %106, align 8
  store %struct.kvm_memslots* %107, %struct.kvm_memslots** %12, align 8
  %108 = load %struct.kvm*, %struct.kvm** %3, align 8
  %109 = getelementptr inbounds %struct.kvm, %struct.kvm* %108, i32 0, i32 3
  %110 = load %struct.kvm_memslots*, %struct.kvm_memslots** %109, align 8
  %111 = load %struct.kvm_memslots*, %struct.kvm_memslots** %11, align 8
  %112 = call i32 @rcu_assign_pointer(%struct.kvm_memslots* %110, %struct.kvm_memslots* %111)
  %113 = load %struct.kvm*, %struct.kvm** %3, align 8
  %114 = getelementptr inbounds %struct.kvm, %struct.kvm* %113, i32 0, i32 2
  %115 = call i32 @synchronize_srcu_expedited(i32* %114)
  %116 = load %struct.kvm_memslots*, %struct.kvm_memslots** %12, align 8
  %117 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %116, i32 0, i32 0
  %118 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %117, align 8
  %119 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %120 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %118, i64 %121
  %123 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  store i64* %124, i64** %10, align 8
  %125 = load %struct.kvm_memslots*, %struct.kvm_memslots** %12, align 8
  %126 = call i32 @kfree(%struct.kvm_memslots* %125)
  %127 = load %struct.kvm*, %struct.kvm** %3, align 8
  %128 = getelementptr inbounds %struct.kvm, %struct.kvm* %127, i32 0, i32 1
  %129 = call i32 @spin_lock(i32* %128)
  %130 = load %struct.kvm*, %struct.kvm** %3, align 8
  %131 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %132 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @kvm_mmu_slot_remove_write_access(%struct.kvm* %130, i64 %133, i32 0)
  %135 = load %struct.kvm*, %struct.kvm** %3, align 8
  %136 = getelementptr inbounds %struct.kvm, %struct.kvm* %135, i32 0, i32 1
  %137 = call i32 @spin_unlock(i32* %136)
  br label %138

138:                                              ; preds = %86, %77
  store i32 0, i32* %5, align 4
  %139 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %4, align 8
  %140 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i64*, i64** %10, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i64 @copy_to_user(i32 %141, i64* %142, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* @EFAULT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %146, %138
  br label %150

150:                                              ; preds = %149, %85
  %151 = load i64*, i64** %10, align 8
  %152 = call i32 @vfree(i64* %151)
  br label %153

153:                                              ; preds = %150, %50, %40, %23
  %154 = load %struct.kvm*, %struct.kvm** %3, align 8
  %155 = getelementptr inbounds %struct.kvm, %struct.kvm* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot*) #1

declare dso_local i64* @vmalloc(i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local %struct.kvm_memslots* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.kvm_memslots*, %struct.kvm_memslots*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.kvm_memslots*, %struct.kvm_memslots*) #1

declare dso_local i32 @synchronize_srcu_expedited(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_memslots*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvm_mmu_slot_remove_write_access(%struct.kvm*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @copy_to_user(i32, i64*, i64) #1

declare dso_local i32 @vfree(i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
