; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_dispose_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_dispose_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.irq_host* }
%struct.irq_host = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 (%struct.irq_host*, i32)* }
%struct.TYPE_10__ = type { i32 }

@NO_IRQ = common dso_local global i32 0, align 4
@irq_map = common dso_local global %struct.TYPE_9__* null, align 8
@IRQ_HOST_MAP_LEGACY = common dso_local global i32 0, align 4
@revmap_trees_allocated = common dso_local global i32 0, align 4
@revmap_trees_mutex = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_dispose_mapping(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_host*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @NO_IRQ, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %110

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @irq_map, align 8
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.irq_host*, %struct.irq_host** %14, align 8
  store %struct.irq_host* %15, %struct.irq_host** %3, align 8
  %16 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %17 = icmp eq %struct.irq_host* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %21 = icmp eq %struct.irq_host* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  br label %110

23:                                               ; preds = %9
  %24 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %25 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IRQ_HOST_MAP_LEGACY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %110

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @set_irq_chip_and_handler(i32 %31, i32* null, i32* null)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @synchronize_irq(i32 %33)
  %35 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %36 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.irq_host*, i32)*, i32 (%struct.irq_host*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.irq_host*, i32)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %43 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (%struct.irq_host*, i32)*, i32 (%struct.irq_host*, i32)** %45, align 8
  %47 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %48 = load i32, i32* %2, align 4
  %49 = call i32 %46(%struct.irq_host* %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %30
  %51 = call i32 (...) @smp_mb()
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @irq_map, align 8
  %53 = load i32, i32* %2, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %4, align 8
  %58 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %59 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %92 [
    i32 129, label %61
    i32 128, label %79
  ]

61:                                               ; preds = %50
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %64 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %62, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32, i32* @NO_IRQ, align 4
  %71 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %72 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %70, i32* %77, align 4
  br label %78

78:                                               ; preds = %69, %61
  br label %92

79:                                               ; preds = %50
  %80 = call i32 (...) @smp_rmb()
  %81 = load i32, i32* @revmap_trees_allocated, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %92

84:                                               ; preds = %79
  %85 = call i32 @mutex_lock(i32* @revmap_trees_mutex)
  %86 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %87 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @radix_tree_delete(i32* %88, i64 %89)
  %91 = call i32 @mutex_unlock(i32* @revmap_trees_mutex)
  br label %92

92:                                               ; preds = %50, %84, %83, %78
  %93 = call i32 (...) @smp_mb()
  %94 = load %struct.irq_host*, %struct.irq_host** %3, align 8
  %95 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @irq_map, align 8
  %98 = load i32, i32* %2, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i64 %96, i64* %101, align 8
  %102 = load i32, i32* @IRQ_NOREQUEST, align 4
  %103 = load i32, i32* %2, align 4
  %104 = call %struct.TYPE_10__* @get_irq_desc(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @irq_free_virt(i32 %108, i32 1)
  br label %110

110:                                              ; preds = %92, %29, %22, %8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @set_irq_chip_and_handler(i32, i32*, i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_10__* @get_irq_desc(i32) #1

declare dso_local i32 @irq_free_virt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
