; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c_alloc_bts_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c_alloc_bts_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.debug_store = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.debug_store* }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BTS_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTS_RECORD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alloc_bts_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_bts_buffer(i32 %0) #0 {
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
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load i32, i32* @BTS_BUFFER_SIZE, align 4
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
  br label %72

37:                                               ; preds = %21
  %38 = load i32, i32* @BTS_BUFFER_SIZE, align 4
  %39 = load i32, i32* @BTS_RECORD_SIZE, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %41, 16
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %46 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %48 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %51 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %53 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @BTS_RECORD_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %61 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %63 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @BTS_RECORD_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %64, %68
  %70 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %71 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %37, %34, %20
  %73 = load i32, i32* %2, align 4
  ret i32 %73
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
