; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_spuctx_switch_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_spuctx_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.spu_context = type { %struct.TYPE_4__, %struct.spu*, i32 }
%struct.TYPE_4__ = type { i64, i32, i64* }
%struct.spu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i32, i64 }
%struct.timespec = type { i32 }

@SPU_UTIL_USER = common dso_local global i32 0, align 4
@cbe_spu_info = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spuctx_switch_state(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.spu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 @ktime_get_ts(%struct.timespec* %7)
  %12 = call i64 @timespec_to_ns(%struct.timespec* %7)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %15 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %13, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %20 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %19, i32 0, i32 2
  %21 = call i32 @mutex_is_locked(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %31 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %30, i32 0, i32 1
  %32 = load %struct.spu*, %struct.spu** %31, align 8
  store %struct.spu* %32, %struct.spu** %8, align 8
  %33 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %34 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %39 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %43 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.spu*, %struct.spu** %8, align 8
  %46 = icmp ne %struct.spu* %45, null
  br i1 %46, label %47, label %101

47:                                               ; preds = %2
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %50 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %48
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.spu*, %struct.spu** %8, align 8
  %60 = getelementptr inbounds %struct.spu, %struct.spu* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %58
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.spu*, %struct.spu** %8, align 8
  %70 = getelementptr inbounds %struct.spu, %struct.spu* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.spu*, %struct.spu** %8, align 8
  %74 = getelementptr inbounds %struct.spu, %struct.spu* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load %struct.spu*, %struct.spu** %8, align 8
  %77 = getelementptr inbounds %struct.spu, %struct.spu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @SPU_UTIL_USER, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %47
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_spu_info, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = call i32 @atomic_dec(i32* %87)
  br label %89

89:                                               ; preds = %82, %47
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @SPU_UTIL_USER, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_spu_info, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @atomic_inc(i32* %98)
  br label %100

100:                                              ; preds = %93, %89
  br label %101

101:                                              ; preds = %100, %2
  ret void
}

declare dso_local i32 @ktime_get_ts(%struct.timespec*) #1

declare dso_local i64 @timespec_to_ns(%struct.timespec*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
