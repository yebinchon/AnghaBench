; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_b.c_led_blink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_b.c_led_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { i32, i32 }

@GREEN_LED = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st5481_adapter*)* @led_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_blink(%struct.st5481_adapter* %0) #0 {
  %2 = alloca %struct.st5481_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %2, align 8
  %4 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = srem i32 %10, 50
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 100
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @GREEN_LED, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %14
  %25 = load i32, i32* @GREEN_LED, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %31 = load i32, i32* @GPIO_OUT, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %30, i32 %31, i32 %32, i32* null, i32* null)
  br label %34

34:                                               ; preds = %29, %13
  ret void
}

declare dso_local i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
