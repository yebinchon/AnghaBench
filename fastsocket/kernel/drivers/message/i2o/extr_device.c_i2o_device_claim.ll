; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_device.c_i2o_device_claim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_device.c_i2o_device_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I2O_CMD_UTIL_CLAIM = common dso_local global i32 0, align 4
@I2O_CLAIM_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"i2o: claim of device %d succeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"i2o: claim of device %d failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_device_claim(%struct.i2o_device* %0) #0 {
  %2 = alloca %struct.i2o_device*, align 8
  %3 = alloca i32, align 4
  store %struct.i2o_device* %0, %struct.i2o_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %5 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %8 = load i32, i32* @I2O_CMD_UTIL_CLAIM, align 4
  %9 = load i32, i32* @I2O_CLAIM_PRIMARY, align 4
  %10 = call i32 @i2o_device_issue_claim(%struct.i2o_device* %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %15 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %21 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %28 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2o_device_issue_claim(%struct.i2o_device*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
