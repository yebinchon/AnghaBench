; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atari_scsi.c_falcon_get_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atari_scsi.c_falcon_get_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@falcon_got_lock = common dso_local global i32 0, align 4
@falcon_fairness_wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Falcon SCSI hasn't ST-DMA lock in interrupt\00", align 1
@falcon_trying_lock = common dso_local global i32 0, align 4
@scsi_falcon_intr = common dso_local global i32 0, align 4
@falcon_try_wait = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Falcon SCSI: someone stole the lock :-(\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @falcon_get_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_get_lock() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @IS_A_TT()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %48

5:                                                ; preds = %0
  %6 = load i64, i64* %1, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  br label %8

8:                                                ; preds = %19, %5
  %9 = call i64 (...) @in_irq()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @falcon_got_lock, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call i64 (...) @stdma_others_waiting()
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %11, %8
  %18 = phi i1 [ false, %11 ], [ false, %8 ], [ %16, %14 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = call i32 @sleep_on(i32* @falcon_fairness_wait)
  br label %8

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* @falcon_got_lock, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = call i64 (...) @in_irq()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* @falcon_trying_lock, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  store i32 1, i32* @falcon_trying_lock, align 4
  %35 = load i32, i32* @scsi_falcon_intr, align 4
  %36 = call i32 @stdma_lock(i32 %35, i32* null)
  store i32 1, i32* @falcon_got_lock, align 4
  store i32 0, i32* @falcon_trying_lock, align 4
  %37 = call i32 @wake_up(i32* @falcon_try_wait)
  br label %40

38:                                               ; preds = %31
  %39 = call i32 @sleep_on(i32* @falcon_try_wait)
  br label %40

40:                                               ; preds = %38, %34
  br label %22

41:                                               ; preds = %22
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @local_irq_restore(i64 %42)
  %44 = load i32, i32* @falcon_got_lock, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %4, %46, %41
  ret void
}

declare dso_local i64 @IS_A_TT(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @in_irq(...) #1

declare dso_local i64 @stdma_others_waiting(...) #1

declare dso_local i32 @sleep_on(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @stdma_lock(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
