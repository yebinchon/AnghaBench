; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_apic_flat_64.c_physflat_cpu_mask_to_apicid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_apic_flat_64.c_physflat_cpu_mask_to_apicid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@x86_cpu_to_apicid = common dso_local global i32 0, align 4
@BAD_APICID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpumask*)* @physflat_cpu_mask_to_apicid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @physflat_cpu_mask_to_apicid(%struct.cpumask* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %3, align 8
  %5 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %6 = call i32 @cpumask_first(%struct.cpumask* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @x86_cpu_to_apicid, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @per_cpu(i32 %11, i32 %12)
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @BAD_APICID, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @per_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
