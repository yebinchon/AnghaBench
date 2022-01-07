; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_kvm_do_resume_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_kvm_do_resume_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@KVM_REQ_RESUME = common dso_local global i32 0, align 4
@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4
@KVM_REQ_PTC_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @kvm_do_resume_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_do_resume_op(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %4 = call i32 @vmm_sanity_check(%struct.kvm_vcpu* %3)
  %5 = load i32, i32* @KVM_REQ_RESUME, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 1
  %8 = call i64 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = call i32 @vcpu_do_resume(%struct.kvm_vcpu* %11)
  br label %45

13:                                               ; preds = %1
  %14 = load i32, i32* @KVM_REQ_TLB_FLUSH, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = call i64 @test_and_clear_bit(i32 %14, i32* %16)
  %18 = call i64 @unlikely(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = call i32 @thash_purge_all(%struct.kvm_vcpu* %21)
  br label %45

23:                                               ; preds = %13
  %24 = load i32, i32* @KVM_REQ_PTC_G, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 1
  %27 = call i64 @test_and_clear_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %36, %29
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = call i32 @ptc_ga_remote_func(%struct.kvm_vcpu* %37, i64 %42)
  br label %30

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %10, %20, %44, %23
  ret void
}

declare dso_local i32 @vmm_sanity_check(%struct.kvm_vcpu*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @vcpu_do_resume(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @thash_purge_all(%struct.kvm_vcpu*) #1

declare dso_local i32 @ptc_ga_remote_func(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
