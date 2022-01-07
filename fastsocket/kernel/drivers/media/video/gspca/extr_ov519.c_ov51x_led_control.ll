; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov51x_led_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov51x_led_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i64 }

@R511_SYS_LED_CTL = common dso_local global i32 0, align 4
@R518_GPIO_OUT = common dso_local global i32 0, align 4
@OV519_GPIO_DATA_OUT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32)* @ov51x_led_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_led_control(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sd*, %struct.sd** %3, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %34 [
    i32 131, label %18
    i32 130, label %23
    i32 129, label %23
    i32 128, label %29
  ]

18:                                               ; preds = %14
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = load i32, i32* @R511_SYS_LED_CTL, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @reg_w(%struct.sd* %19, i32 %20, i32 %21)
  br label %34

23:                                               ; preds = %14, %14
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = load i32, i32* @R518_GPIO_OUT, align 4
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 2, %26
  %28 = call i32 @reg_w_mask(%struct.sd* %24, i32 %25, i32 %27, i32 2)
  br label %34

29:                                               ; preds = %14
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = load i32, i32* @OV519_GPIO_DATA_OUT0, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @reg_w_mask(%struct.sd* %30, i32 %31, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %14, %29, %23, %18
  ret void
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
