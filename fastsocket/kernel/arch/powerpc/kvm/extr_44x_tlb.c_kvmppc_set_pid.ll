; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_kvmppc_set_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_kvmppc_set_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kvmppc_vcpu_44x = type { %struct.kvmppc_44x_shadow_ref* }
%struct.kvmppc_44x_shadow_ref = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_set_pid(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvmppc_vcpu_44x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_44x_shadow_ref*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.kvmppc_vcpu_44x* @to_44x(%struct.kvm_vcpu* %8)
  store %struct.kvmppc_vcpu_44x* %9, %struct.kvmppc_vcpu_44x** %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %51

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %48, %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %5, align 8
  %28 = getelementptr inbounds %struct.kvmppc_vcpu_44x, %struct.kvmppc_vcpu_44x* %27, i32 0, i32 0
  %29 = load %struct.kvmppc_44x_shadow_ref*, %struct.kvmppc_44x_shadow_ref** %28, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.kvmppc_44x_shadow_ref* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %5, align 8
  %34 = getelementptr inbounds %struct.kvmppc_vcpu_44x, %struct.kvmppc_vcpu_44x* %33, i32 0, i32 0
  %35 = load %struct.kvmppc_44x_shadow_ref*, %struct.kvmppc_44x_shadow_ref** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.kvmppc_44x_shadow_ref, %struct.kvmppc_44x_shadow_ref* %35, i64 %37
  store %struct.kvmppc_44x_shadow_ref* %38, %struct.kvmppc_44x_shadow_ref** %7, align 8
  %39 = load %struct.kvmppc_44x_shadow_ref*, %struct.kvmppc_44x_shadow_ref** %7, align 8
  %40 = getelementptr inbounds %struct.kvmppc_44x_shadow_ref, %struct.kvmppc_44x_shadow_ref* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @kvmppc_44x_shadow_release(%struct.kvmppc_vcpu_44x* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %25

51:                                               ; preds = %19, %25
  ret void
}

declare dso_local %struct.kvmppc_vcpu_44x* @to_44x(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kvmppc_44x_shadow_ref*) #1

declare dso_local i32 @kvmppc_44x_shadow_release(%struct.kvmppc_vcpu_44x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
