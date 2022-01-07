; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_radix_revmap_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_radix_revmap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_map_entry = type { i32 }
%struct.irq_host = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IRQ_HOST_MAP_TREE = common dso_local global i64 0, align 8
@revmap_trees_allocated = common dso_local global i32 0, align 4
@irq_map = common dso_local global %struct.irq_map_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_radix_revmap_lookup(%struct.irq_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_map_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_host* %0, %struct.irq_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %9 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IRQ_HOST_MAP_TREE, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* @revmap_trees_allocated, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @irq_find_mapping(%struct.irq_host* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %23 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.irq_map_entry* @radix_tree_lookup(i32* %24, i32 %25)
  store %struct.irq_map_entry* %26, %struct.irq_map_entry** %6, align 8
  %27 = load %struct.irq_map_entry*, %struct.irq_map_entry** %6, align 8
  %28 = icmp ne %struct.irq_map_entry* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.irq_map_entry*, %struct.irq_map_entry** %6, align 8
  %31 = load %struct.irq_map_entry*, %struct.irq_map_entry** @irq_map, align 8
  %32 = ptrtoint %struct.irq_map_entry* %30 to i64
  %33 = ptrtoint %struct.irq_map_entry* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %21
  %38 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @irq_find_mapping(%struct.irq_host* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_host*, i32) #1

declare dso_local %struct.irq_map_entry* @radix_tree_lookup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
