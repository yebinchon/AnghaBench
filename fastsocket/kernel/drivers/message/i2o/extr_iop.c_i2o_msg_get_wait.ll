; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_msg_get_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_msg_get_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_message = type { i32 }
%struct.i2o_controller = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: Timeout waiting for message frame.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.i2o_message*, align 8
  %4 = alloca %struct.i2o_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.i2o_message*, align 8
  store %struct.i2o_controller* %0, %struct.i2o_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @jiffies, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 %9, %10
  %12 = add nsw i32 %8, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load %struct.i2o_controller*, %struct.i2o_controller** %4, align 8
  %16 = call %struct.i2o_message* @i2o_msg_get(%struct.i2o_controller* %15)
  store %struct.i2o_message* %16, %struct.i2o_message** %7, align 8
  %17 = call i64 @IS_ERR(%struct.i2o_message* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, i32* @jiffies, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @time_after(i32 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.i2o_controller*, %struct.i2o_controller** %4, align 8
  %26 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @osm_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.i2o_message* @ERR_PTR(i32 %30)
  store %struct.i2o_message* %31, %struct.i2o_message** %3, align 8
  br label %36

32:                                               ; preds = %19
  %33 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  store %struct.i2o_message* %35, %struct.i2o_message** %3, align 8
  br label %36

36:                                               ; preds = %34, %24
  %37 = load %struct.i2o_message*, %struct.i2o_message** %3, align 8
  ret %struct.i2o_message* %37
}

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local %struct.i2o_message* @i2o_msg_get(%struct.i2o_controller*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

declare dso_local %struct.i2o_message* @ERR_PTR(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
