; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-kirkwood/extr_cpuidle.c_kirkwood_enter_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-kirkwood/extr_cpuidle.c_kirkwood_enter_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32 }
%struct.timeval = type { i32, i32 }

@DDR_OPERATION_BASE = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_state*)* @kirkwood_enter_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_enter_idle(%struct.cpuidle_device* %0, %struct.cpuidle_state* %1) #0 {
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca %struct.cpuidle_state*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  store %struct.cpuidle_state* %1, %struct.cpuidle_state** %4, align 8
  %8 = call i32 (...) @local_irq_disable()
  %9 = call i32 @do_gettimeofday(%struct.timeval* %5)
  %10 = load %struct.cpuidle_state*, %struct.cpuidle_state** %4, align 8
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %12 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %11, i32 0, i32 0
  %13 = load %struct.cpuidle_state*, %struct.cpuidle_state** %12, align 8
  %14 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %13, i64 0
  %15 = icmp eq %struct.cpuidle_state* %10, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @cpu_do_idle()
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.cpuidle_state*, %struct.cpuidle_state** %4, align 8
  %20 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %21 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %20, i32 0, i32 0
  %22 = load %struct.cpuidle_state*, %struct.cpuidle_state** %21, align 8
  %23 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %22, i64 1
  %24 = icmp eq %struct.cpuidle_state* %19, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @DDR_OPERATION_BASE, align 4
  %27 = call i32 @writel(i32 7, i32 %26)
  %28 = call i32 (...) @cpu_do_idle()
  br label %29

29:                                               ; preds = %25, %18
  br label %30

30:                                               ; preds = %29, %16
  %31 = call i32 @do_gettimeofday(%struct.timeval* %6)
  %32 = call i32 (...) @local_irq_enable()
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %34, %36
  %38 = load i32, i32* @USEC_PER_SEC, align 4
  %39 = mul nsw i32 %37, %38
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %41, %43
  %45 = add nsw i32 %39, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @cpu_do_idle(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
