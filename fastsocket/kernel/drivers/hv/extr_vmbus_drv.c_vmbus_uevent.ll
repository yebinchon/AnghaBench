; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.hv_device = type { i32 }

@VMBUS_ALIAS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MODALIAS=vmbus:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @vmbus_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.hv_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.hv_device* @device_to_hv_device(%struct.device* %9)
  store %struct.hv_device* %10, %struct.hv_device** %5, align 8
  %11 = load i32, i32* @VMBUS_ALIAS_LEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %17 = call i32 @print_alias_name(%struct.hv_device* %16, i8* %15)
  %18 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %19 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %21)
  ret i32 %20
}

declare dso_local %struct.hv_device* @device_to_hv_device(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @print_alias_name(%struct.hv_device*, i8*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
