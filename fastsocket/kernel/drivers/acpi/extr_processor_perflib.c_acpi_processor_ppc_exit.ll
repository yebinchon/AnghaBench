; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_ppc_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_ppc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_processor_ppc_status = common dso_local global i32 0, align 4
@PPC_REGISTERED = common dso_local global i32 0, align 4
@acpi_ppc_notifier_block = common dso_local global i32 0, align 4
@CPUFREQ_POLICY_NOTIFIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_processor_ppc_exit() #0 {
  %1 = load i32, i32* @acpi_processor_ppc_status, align 4
  %2 = load i32, i32* @PPC_REGISTERED, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @CPUFREQ_POLICY_NOTIFIER, align 4
  %7 = call i32 @cpufreq_unregister_notifier(i32* @acpi_ppc_notifier_block, i32 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @PPC_REGISTERED, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* @acpi_processor_ppc_status, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* @acpi_processor_ppc_status, align 4
  ret void
}

declare dso_local i32 @cpufreq_unregister_notifier(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
