; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_drv_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_drv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drv_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drv_cmd*)* @drv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_write(%struct.drv_cmd* %0) #0 {
  %2 = alloca %struct.drv_cmd*, align 8
  %3 = alloca i32, align 4
  store %struct.drv_cmd* %0, %struct.drv_cmd** %2, align 8
  %4 = call i32 (...) @get_cpu()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.drv_cmd*, %struct.drv_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @cpumask_test_cpu(i32 %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.drv_cmd*, %struct.drv_cmd** %2, align 8
  %13 = call i32 @do_drv_write(%struct.drv_cmd* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.drv_cmd*, %struct.drv_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drv_cmd*, %struct.drv_cmd** %2, align 8
  %19 = call i32 @smp_call_function_many(i32 %17, i32 (%struct.drv_cmd*)* @do_drv_write, %struct.drv_cmd* %18, i32 1)
  %20 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @do_drv_write(%struct.drv_cmd*) #1

declare dso_local i32 @smp_call_function_many(i32, i32 (%struct.drv_cmd*)*, %struct.drv_cmd*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
