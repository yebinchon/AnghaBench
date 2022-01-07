; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_emulate_cpuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_emulate_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_cpuid_entry2 = type { i32, i32, i32, i32 }

@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@VCPU_REGS_RBX = common dso_local global i32 0, align 4
@VCPU_REGS_RDX = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_emulate_cpuid(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_cpuid_entry2*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = load i32, i32* @VCPU_REGS_RAX, align 4
  %8 = call i32 @kvm_register_read(%struct.kvm_vcpu* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = load i32, i32* @VCPU_REGS_RCX, align 4
  %11 = call i32 @kvm_register_read(%struct.kvm_vcpu* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = load i32, i32* @VCPU_REGS_RAX, align 4
  %14 = call i32 @kvm_register_write(%struct.kvm_vcpu* %12, i32 %13, i32 0)
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = load i32, i32* @VCPU_REGS_RBX, align 4
  %17 = call i32 @kvm_register_write(%struct.kvm_vcpu* %15, i32 %16, i32 0)
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = load i32, i32* @VCPU_REGS_RCX, align 4
  %20 = call i32 @kvm_register_write(%struct.kvm_vcpu* %18, i32 %19, i32 0)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = load i32, i32* @VCPU_REGS_RDX, align 4
  %23 = call i32 @kvm_register_write(%struct.kvm_vcpu* %21, i32 %22, i32 0)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %24, i32 %25, i32 %26)
  store %struct.kvm_cpuid_entry2* %27, %struct.kvm_cpuid_entry2** %5, align 8
  %28 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %29 = icmp ne %struct.kvm_cpuid_entry2* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call %struct.kvm_cpuid_entry2* @check_cpuid_limit(%struct.kvm_vcpu* %31, i32 %32, i32 %33)
  store %struct.kvm_cpuid_entry2* %34, %struct.kvm_cpuid_entry2** %5, align 8
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %37 = icmp ne %struct.kvm_cpuid_entry2* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = load i32, i32* @VCPU_REGS_RAX, align 4
  %41 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kvm_register_write(%struct.kvm_vcpu* %39, i32 %40, i32 %43)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %46 = load i32, i32* @VCPU_REGS_RBX, align 4
  %47 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kvm_register_write(%struct.kvm_vcpu* %45, i32 %46, i32 %49)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %52 = load i32, i32* @VCPU_REGS_RCX, align 4
  %53 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kvm_register_write(%struct.kvm_vcpu* %51, i32 %52, i32 %55)
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %58 = load i32, i32* @VCPU_REGS_RDX, align 4
  %59 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %60 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kvm_register_write(%struct.kvm_vcpu* %57, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %38, %35
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %65, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %68 = call i32 %66(%struct.kvm_vcpu* %67)
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %71 = load i32, i32* @VCPU_REGS_RAX, align 4
  %72 = call i32 @kvm_register_read(%struct.kvm_vcpu* %70, i32 %71)
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %74 = load i32, i32* @VCPU_REGS_RBX, align 4
  %75 = call i32 @kvm_register_read(%struct.kvm_vcpu* %73, i32 %74)
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %77 = load i32, i32* @VCPU_REGS_RCX, align 4
  %78 = call i32 @kvm_register_read(%struct.kvm_vcpu* %76, i32 %77)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %80 = load i32, i32* @VCPU_REGS_RDX, align 4
  %81 = call i32 @kvm_register_read(%struct.kvm_vcpu* %79, i32 %80)
  %82 = call i32 @trace_kvm_cpuid(i32 %69, i32 %72, i32 %75, i32 %78, i32 %81)
  ret void
}

declare dso_local i32 @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local %struct.kvm_cpuid_entry2* @check_cpuid_limit(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @trace_kvm_cpuid(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
