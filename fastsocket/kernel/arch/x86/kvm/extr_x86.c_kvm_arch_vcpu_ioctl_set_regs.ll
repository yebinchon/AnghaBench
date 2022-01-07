; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RBX = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@VCPU_REGS_RDX = common dso_local global i32 0, align 4
@VCPU_REGS_RSI = common dso_local global i32 0, align 4
@VCPU_REGS_RDI = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i32 0, align 4
@VCPU_REGS_RBP = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@VCPU_REGS_R10 = common dso_local global i32 0, align 4
@VCPU_REGS_R11 = common dso_local global i32 0, align 4
@VCPU_REGS_R12 = common dso_local global i32 0, align 4
@VCPU_REGS_R13 = common dso_local global i32 0, align 4
@VCPU_REGS_R14 = common dso_local global i32 0, align 4
@VCPU_REGS_R15 = common dso_local global i32 0, align 4
@VCPU_REGS_R8 = common dso_local global i32 0, align 4
@VCPU_REGS_R9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @vcpu_load(%struct.kvm_vcpu* %5)
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = load i32, i32* @VCPU_REGS_RAX, align 4
  %9 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %9, i32 0, i32 17
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kvm_register_write(%struct.kvm_vcpu* %7, i32 %8, i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = load i32, i32* @VCPU_REGS_RBX, align 4
  %15 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %15, i32 0, i32 16
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kvm_register_write(%struct.kvm_vcpu* %13, i32 %14, i32 %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load i32, i32* @VCPU_REGS_RCX, align 4
  %21 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kvm_register_write(%struct.kvm_vcpu* %19, i32 %20, i32 %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = load i32, i32* @VCPU_REGS_RDX, align 4
  %27 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kvm_register_write(%struct.kvm_vcpu* %25, i32 %26, i32 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load i32, i32* @VCPU_REGS_RSI, align 4
  %33 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kvm_register_write(%struct.kvm_vcpu* %31, i32 %32, i32 %35)
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i32, i32* @VCPU_REGS_RDI, align 4
  %39 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kvm_register_write(%struct.kvm_vcpu* %37, i32 %38, i32 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = load i32, i32* @VCPU_REGS_RSP, align 4
  %45 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kvm_register_write(%struct.kvm_vcpu* %43, i32 %44, i32 %47)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = load i32, i32* @VCPU_REGS_RBP, align 4
  %51 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @kvm_register_write(%struct.kvm_vcpu* %49, i32 %50, i32 %53)
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %55, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %61, align 8
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %62(%struct.kvm_vcpu* %63, i32 %66)
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = call i32 @vcpu_put(%struct.kvm_vcpu* %72)
  ret i32 0
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
