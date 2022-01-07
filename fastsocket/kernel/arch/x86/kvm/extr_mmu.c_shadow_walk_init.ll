; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_shadow_walk_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_shadow_walk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_shadow_walk_iterator = type { i32, i64, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32*, i32 }

@PT32E_ROOT_LEVEL = common dso_local global i64 0, align 8
@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_shadow_walk_iterator*, %struct.kvm_vcpu*, i32)* @shadow_walk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shadow_walk_init(%struct.kvm_shadow_walk_iterator* %0, %struct.kvm_vcpu* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_shadow_walk_iterator*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_shadow_walk_iterator* %0, %struct.kvm_shadow_walk_iterator** %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PT32E_ROOT_LEVEL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %3
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 30
  %37 = and i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %44 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %53 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %29
  %57 = load %struct.kvm_shadow_walk_iterator*, %struct.kvm_shadow_walk_iterator** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_shadow_walk_iterator, %struct.kvm_shadow_walk_iterator* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %29
  br label %60

60:                                               ; preds = %59, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
