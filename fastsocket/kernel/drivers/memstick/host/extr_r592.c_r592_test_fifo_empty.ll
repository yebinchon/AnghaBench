; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_test_fifo_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_test_fifo_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32 }

@R592_REG_MSC = common dso_local global i32 0, align 4
@R592_REG_MSC_FIFO_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"FIFO not ready, trying to reset the device\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"FIFO still not ready, giving up\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r592_device*)* @r592_test_fifo_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_test_fifo_empty(%struct.r592_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r592_device*, align 8
  store %struct.r592_device* %0, %struct.r592_device** %3, align 8
  %4 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %5 = load i32, i32* @R592_REG_MSC, align 4
  %6 = call i32 @r592_read_reg(%struct.r592_device* %4, i32 %5)
  %7 = load i32, i32* @R592_REG_MSC_FIFO_EMPTY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = call i32 @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %14 = call i32 @r592_host_reset(%struct.r592_device* %13)
  %15 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %16 = load i32, i32* @R592_REG_MSC, align 4
  %17 = call i32 @r592_read_reg(%struct.r592_device* %15, i32 %16)
  %18 = load i32, i32* @R592_REG_MSC_FIFO_EMPTY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %26

22:                                               ; preds = %11
  %23 = call i32 @message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %21, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @r592_read_reg(%struct.r592_device*, i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @r592_host_reset(%struct.r592_device*) #1

declare dso_local i32 @message(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
