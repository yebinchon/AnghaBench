; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_firmware_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_firmware_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.firmware_priv = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"FIRMWARE=%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"TIMEOUT=%i\00", align 1
@loading_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @firmware_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.firmware_priv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.firmware_priv* @dev_get_drvdata(%struct.device* %7)
  store %struct.firmware_priv* %8, %struct.firmware_priv** %6, align 8
  %9 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %10 = load %struct.firmware_priv*, %struct.firmware_priv** %6, align 8
  %11 = getelementptr inbounds %struct.firmware_priv, %struct.firmware_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %20 = load i32, i32* @loading_timeout, align 4
  %21 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %23, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.firmware_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
