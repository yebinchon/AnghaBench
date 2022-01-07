; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmcs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmcs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs = type { i32 }

@vmxarea = common dso_local global i32 0, align 4
@vmm_exclusive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmcs*)* @vmcs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmcs_init(%struct.vmcs* %0) #0 {
  %2 = alloca %struct.vmcs*, align 8
  %3 = alloca i32, align 4
  store %struct.vmcs* %0, %struct.vmcs** %2, align 8
  %4 = load i32, i32* @vmxarea, align 4
  %5 = call i32 (...) @raw_smp_processor_id()
  %6 = call i32 @per_cpu(i32 %4, i32 %5)
  %7 = call i32 @__pa(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @vmm_exclusive, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @kvm_cpu_vmxon(i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.vmcs*, %struct.vmcs** %2, align 8
  %15 = call i32 @vmcs_clear(%struct.vmcs* %14)
  %16 = load i32, i32* @vmm_exclusive, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @kvm_cpu_vmxoff()
  br label %20

20:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @per_cpu(i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @kvm_cpu_vmxon(i32) #1

declare dso_local i32 @vmcs_clear(%struct.vmcs*) #1

declare dso_local i32 @kvm_cpu_vmxoff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
