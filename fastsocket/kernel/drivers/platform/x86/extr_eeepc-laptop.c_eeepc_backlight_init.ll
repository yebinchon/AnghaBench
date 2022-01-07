; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_backlight_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }

@EEEPC_HOTK_FILE = common dso_local global i32 0, align 4
@eeepcbl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not register eeepc backlight device\0A\00", align 1
@eeepc_backlight_device = common dso_local global %struct.backlight_device* null, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @eeepc_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_backlight_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @EEEPC_HOTK_FILE, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.backlight_device* @backlight_device_register(i32 %5, %struct.device* %6, i32* null, i32* @eeepcbl_ops)
  store %struct.backlight_device* %7, %struct.backlight_device** %4, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %9 = call i64 @IS_ERR(%struct.backlight_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.backlight_device* null, %struct.backlight_device** @eeepc_backlight_device, align 8
  %13 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.backlight_device* %13)
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  store %struct.backlight_device* %16, %struct.backlight_device** @eeepc_backlight_device, align 8
  %17 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 15, i32* %19, align 4
  %20 = call i32 @read_brightness(i32* null)
  %21 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %22 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %25 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %29 = call i32 @backlight_update_status(%struct.backlight_device* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %15, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.backlight_device* @backlight_device_register(i32, %struct.device*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @read_brightness(i32*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
