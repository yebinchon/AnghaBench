; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_bus-osm.c_i2o_bus_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_bus-osm.c_i2o_bus_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2o_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }

@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@FIVE_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_BUS_SCAN = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_device*)* @i2o_bus_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_bus_scan(%struct.i2o_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_device*, align 8
  %4 = alloca %struct.i2o_message*, align 8
  store %struct.i2o_device* %0, %struct.i2o_device** %3, align 8
  %5 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %6 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %9 = call %struct.i2o_message* @i2o_msg_get_wait(i32 %7, i32 %8)
  store %struct.i2o_message* %9, %struct.i2o_message** %4, align 8
  %10 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %11 = call i64 @IS_ERR(%struct.i2o_message* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ETIMEDOUT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load i32, i32* @FIVE_WORD_MSG_SIZE, align 4
  %18 = load i32, i32* @SGL_OFFSET_0, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %22 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %20, i8** %25, align 8
  %26 = load i32, i32* @I2O_CMD_BUS_SCAN, align 4
  %27 = shl i32 %26, 24
  %28 = load i32, i32* @HOST_TID, align 4
  %29 = shl i32 %28, 12
  %30 = or i32 %27, %29
  %31 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %32 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %30, %34
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %38 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* %36, i8** %41, align 8
  %42 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %43 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %46 = call i32 @i2o_msg_post_wait(i32 %44, %struct.i2o_message* %45, i32 60)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %16, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post_wait(i32, %struct.i2o_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
