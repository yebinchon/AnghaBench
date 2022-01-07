; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_device.c_i2o_device_claim_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_device.c_i2o_device_claim_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I2O_CMD_UTIL_RELEASE = common dso_local global i32 0, align 4
@I2O_CLAIM_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"i2o: claim release of device %d succeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"i2o: claim release of device %d failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_device_claim_release(%struct.i2o_device* %0) #0 {
  %2 = alloca %struct.i2o_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i2o_device* %0, %struct.i2o_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %6 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %13 = load i32, i32* @I2O_CMD_UTIL_RELEASE, align 4
  %14 = load i32, i32* @I2O_CLAIM_PRIMARY, align 4
  %15 = call i32 @i2o_device_issue_claim(%struct.i2o_device* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %24

19:                                               ; preds = %11
  %20 = call i32 @ssleep(i32 1)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %8

24:                                               ; preds = %18, %8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %29 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %40

33:                                               ; preds = %24
  %34 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %35 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %42 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2o_device_issue_claim(%struct.i2o_device*, i32, i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
