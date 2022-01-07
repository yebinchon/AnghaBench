; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_topology.c_cpu_group_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_topology.c_cpu_group_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mask_info = type { %struct.mask_info*, i32 }

@topology_enabled = common dso_local global i32 0, align 4
@machine_has_topology = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mask_info*, i32)* @cpu_group_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_group_map(%struct.mask_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mask_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mask_info* %0, %struct.mask_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @cpus_clear(i32 %7)
  %9 = load i32, i32* @topology_enabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @machine_has_topology, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @cpumask_of_cpu(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %32, %17
  %19 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %20 = icmp ne %struct.mask_info* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %24 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @cpu_isset(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %30 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %21
  %33 = load %struct.mask_info*, %struct.mask_info** %4, align 8
  %34 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %33, i32 0, i32 0
  %35 = load %struct.mask_info*, %struct.mask_info** %34, align 8
  store %struct.mask_info* %35, %struct.mask_info** %4, align 8
  br label %18

36:                                               ; preds = %28, %18
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @cpus_empty(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @cpumask_of_cpu(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @cpus_clear(i32) #1

declare dso_local i32 @cpumask_of_cpu(i32) #1

declare dso_local i64 @cpu_isset(i32, i32) #1

declare dso_local i64 @cpus_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
