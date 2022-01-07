; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_emulate_hypercall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_emulate_hypercall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RBX = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@VCPU_REGS_RDX = common dso_local global i32 0, align 4
@VCPU_REGS_RSI = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@KVM_EPERM = common dso_local global i64 0, align 8
@KVM_ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_emulate_hypercall(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = load i32, i32* @VCPU_REGS_RAX, align 4
  %12 = call i64 @kvm_register_read(%struct.kvm_vcpu* %10, i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = load i32, i32* @VCPU_REGS_RBX, align 4
  %15 = call i64 @kvm_register_read(%struct.kvm_vcpu* %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = load i32, i32* @VCPU_REGS_RCX, align 4
  %18 = call i64 @kvm_register_read(%struct.kvm_vcpu* %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = load i32, i32* @VCPU_REGS_RDX, align 4
  %21 = call i64 @kvm_register_read(%struct.kvm_vcpu* %19, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = load i32, i32* @VCPU_REGS_RSI, align 4
  %24 = call i64 @kvm_register_read(%struct.kvm_vcpu* %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @trace_kvm_hypercall(i64 %25, i64 %26, i64 %27, i64 %28, i64 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = call i32 @is_long_mode(%struct.kvm_vcpu* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %1
  %35 = load i64, i64* %3, align 8
  %36 = and i64 %35, 4294967295
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = and i64 %37, 4294967295
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = and i64 %39, 4294967295
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %41, 4294967295
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = and i64 %43, 4294967295
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %34, %1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %47, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = call i64 %48(%struct.kvm_vcpu* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* @KVM_EPERM, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %8, align 8
  br label %70

55:                                               ; preds = %45
  %56 = load i64, i64* %3, align 8
  switch i64 %56, label %66 [
    i64 128, label %57
    i64 129, label %58
  ]

57:                                               ; preds = %55
  store i64 0, i64* %8, align 8
  br label %69

58:                                               ; preds = %55
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @hc_gpa(%struct.kvm_vcpu* %61, i64 %62, i64 %63)
  %65 = call i32 @kvm_pv_mmu_op(%struct.kvm_vcpu* %59, i64 %60, i32 %64, i64* %8)
  store i32 %65, i32* %9, align 4
  br label %69

66:                                               ; preds = %55
  %67 = load i64, i64* @KVM_ENOSYS, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %66, %58, %57
  br label %70

70:                                               ; preds = %69, %52
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %72 = load i32, i32* @VCPU_REGS_RAX, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @kvm_register_write(%struct.kvm_vcpu* %71, i32 %72, i64 %73)
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i64 @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_hypercall(i64, i64, i64, i64, i64) #1

declare dso_local i32 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pv_mmu_op(%struct.kvm_vcpu*, i64, i32, i64*) #1

declare dso_local i32 @hc_gpa(%struct.kvm_vcpu*, i64, i64) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
