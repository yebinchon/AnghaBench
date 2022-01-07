; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_enable_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%sabling the device\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@R592_POWER = common dso_local global i32 0, align 4
@R592_POWER_0 = common dso_local global i32 0, align 4
@R592_POWER_1 = common dso_local global i32 0, align 4
@R592_IO = common dso_local global i32 0, align 4
@R592_IO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r592_device*, i32)* @r592_enable_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_enable_device(%struct.r592_device* %0, i32 %1) #0 {
  %3 = alloca %struct.r592_device*, align 8
  %4 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %9 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %14 = load i32, i32* @R592_POWER, align 4
  %15 = load i32, i32* @R592_POWER_0, align 4
  %16 = load i32, i32* @R592_POWER_1, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @r592_write_reg(%struct.r592_device* %13, i32 %14, i32 %17)
  %19 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %20 = load i32, i32* @R592_IO, align 4
  %21 = load i32, i32* @R592_IO_RESET, align 4
  %22 = call i32 @r592_set_reg_mask(%struct.r592_device* %19, i32 %20, i32 %21)
  %23 = call i32 @msleep(i32 100)
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %26 = load i32, i32* @R592_POWER, align 4
  %27 = call i32 @r592_write_reg(%struct.r592_device* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %24, %12
  ret i32 0
}

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i32 @r592_write_reg(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @r592_set_reg_mask(%struct.r592_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
