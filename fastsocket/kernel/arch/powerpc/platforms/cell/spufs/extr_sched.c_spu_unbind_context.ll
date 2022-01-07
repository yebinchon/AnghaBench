; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_unbind_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_unbind_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.spu = type { i64, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i64, i64, i64, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.spu_context = type { i32, i32*, %struct.TYPE_9__, i32*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@spu_unbind_context__enter = common dso_local global i32 0, align 4
@SPU_UTIL_SYSTEM = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@cbe_spu_info = common dso_local global %struct.TYPE_10__* null, align 8
@SWITCH_LOG_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@SPU_STATE_SAVED = common dso_local global i32 0, align 4
@spu_backing_ops = common dso_local global i32 0, align 4
@SPU_UTIL_IDLE_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu*, %struct.spu_context*)* @spu_unbind_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_unbind_context(%struct.spu* %0, %struct.spu_context* %1) #0 {
  %3 = alloca %struct.spu*, align 8
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i32, align 4
  store %struct.spu* %0, %struct.spu** %3, align 8
  store %struct.spu_context* %1, %struct.spu_context** %4, align 8
  %6 = load i32, i32* @spu_unbind_context__enter, align 4
  %7 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %8 = load %struct.spu*, %struct.spu** %3, align 8
  %9 = call i32 @spu_context_trace(i32 %6, %struct.spu_context* %7, %struct.spu* %8)
  %10 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %11 = load i32, i32* @SPU_UTIL_SYSTEM, align 4
  %12 = call i32 @spuctx_switch_state(%struct.spu_context* %10, i32 %11)
  %13 = load %struct.spu*, %struct.spu** %3, align 8
  %14 = getelementptr inbounds %struct.spu, %struct.spu* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cbe_spu_info, align 8
  %23 = load %struct.spu*, %struct.spu** %3, align 8
  %24 = getelementptr inbounds %struct.spu, %struct.spu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = call i32 @atomic_dec(i32* %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %31 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %30, i32 0, i32 6
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %36 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %35, i32 0, i32 6
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @atomic_dec_if_positive(i32* %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.spu*, %struct.spu** %3, align 8
  %42 = call i32 @spu_switch_notify(%struct.spu* %41, i32* null)
  %43 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %44 = call i32 @spu_unmap_mappings(%struct.spu_context* %43)
  %45 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %46 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %45, i32 0, i32 5
  %47 = load %struct.spu*, %struct.spu** %3, align 8
  %48 = call i32 @spu_save(i32* %46, %struct.spu* %47)
  %49 = load %struct.spu*, %struct.spu** %3, align 8
  %50 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %51 = load i32, i32* @SWITCH_LOG_STOP, align 4
  %52 = call i32 @spu_switch_log_notify(%struct.spu* %49, %struct.spu_context* %50, i32 %51, i32 0)
  %53 = load %struct.spu*, %struct.spu** %3, align 8
  %54 = getelementptr inbounds %struct.spu, %struct.spu* %53, i32 0, i32 2
  %55 = call i32 @spin_lock_irq(i32* %54)
  %56 = load i32, i32* @jiffies, align 4
  %57 = load %struct.spu*, %struct.spu** %3, align 8
  %58 = getelementptr inbounds %struct.spu, %struct.spu* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @SPU_STATE_SAVED, align 4
  %60 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %61 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.spu*, %struct.spu** %3, align 8
  %63 = getelementptr inbounds %struct.spu, %struct.spu* %62, i32 0, i32 10
  store i32* null, i32** %63, align 8
  %64 = load %struct.spu*, %struct.spu** %3, align 8
  %65 = getelementptr inbounds %struct.spu, %struct.spu* %64, i32 0, i32 9
  store i32* null, i32** %65, align 8
  %66 = load %struct.spu*, %struct.spu** %3, align 8
  %67 = getelementptr inbounds %struct.spu, %struct.spu* %66, i32 0, i32 8
  store i32* null, i32** %67, align 8
  %68 = load %struct.spu*, %struct.spu** %3, align 8
  %69 = getelementptr inbounds %struct.spu, %struct.spu* %68, i32 0, i32 7
  store i32* null, i32** %69, align 8
  %70 = load %struct.spu*, %struct.spu** %3, align 8
  %71 = getelementptr inbounds %struct.spu, %struct.spu* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load %struct.spu*, %struct.spu** %3, align 8
  %73 = getelementptr inbounds %struct.spu, %struct.spu* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %75 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %74, i32 0, i32 3
  store i32* @spu_backing_ops, i32** %75, align 8
  %76 = load %struct.spu*, %struct.spu** %3, align 8
  %77 = getelementptr inbounds %struct.spu, %struct.spu* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.spu*, %struct.spu** %3, align 8
  %79 = getelementptr inbounds %struct.spu, %struct.spu* %78, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %79, align 8
  %80 = load %struct.spu*, %struct.spu** %3, align 8
  %81 = getelementptr inbounds %struct.spu, %struct.spu* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load %struct.spu*, %struct.spu** %3, align 8
  %84 = call i32 @spu_associate_mm(%struct.spu* %83, i32* null)
  %85 = load %struct.spu*, %struct.spu** %3, align 8
  %86 = getelementptr inbounds %struct.spu, %struct.spu* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %90 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %88, %92
  %94 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %95 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %93
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  %101 = load %struct.spu*, %struct.spu** %3, align 8
  %102 = getelementptr inbounds %struct.spu, %struct.spu* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %106 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %104, %108
  %110 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %111 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %109
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 8
  %117 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %118 = load i32, i32* @SPU_UTIL_IDLE_LOADED, align 4
  %119 = call i32 @spuctx_switch_state(%struct.spu_context* %117, i32 %118)
  %120 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %121 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %123 = call i64 @spu_stopped(%struct.spu_context* %122, i32* %5)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %40
  %126 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %127 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %126, i32 0, i32 0
  %128 = call i32 @wake_up_all(i32* %127)
  br label %129

129:                                              ; preds = %125, %40
  ret void
}

declare dso_local i32 @spu_context_trace(i32, %struct.spu_context*, %struct.spu*) #1

declare dso_local i32 @spuctx_switch_state(%struct.spu_context*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_dec_if_positive(i32*) #1

declare dso_local i32 @spu_switch_notify(%struct.spu*, i32*) #1

declare dso_local i32 @spu_unmap_mappings(%struct.spu_context*) #1

declare dso_local i32 @spu_save(i32*, %struct.spu*) #1

declare dso_local i32 @spu_switch_log_notify(%struct.spu*, %struct.spu_context*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spu_associate_mm(%struct.spu*, i32*) #1

declare dso_local i64 @spu_stopped(%struct.spu_context*, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
