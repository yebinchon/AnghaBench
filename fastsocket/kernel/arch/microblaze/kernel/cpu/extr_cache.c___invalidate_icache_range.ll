; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/cpu/extr_cache.c___invalidate_icache_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/cpu/extr_cache.c___invalidate_icache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__invalidate_icache_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 2), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 1), align 8
  %13 = add i64 %11, %12
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @min(i64 %13, i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 8
  %17 = sub nsw i32 %16, 1
  %18 = xor i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %3, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = and i64 %23, %25
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 8
  %28 = sext i32 %27 to i64
  %29 = add i64 %26, %28
  store i64 %29, i64* %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @local_irq_save(i32 %30)
  %32 = call i32 (...) @__disable_icache()
  %33 = load i64, i64* %3, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %43, %10
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %4, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @__invalidate_icache(i32 %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 8
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %35

47:                                               ; preds = %35
  %48 = call i32 (...) @__enable_icache()
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @local_irq_restore(i32 %49)
  br label %51

51:                                               ; preds = %47, %2
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @__disable_icache(...) #1

declare dso_local i32 @__invalidate_icache(i32) #1

declare dso_local i32 @__enable_icache(...) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
