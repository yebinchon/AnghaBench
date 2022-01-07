; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x.c_kvmppc_core_vcpu_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x.c_kvmppc_core_vcpu_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm = type { i32 }
%struct.kvmppc_vcpu_44x = type { %struct.kvm_vcpu }

@kvm_vcpu_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_vcpu* @kvmppc_core_vcpu_create(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_vcpu_44x*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @kvm_vcpu_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.kvmppc_vcpu_44x* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.kvmppc_vcpu_44x* %11, %struct.kvmppc_vcpu_44x** %6, align 8
  %12 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %6, align 8
  %13 = icmp ne %struct.kvmppc_vcpu_44x* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %6, align 8
  %19 = getelementptr inbounds %struct.kvmppc_vcpu_44x, %struct.kvmppc_vcpu_44x* %18, i32 0, i32 0
  store %struct.kvm_vcpu* %19, %struct.kvm_vcpu** %7, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @kvm_vcpu_init(%struct.kvm_vcpu* %20, %struct.kvm* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %29

27:                                               ; preds = %17
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_vcpu* %28, %struct.kvm_vcpu** %3, align 8
  br label %36

29:                                               ; preds = %26
  %30 = load i32, i32* @kvm_vcpu_cache, align 4
  %31 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %6, align 8
  %32 = call i32 @kmem_cache_free(i32 %30, %struct.kvmppc_vcpu_44x* %31)
  br label %33

33:                                               ; preds = %29, %14
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.kvm_vcpu* @ERR_PTR(i32 %34)
  store %struct.kvm_vcpu* %35, %struct.kvm_vcpu** %3, align 8
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %37
}

declare dso_local %struct.kvmppc_vcpu_44x* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu*, %struct.kvm*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kvmppc_vcpu_44x*) #1

declare dso_local %struct.kvm_vcpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
