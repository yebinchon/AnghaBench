; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_sms-cards.c_sms_board_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_sms-cards.c_sms_board_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.smscore_gpio_config = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unknown SMS board event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sms_board_event(%struct.smscore_device_t* %0, i32 %1) #0 {
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_gpio_config, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @sms_gpio_assign_11xx_default_led_config(%struct.smscore_gpio_config* %5)
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %26 [
    i32 137, label %8
    i32 135, label %9
    i32 136, label %10
    i32 145, label %11
    i32 128, label %12
    i32 129, label %13
    i32 142, label %14
    i32 141, label %15
    i32 140, label %16
    i32 144, label %17
    i32 143, label %18
    i32 130, label %19
    i32 132, label %20
    i32 133, label %21
    i32 134, label %22
    i32 131, label %23
    i32 138, label %24
    i32 139, label %25
  ]

8:                                                ; preds = %2
  br label %28

9:                                                ; preds = %2
  br label %28

10:                                               ; preds = %2
  br label %28

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  br label %28

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  br label %28

15:                                               ; preds = %2
  br label %28

16:                                               ; preds = %2
  br label %28

17:                                               ; preds = %2
  br label %28

18:                                               ; preds = %2
  br label %28

19:                                               ; preds = %2
  br label %28

20:                                               ; preds = %2
  br label %28

21:                                               ; preds = %2
  br label %28

22:                                               ; preds = %2
  br label %28

23:                                               ; preds = %2
  br label %28

24:                                               ; preds = %2
  br label %28

25:                                               ; preds = %2
  br label %28

26:                                               ; preds = %2
  %27 = call i32 @sms_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  ret i32 0
}

declare dso_local i32 @sms_gpio_assign_11xx_default_led_config(%struct.smscore_gpio_config*) #1

declare dso_local i32 @sms_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
