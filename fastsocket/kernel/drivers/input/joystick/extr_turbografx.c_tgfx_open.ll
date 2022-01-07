; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_turbografx.c_tgfx_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_turbografx.c_tgfx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.tgfx = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TGFX_REFRESH_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @tgfx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgfx_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.tgfx*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.tgfx* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.tgfx* %7, %struct.tgfx** %4, align 8
  %8 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %9 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock_interruptible(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %17 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %23 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @parport_claim(%struct.TYPE_2__* %24)
  %26 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %27 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @parport_write_control(i32 %30, i32 4)
  %32 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %33 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %32, i32 0, i32 1
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* @TGFX_REFRESH_TIME, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @mod_timer(i32* %33, i64 %36)
  br label %38

38:                                               ; preds = %21, %15
  %39 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %40 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.tgfx* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @parport_claim(%struct.TYPE_2__*) #1

declare dso_local i32 @parport_write_control(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
