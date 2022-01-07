; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_priv1_mmio.c_cpu_affinity_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_priv1_mmio.c_cpu_affinity_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cpumask = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu*, i32)* @cpu_affinity_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_affinity_set(%struct.spu* %0, i32 %1) #0 {
  %3 = alloca %struct.spu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca %struct.cpumask*, align 8
  store %struct.spu* %0, %struct.spu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.spu*, %struct.spu** %3, align 8
  %10 = getelementptr inbounds %struct.spu, %struct.spu* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @nr_cpus_node(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.spu*, %struct.spu** %3, align 8
  %16 = getelementptr inbounds %struct.spu, %struct.spu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.cpumask* @cpumask_of_node(i32 %17)
  store %struct.cpumask* %18, %struct.cpumask** %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cpu_to_node(i32 %19)
  %21 = call %struct.cpumask* @cpumask_of_node(i32 %20)
  store %struct.cpumask* %21, %struct.cpumask** %8, align 8
  %22 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %23 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %24 = call i32 @cpumask_intersects(%struct.cpumask* %22, %struct.cpumask* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %45

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @iic_get_target_id(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 48
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 32
  %35 = or i32 %32, %34
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.spu*, %struct.spu** %3, align 8
  %40 = getelementptr inbounds %struct.spu, %struct.spu* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @out_be64(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %28, %26
  ret void
}

declare dso_local i64 @nr_cpus_node(i32) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @cpumask_intersects(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @iic_get_target_id(i32) #1

declare dso_local i32 @out_be64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
