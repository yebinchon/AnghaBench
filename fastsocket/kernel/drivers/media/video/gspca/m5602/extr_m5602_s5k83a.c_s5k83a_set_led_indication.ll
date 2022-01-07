; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_set_led_indication.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_set_led_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@M5602_XB_GPIO_DAT = common dso_local global i32 0, align 4
@S5K83A_GPIO_LED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @s5k83a_set_led_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k83a_set_led_indication(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.sd*, %struct.sd** %4, align 8
  %9 = load i32, i32* @M5602_XB_GPIO_DAT, align 4
  %10 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %11 = call i32 @m5602_read_bridge(%struct.sd* %8, i32 %9, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S5K83A_GPIO_LED_MASK, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  br label %32

25:                                               ; preds = %16
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @S5K83A_GPIO_LED_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %19
  %33 = load %struct.sd*, %struct.sd** %4, align 8
  %34 = load i32, i32* @M5602_XB_GPIO_DAT, align 4
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @m5602_write_bridge(%struct.sd* %33, i32 %34, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @m5602_read_bridge(%struct.sd*, i32, i32*) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
