; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_gpio_reset_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_gpio_reset_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, i32, i32, i32, i32)* @gpio_reset_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_reset_seq(%struct.cx18* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %35

18:                                               ; preds = %5
  %19 = load %struct.cx18*, %struct.cx18** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, -1
  %23 = call i32 @gpio_update(%struct.cx18* %19, i32 %20, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @msecs_to_jiffies(i32 %24)
  %26 = call i32 @schedule_timeout_uninterruptible(i32 %25)
  %27 = load %struct.cx18*, %struct.cx18** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = xor i32 %29, -1
  %31 = call i32 @gpio_update(%struct.cx18* %27, i32 %28, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @msecs_to_jiffies(i32 %32)
  %34 = call i32 @schedule_timeout_uninterruptible(i32 %33)
  br label %35

35:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @gpio_update(%struct.cx18*, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
