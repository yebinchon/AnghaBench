; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_increment_iip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_increment_iip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pt_regs = type { i32, i32 }
%struct.ia64_psr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcpu_increment_iip(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_pt_regs*, align 8
  %4 = alloca %struct.ia64_psr*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu* %5)
  store %struct.kvm_pt_regs* %6, %struct.kvm_pt_regs** %3, align 8
  %7 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %7, i32 0, i32 1
  %9 = bitcast i32* %8 to %struct.ia64_psr*
  store %struct.ia64_psr* %9, %struct.ia64_psr** %4, align 8
  %10 = load %struct.ia64_psr*, %struct.ia64_psr** %4, align 8
  %11 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ia64_psr*, %struct.ia64_psr** %4, align 8
  %16 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* %18, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.ia64_psr*, %struct.ia64_psr** %4, align 8
  %23 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %14
  ret void
}

declare dso_local %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
