; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acerhdf.c_acerhdf_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acerhdf.c_acerhdf_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { i32 }
%struct.thermal_zone_device = type { i32 }

@cl_dev = common dso_local global %struct.thermal_cooling_device* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"error binding cooling dev\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @acerhdf_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acerhdf_bind(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  %6 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %7 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** @cl_dev, align 8
  %8 = icmp ne %struct.thermal_cooling_device* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

10:                                               ; preds = %2
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %12 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %13 = call i64 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %11, i32 0, %struct.thermal_cooling_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %15, %9
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
