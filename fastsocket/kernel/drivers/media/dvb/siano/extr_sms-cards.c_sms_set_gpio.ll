; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_sms-cards.c_sms_set_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_sms-cards.c_sms_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.smscore_config_gpio = type { i32, i32, i32, i32, i32 }

@SMS_GPIO_OUTPUTDRIVING_4mA = common dso_local global i32 0, align 4
@SMS_GPIO_OUTPUTSLEWRATE_FAST = common dso_local global i32 0, align 4
@SMS_GPIO_INPUTCHARACTERISTICS_NORMAL = common dso_local global i32 0, align 4
@SMS_GPIO_PULLUPDOWN_NONE = common dso_local global i32 0, align 4
@SMS_GPIO_DIRECTION_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, i32, i32)* @sms_set_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sms_set_gpio(%struct.smscore_device_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_device_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.smscore_config_gpio, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %11, i32 0, i32 0
  %13 = load i32, i32* @SMS_GPIO_OUTPUTDRIVING_4mA, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %11, i32 0, i32 1
  %15 = load i32, i32* @SMS_GPIO_OUTPUTSLEWRATE_FAST, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %11, i32 0, i32 2
  %17 = load i32, i32* @SMS_GPIO_INPUTCHARACTERISTICS_NORMAL, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %11, i32 0, i32 3
  %19 = load i32, i32* @SMS_GPIO_PULLUPDOWN_NONE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.smscore_config_gpio, %struct.smscore_config_gpio* %11, i32 0, i32 4
  %21 = load i32, i32* @SMS_GPIO_DIRECTION_OUTPUT, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, -1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  store i32 %36, i32* %8, align 4
  br label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @smscore_configure_gpio(%struct.smscore_device_t* %44, i32 %45, %struct.smscore_config_gpio* %11)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %43
  %52 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @smscore_set_gpio(%struct.smscore_device_t* %52, i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %49, %24
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @smscore_configure_gpio(%struct.smscore_device_t*, i32, %struct.smscore_config_gpio*) #1

declare dso_local i32 @smscore_set_gpio(%struct.smscore_device_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
