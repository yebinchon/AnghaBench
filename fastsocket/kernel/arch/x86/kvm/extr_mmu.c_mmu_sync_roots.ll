; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_sync_roots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_sync_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32*, i32 }
%struct.kvm_mmu_page = type { i32 }

@PT64_ROOT_LEVEL = common dso_local global i64 0, align 8
@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @mmu_sync_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_sync_roots(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @VALID_PAGE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PT64_ROOT_LEVEL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.kvm_mmu_page* @page_header(i32 %29)
  store %struct.kvm_mmu_page* %30, %struct.kvm_mmu_page** %4, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %33 = call i32 @mmu_sync_children(%struct.kvm_vcpu* %31, %struct.kvm_mmu_page* %32)
  br label %67

34:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @VALID_PAGE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call %struct.kvm_mmu_page* @page_header(i32 %58)
  store %struct.kvm_mmu_page* %59, %struct.kvm_mmu_page** %4, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %61 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %62 = call i32 @mmu_sync_children(%struct.kvm_vcpu* %60, %struct.kvm_mmu_page* %61)
  br label %63

63:                                               ; preds = %54, %50, %38
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %35

67:                                               ; preds = %14, %23, %35
  ret void
}

declare dso_local i64 @VALID_PAGE(i32) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @mmu_sync_children(%struct.kvm_vcpu*, %struct.kvm_mmu_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
