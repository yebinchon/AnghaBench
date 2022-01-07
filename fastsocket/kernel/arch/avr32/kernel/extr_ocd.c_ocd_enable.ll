; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_ocd.c_ocd_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_ocd.c_ocd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"ocd_enable: child=%s [%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ocd_enable (no child)\0A\00", align 1
@TIF_DEBUG = common dso_local global i32 0, align 4
@ocd_lock = common dso_local global i32 0, align 4
@ocd_count = common dso_local global i32 0, align 4
@DC = common dso_local global i32 0, align 4
@OCD_DC_MM_BIT = common dso_local global i32 0, align 4
@OCD_DC_DBE_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocd_enable(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = icmp ne %struct.task_struct* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  br label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %6
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = load i32, i32* @TIF_DEBUG, align 4
  %22 = call i32 @test_and_set_tsk_thread_flag(%struct.task_struct* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %19, %16
  %25 = call i32 @spin_lock(i32* @ocd_lock)
  %26 = load i32, i32* @ocd_count, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @ocd_count, align 4
  %28 = load i32, i32* @DC, align 4
  %29 = call i32 @ocd_read(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @OCD_DC_MM_BIT, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* @OCD_DC_DBE_BIT, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @DC, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ocd_write(i32 %37, i32 %38)
  %40 = call i32 @spin_unlock(i32* @ocd_lock)
  br label %41

41:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @test_and_set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocd_read(i32) #1

declare dso_local i32 @ocd_write(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
