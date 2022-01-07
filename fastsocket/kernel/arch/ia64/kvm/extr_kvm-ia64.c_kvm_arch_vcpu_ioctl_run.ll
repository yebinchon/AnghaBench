; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_ioctl_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_ioctl_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i64, i64, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.kvm_run = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SIG_SETMASK = common dso_local global i32 0, align 4
@KVM_MP_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@KVM_REQ_UNHALT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_run(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i32 @vcpu_load(%struct.kvm_vcpu* %7)
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @SIG_SETMASK, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 6
  %17 = call i32 @sigprocmask(i32 %14, i32* %16, i32* %6)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KVM_MP_STATE_UNINITIALIZED, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call i32 @kvm_vcpu_block(%struct.kvm_vcpu* %29)
  %31 = load i32, i32* @KVM_REQ_UNHALT, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 4
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %61

37:                                               ; preds = %18
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32 %45, i32 %49, i32 8)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i32 @kvm_set_mmio_data(%struct.kvm_vcpu* %51)
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %42, %37
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %60 = call i32 @__vcpu_run(%struct.kvm_vcpu* %58, %struct.kvm_run* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %28
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @SIG_SETMASK, align 4
  %68 = call i32 @sigprocmask(i32 %67, i32* %6, i32* null)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %71 = call i32 @vcpu_put(%struct.kvm_vcpu* %70)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kvm_vcpu_block(%struct.kvm_vcpu*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kvm_set_mmio_data(%struct.kvm_vcpu*) #1

declare dso_local i32 @__vcpu_run(%struct.kvm_vcpu*, %struct.kvm_run*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
