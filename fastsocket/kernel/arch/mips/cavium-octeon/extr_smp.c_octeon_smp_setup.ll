; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_smp.c_octeon_smp_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_smp.c_octeon_smp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_possible_map = common dso_local global i32 0, align 4
@__cpu_number_map = common dso_local global i32* null, align 8
@__cpu_logical_map = common dso_local global i32* null, align 8
@cpu_present_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @octeon_smp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_smp_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @cvmx_get_core_num()
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @octeon_get_boot_coremask()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @cpu_possible_map, align 4
  %8 = call i32 @cpus_clear(i32 %7)
  %9 = load i32*, i32** @__cpu_number_map, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32*, i32** @__cpu_logical_map, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @cpu_possible_map, align 4
  %17 = call i32 @cpu_set(i32 0, i32 %16)
  store i32 1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %48, %0
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @cpu_possible_map, align 4
  %34 = call i32 @cpu_set(i32 %32, i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32*, i32** @__cpu_number_map, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** @__cpu_logical_map, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %31, %25, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load i32, i32* @cpu_possible_map, align 4
  store i32 %52, i32* @cpu_present_map, align 4
  %53 = call i32 (...) @octeon_smp_hotplug_setup()
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @octeon_get_boot_coremask(...) #1

declare dso_local i32 @cpus_clear(i32) #1

declare dso_local i32 @cpu_set(i32, i32) #1

declare dso_local i32 @octeon_smp_hotplug_setup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
