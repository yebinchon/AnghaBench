; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_prepare_memory_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_prepare_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32 }
%struct.kvm_userspace_memory_region = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_prepare_memory_region(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i32 %2, %struct.kvm_userspace_memory_region* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_memory_slot, align 4
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca %struct.kvm_memory_slot*, align 8
  %10 = alloca %struct.kvm_userspace_memory_region*, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %7, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.kvm* %0, %struct.kvm** %8, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %9, align 8
  store %struct.kvm_userspace_memory_region* %3, %struct.kvm_userspace_memory_region** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %10, align 8
  %14 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %57

20:                                               ; preds = %5
  %21 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %10, align 8
  %22 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %57

28:                                               ; preds = %20
  %29 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %10, align 8
  %30 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %57

39:                                               ; preds = %28
  %40 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %10, align 8
  %41 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %57

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %57

56:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %53, %47, %36, %25, %17
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
