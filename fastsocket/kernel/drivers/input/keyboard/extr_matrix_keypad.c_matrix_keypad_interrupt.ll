; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_matrix_keypad.c_matrix_keypad_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_matrix_keypad.c_matrix_keypad_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix_keypad = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @matrix_keypad_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matrix_keypad_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.matrix_keypad*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.matrix_keypad*
  store %struct.matrix_keypad* %8, %struct.matrix_keypad** %5, align 8
  %9 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %10 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %14 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %19 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ true, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %42

28:                                               ; preds = %22
  %29 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %30 = call i32 @disable_row_irqs(%struct.matrix_keypad* %29)
  %31 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %32 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %34 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %33, i32 0, i32 3
  %35 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %36 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @msecs_to_jiffies(i32 %39)
  %41 = call i32 @schedule_delayed_work(i32* %34, i32 %40)
  br label %42

42:                                               ; preds = %28, %27
  %43 = load %struct.matrix_keypad*, %struct.matrix_keypad** %5, align 8
  %44 = getelementptr inbounds %struct.matrix_keypad, %struct.matrix_keypad* %43, i32 0, i32 1
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @disable_row_irqs(%struct.matrix_keypad*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
