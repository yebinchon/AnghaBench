; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_sun4c.c_sun4c_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }

@SUN4C_MAX_CONTEXTS = common dso_local global i32 0, align 4
@sun4c_context_ring = common dso_local global %struct.TYPE_11__* null, align 8
@sun4c_ufree_ring = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@sun4c_ulru_ring = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@sun4c_kernel_ring = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@sun4c_kfree_ring = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sun4c_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4c_init_rings() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %29, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @SUN4C_MAX_CONTEXTS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sun4c_context_ring, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sun4c_context_ring, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sun4c_context_ring, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sun4c_context_ring, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %2

32:                                               ; preds = %2
  store %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sun4c_ufree_ring, i32 0, i32 1), %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sun4c_ufree_ring, i32 0, i32 1, i32 0), align 8
  store %struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sun4c_ufree_ring, i32 0, i32 1), %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sun4c_ufree_ring, i32 0, i32 1, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sun4c_ufree_ring, i32 0, i32 0), align 8
  store %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sun4c_ulru_ring, i32 0, i32 1), %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sun4c_ulru_ring, i32 0, i32 1, i32 0), align 8
  store %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sun4c_ulru_ring, i32 0, i32 1), %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sun4c_ulru_ring, i32 0, i32 1, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sun4c_ulru_ring, i32 0, i32 0), align 8
  store %struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sun4c_kernel_ring, i32 0, i32 1), %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sun4c_kernel_ring, i32 0, i32 1, i32 0), align 8
  store %struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sun4c_kernel_ring, i32 0, i32 1), %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sun4c_kernel_ring, i32 0, i32 1, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sun4c_kernel_ring, i32 0, i32 0), align 8
  store %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sun4c_kfree_ring, i32 0, i32 1), %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sun4c_kfree_ring, i32 0, i32 1, i32 0), align 8
  store %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sun4c_kfree_ring, i32 0, i32 1), %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sun4c_kfree_ring, i32 0, i32 1, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sun4c_kfree_ring, i32 0, i32 0), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
