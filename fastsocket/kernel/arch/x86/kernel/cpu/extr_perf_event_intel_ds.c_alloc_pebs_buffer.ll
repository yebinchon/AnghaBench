; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c_alloc_pebs_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c_alloc_pebs_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.debug_store = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.debug_store* }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@PEBS_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alloc_pebs_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_pebs_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.debug_store*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @cpu_hw_events, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.debug_store* @per_cpu(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.debug_store* %12, %struct.debug_store** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %15 = load %struct.debug_store*, %struct.debug_store** %14, align 8
  store %struct.debug_store* %15, %struct.debug_store** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @cpu_to_node(i32 %16)
  store i32 %17, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 1), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

21:                                               ; preds = %1
  %22 = load i32, i32* @PEBS_BUFFER_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @__GFP_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @kmalloc_node(i32 %22, i32 %25, i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %70

37:                                               ; preds = %21
  %38 = load i32, i32* @PEBS_BUFFER_SIZE, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %44 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %46 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %49 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %51 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %59 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %61 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %62, %66
  %68 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %69 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %37, %34, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.debug_store* @per_cpu(i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i8* @kmalloc_node(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
