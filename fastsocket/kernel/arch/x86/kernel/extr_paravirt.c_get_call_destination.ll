; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_paravirt.c_get_call_destination.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_paravirt.c_get_call_destination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paravirt_patch_template = type { i32, i32, i32, i32, i32, i32, i32 }

@pv_mmu_ops = common dso_local global i32 0, align 4
@pv_apic_ops = common dso_local global i32 0, align 4
@pv_irq_ops = common dso_local global i32 0, align 4
@pv_cpu_ops = common dso_local global i32 0, align 4
@pv_time_ops = common dso_local global i32 0, align 4
@pv_init_ops = common dso_local global i32 0, align 4
@pv_lock_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_call_destination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_call_destination(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.paravirt_patch_template, align 4
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.paravirt_patch_template, %struct.paravirt_patch_template* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.paravirt_patch_template, %struct.paravirt_patch_template* %3, i32 0, i32 1
  %6 = load i32, i32* @pv_mmu_ops, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.paravirt_patch_template, %struct.paravirt_patch_template* %3, i32 0, i32 2
  %8 = load i32, i32* @pv_apic_ops, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.paravirt_patch_template, %struct.paravirt_patch_template* %3, i32 0, i32 3
  %10 = load i32, i32* @pv_irq_ops, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.paravirt_patch_template, %struct.paravirt_patch_template* %3, i32 0, i32 4
  %12 = load i32, i32* @pv_cpu_ops, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.paravirt_patch_template, %struct.paravirt_patch_template* %3, i32 0, i32 5
  %14 = load i32, i32* @pv_time_ops, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.paravirt_patch_template, %struct.paravirt_patch_template* %3, i32 0, i32 6
  %16 = load i32, i32* @pv_init_ops, align 4
  store i32 %16, i32* %15, align 4
  %17 = bitcast %struct.paravirt_patch_template* %3 to i8**
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
