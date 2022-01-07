; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_mark_pages_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_mark_pages_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_PAGE_PPN_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KVM_MEM_DIRTY_LOG_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_pages_dirty(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @_PAGE_PPN_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @__kvm_va(i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i64, i64* @KVM_MEM_DIRTY_LOG_BASE, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %11, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %32

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = sub nsw i32 %29, %30
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i32 [ 0, %27 ], [ %31, %28 ]
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @vmm_spin_lock(i32* %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %56, %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @test_bit(i32 %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @set_bit(i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %49, %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @vmm_spin_unlock(i32* %60)
  ret void
}

declare dso_local i32* @__kvm_va(i32) #1

declare dso_local i32 @vmm_spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i8*) #1

declare dso_local i32 @vmm_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
