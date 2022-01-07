; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_es7000_32.c_es7000_cpu_mask_to_apicid_and.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_es7000_32.c_es7000_cpu_mask_to_apicid_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global %struct.cpumask* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpumask*, %struct.cpumask*)* @es7000_cpu_mask_to_apicid_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es7000_cpu_mask_to_apicid_and(%struct.cpumask* %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %0, %struct.cpumask** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %8 = call i32 @es7000_cpu_to_logical_apicid(i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i32 @alloc_cpumask_var(%struct.cpumask** %7, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %16 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %17 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %18 = call i32 @cpumask_and(%struct.cpumask* %15, %struct.cpumask* %16, %struct.cpumask* %17)
  %19 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %20 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %21 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %22 = call i32 @cpumask_and(%struct.cpumask* %19, %struct.cpumask* %20, %struct.cpumask* %21)
  %23 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %24 = call i32 @es7000_cpu_mask_to_apicid(%struct.cpumask* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %26 = call i32 @free_cpumask_var(%struct.cpumask* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %14, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @es7000_cpu_to_logical_apicid(i32) #1

declare dso_local i32 @alloc_cpumask_var(%struct.cpumask**, i32) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @es7000_cpu_mask_to_apicid(%struct.cpumask*) #1

declare dso_local i32 @free_cpumask_var(%struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
