; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pda_power.c_polling_timer_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pda_power.c_polling_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"polling...\0A\00", align 1
@ac_irq = common dso_local global i32 0, align 4
@new_ac_status = common dso_local global i64 0, align 8
@ac_status = common dso_local global i64 0, align 8
@PDA_PSY_TO_CHANGE = common dso_local global i64 0, align 8
@usb_irq = common dso_local global i32 0, align 4
@new_usb_status = common dso_local global i64 0, align 8
@usb_status = common dso_local global i64 0, align 8
@polling_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@pdata = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @polling_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @polling_timer_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @dev, align 4
  %5 = call i32 @dev_dbg(i32 %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @update_status()
  %7 = load i32, i32* @ac_irq, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @new_ac_status, align 8
  %11 = load i64, i64* @ac_status, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @PDA_PSY_TO_CHANGE, align 8
  store i64 %14, i64* @ac_status, align 8
  store i32 1, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %9, %1
  %16 = load i32, i32* @usb_irq, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @new_usb_status, align 8
  %20 = load i64, i64* @usb_status, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @PDA_PSY_TO_CHANGE, align 8
  store i64 %23, i64* @usb_status, align 8
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %18, %15
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @psy_changed()
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdata, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @msecs_to_jiffies(i32 %33)
  %35 = add nsw i64 %30, %34
  %36 = call i32 @mod_timer(i32* @polling_timer, i64 %35)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @update_status(...) #1

declare dso_local i32 @psy_changed(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
