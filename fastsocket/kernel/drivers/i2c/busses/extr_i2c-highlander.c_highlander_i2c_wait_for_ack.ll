; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_wait_for_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_wait_for_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.highlander_i2c_dev = type { i32, i64 }

@SMCR = common dso_local global i64 0, align 8
@SMCR_IRIC = common dso_local global i32 0, align 4
@SMCR_ACKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ack abnormality\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.highlander_i2c_dev*)* @highlander_i2c_wait_for_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlander_i2c_wait_for_ack(%struct.highlander_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.highlander_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.highlander_i2c_dev* %0, %struct.highlander_i2c_dev** %3, align 8
  %5 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %6 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SMCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @ioread16(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SMCR_IRIC, align 4
  %13 = load i32, i32* @SMCR_ACKE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @SMCR_ACKE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %20 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %24 = call i32 @highlander_i2c_reset(%struct.highlander_i2c_dev* %23)
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @highlander_i2c_reset(%struct.highlander_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
