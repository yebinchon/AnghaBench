; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_timer_keyup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_timer_keyup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ir_timer_keyup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_timer_keyup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.rc_dev*
  store %struct.rc_dev* %6, %struct.rc_dev** %3, align 8
  %7 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @time_is_before_eq_jiffies(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %18 = call i32 @ir_do_keyup(%struct.rc_dev* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_is_before_eq_jiffies(i32) #1

declare dso_local i32 @ir_do_keyup(%struct.rc_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
