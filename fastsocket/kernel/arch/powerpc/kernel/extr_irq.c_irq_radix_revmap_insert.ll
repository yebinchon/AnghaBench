; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_radix_revmap_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_radix_revmap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_host = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IRQ_HOST_MAP_TREE = common dso_local global i64 0, align 8
@revmap_trees_allocated = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4
@revmap_trees_mutex = common dso_local global i32 0, align 4
@irq_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_radix_revmap_insert(%struct.irq_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_host* %0, %struct.irq_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %8 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IRQ_HOST_MAP_TREE, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = call i32 (...) @smp_rmb()
  %15 = load i32, i32* @revmap_trees_allocated, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %34

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NO_IRQ, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = call i32 @mutex_lock(i32* @revmap_trees_mutex)
  %24 = load %struct.irq_host*, %struct.irq_host** %4, align 8
  %25 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** @irq_map, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @radix_tree_insert(i32* %26, i32 %27, i32* %31)
  %33 = call i32 @mutex_unlock(i32* @revmap_trees_mutex)
  br label %34

34:                                               ; preds = %17, %22, %18
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
