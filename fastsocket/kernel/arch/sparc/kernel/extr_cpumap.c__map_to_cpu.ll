; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_cpumap.c__map_to_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_cpumap.c__map_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cpuinfo_node* }
%struct.cpuinfo_node = type { i32 }

@cpuinfo_tree = common dso_local global %struct.TYPE_2__* null, align 8
@cpu_distribution_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_map_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_map_to_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuinfo_node*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuinfo_tree, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = call i32 (...) @_cpu_map_rebuild()
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuinfo_tree, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @simple_map_to_cpu(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %33

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuinfo_tree, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %21, align 8
  %23 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %22, i64 0
  store %struct.cpuinfo_node* %23, %struct.cpuinfo_node** %4, align 8
  %24 = load i32*, i32** @cpu_distribution_map, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %4, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = urem i32 %25, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %19, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_cpu_map_rebuild(...) #1

declare dso_local i32 @simple_map_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
