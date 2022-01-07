; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_rc_repeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_rc_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i64, i32, i32, i32, i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IR_KEYPRESS_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc_repeat(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %4 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EV_MSC, align 4
  %12 = load i32, i32* @MSC_SCAN, align 4
  %13 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @input_event(i32 %10, i32 %11, i32 %12, i32 %15)
  %17 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %35

22:                                               ; preds = %1
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i32, i32* @IR_KEYPRESS_TIMEOUT, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %28 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %30 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %29, i32 0, i32 2
  %31 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %32 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @mod_timer(i32* %30, i64 %33)
  br label %35

35:                                               ; preds = %22, %21
  %36 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %37 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
