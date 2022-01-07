; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_smp.c_octeon_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_smp.c_octeon_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"SMP: Booting CPU%02d (CoreId %2d)...\0A\00", align 1
@octeon_processor_sp = common dso_local global i64 0, align 8
@octeon_processor_gp = common dso_local global i64 0, align 8
@octeon_processor_boot = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Secondary boot timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.task_struct*)* @octeon_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpu_logical_map(i32 %7)
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8)
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call i64 @__KSTK_TOS(%struct.task_struct* %10)
  store i64 %11, i64* @octeon_processor_sp, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = call i64 @task_thread_info(%struct.task_struct* %12)
  store i64 %13, i64* @octeon_processor_gp, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @cpu_logical_map(i32 %14)
  store i32 %15, i32* @octeon_processor_boot, align 4
  %16 = call i32 (...) @mb()
  store i32 10000, i32* %5, align 4
  br label %17

17:                                               ; preds = %25, %2
  %18 = load i64, i64* @octeon_processor_sp, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = call i32 @udelay(i32 1)
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  br label %17

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i64 @__KSTK_TOS(%struct.task_struct*) #1

declare dso_local i64 @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
