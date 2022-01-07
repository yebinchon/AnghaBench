; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_set_current_accum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_ds2760_battery.c_ds2760_battery_set_current_accum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2760_device_info = type { i32, i32 }

@DS2760_CURRENT_ACCUM_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ACR write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds2760_device_info*, i32)* @ds2760_battery_set_current_accum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds2760_battery_set_current_accum(%struct.ds2760_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ds2760_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  store %struct.ds2760_device_info* %0, %struct.ds2760_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nsw i64 %7, 4
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = udiv i32 %10, 1000
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = lshr i32 %12, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 %18, i8* %19, align 1
  %20 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %21 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %24 = load i32, i32* @DS2760_CURRENT_ACCUM_MSB, align 4
  %25 = call i32 @w1_ds2760_write(i32 %22, i8* %23, i32 %24, i32 2)
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @w1_ds2760_write(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
