; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"switching to serial mode\00", align 1
@R592_IO_MODE = common dso_local global i32 0, align 4
@R592_IO_MODE_SERIAL = common dso_local global i32 0, align 4
@R592_POWER = common dso_local global i32 0, align 4
@R592_POWER_20 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"switching to parallel mode\00", align 1
@R592_IO = common dso_local global i32 0, align 4
@R592_IO_SERIAL1 = common dso_local global i32 0, align 4
@R592_IO_SERIAL2 = common dso_local global i32 0, align 4
@R592_IO_MODE_PARALLEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r592_device*, i32)* @r592_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_set_mode(%struct.r592_device* %0, i32 %1) #0 {
  %3 = alloca %struct.r592_device*, align 8
  %4 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %10 = load i32, i32* @R592_IO_MODE, align 4
  %11 = load i32, i32* @R592_IO_MODE_SERIAL, align 4
  %12 = call i32 @r592_write_reg(%struct.r592_device* %9, i32 %10, i32 %11)
  %13 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %14 = load i32, i32* @R592_POWER, align 4
  %15 = load i32, i32* @R592_POWER_20, align 4
  %16 = call i32 @r592_clear_reg_mask(%struct.r592_device* %13, i32 %14, i32 %15)
  br label %33

17:                                               ; preds = %2
  %18 = call i32 @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %20 = load i32, i32* @R592_POWER, align 4
  %21 = load i32, i32* @R592_POWER_20, align 4
  %22 = call i32 @r592_set_reg_mask(%struct.r592_device* %19, i32 %20, i32 %21)
  %23 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %24 = load i32, i32* @R592_IO, align 4
  %25 = load i32, i32* @R592_IO_SERIAL1, align 4
  %26 = load i32, i32* @R592_IO_SERIAL2, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @r592_clear_reg_mask(%struct.r592_device* %23, i32 %24, i32 %27)
  %29 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %30 = load i32, i32* @R592_IO_MODE, align 4
  %31 = load i32, i32* @R592_IO_MODE_PARALLEL, align 4
  %32 = call i32 @r592_write_reg(%struct.r592_device* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %17, %7
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %36 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret i32 0
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @r592_write_reg(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_clear_reg_mask(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_set_reg_mask(%struct.r592_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
