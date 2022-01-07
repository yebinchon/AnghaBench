; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_regs = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RBX = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@VCPU_REGS_RDX = common dso_local global i32 0, align 4
@VCPU_REGS_RSI = common dso_local global i32 0, align 4
@VCPU_REGS_RDI = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i32 0, align 4
@VCPU_REGS_RBP = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@X86_EFLAGS_RF = common dso_local global i32 0, align 4
@VCPU_REGS_R10 = common dso_local global i32 0, align 4
@VCPU_REGS_R11 = common dso_local global i32 0, align 4
@VCPU_REGS_R12 = common dso_local global i32 0, align 4
@VCPU_REGS_R13 = common dso_local global i32 0, align 4
@VCPU_REGS_R14 = common dso_local global i32 0, align 4
@VCPU_REGS_R15 = common dso_local global i32 0, align 4
@VCPU_REGS_R8 = common dso_local global i32 0, align 4
@VCPU_REGS_R9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_get_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @vcpu_load(%struct.kvm_vcpu* %5)
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = load i32, i32* @VCPU_REGS_RAX, align 4
  %9 = call i8* @kvm_register_read(%struct.kvm_vcpu* %7, i32 %8)
  %10 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %10, i32 0, i32 17
  store i8* %9, i8** %11, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = load i32, i32* @VCPU_REGS_RBX, align 4
  %14 = call i8* @kvm_register_read(%struct.kvm_vcpu* %12, i32 %13)
  %15 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %15, i32 0, i32 16
  store i8* %14, i8** %16, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = load i32, i32* @VCPU_REGS_RCX, align 4
  %19 = call i8* @kvm_register_read(%struct.kvm_vcpu* %17, i32 %18)
  %20 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %20, i32 0, i32 15
  store i8* %19, i8** %21, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load i32, i32* @VCPU_REGS_RDX, align 4
  %24 = call i8* @kvm_register_read(%struct.kvm_vcpu* %22, i32 %23)
  %25 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %25, i32 0, i32 14
  store i8* %24, i8** %26, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = load i32, i32* @VCPU_REGS_RSI, align 4
  %29 = call i8* @kvm_register_read(%struct.kvm_vcpu* %27, i32 %28)
  %30 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %30, i32 0, i32 13
  store i8* %29, i8** %31, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = load i32, i32* @VCPU_REGS_RDI, align 4
  %34 = call i8* @kvm_register_read(%struct.kvm_vcpu* %32, i32 %33)
  %35 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %35, i32 0, i32 12
  store i8* %34, i8** %36, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i32, i32* @VCPU_REGS_RSP, align 4
  %39 = call i8* @kvm_register_read(%struct.kvm_vcpu* %37, i32 %38)
  %40 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %40, i32 0, i32 11
  store i8* %39, i8** %41, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = load i32, i32* @VCPU_REGS_RBP, align 4
  %44 = call i8* @kvm_register_read(%struct.kvm_vcpu* %42, i32 %43)
  %45 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %47)
  %49 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %52, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i32 %53(%struct.kvm_vcpu* %54)
  %56 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %2
  %65 = load i32, i32* @X86_EFLAGS_TF, align 4
  %66 = load i32, i32* @X86_EFLAGS_RF, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %70 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %64, %2
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = call i32 @vcpu_put(%struct.kvm_vcpu* %74)
  ret i32 0
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i8* @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
