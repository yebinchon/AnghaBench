; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_sysfs.c_cpuidle_free_state_kobj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_sysfs.c_cpuidle_free_state_kobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_device*, i32)* @cpuidle_free_state_kobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuidle_free_state_kobj(%struct.cpuidle_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %6 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @kobject_put(i32* %12)
  %14 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %15 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @wait_for_completion(i32* %21)
  %23 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %24 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @kfree(%struct.TYPE_2__* %29)
  %31 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %32 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %36, align 8
  ret void
}

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
