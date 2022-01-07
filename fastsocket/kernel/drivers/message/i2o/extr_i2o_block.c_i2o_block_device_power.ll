; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_device_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_device_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_block_device = type { i32, %struct.i2o_device* }
%struct.i2o_device = type { %struct.TYPE_4__, %struct.i2o_controller* }
%struct.TYPE_4__ = type { i32 }
%struct.i2o_controller = type { i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }

@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@FOUR_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_BLOCK_POWER = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Power...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_block_device*, i32)* @i2o_block_device_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_device_power(%struct.i2o_block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2o_block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_device*, align 8
  %7 = alloca %struct.i2o_controller*, align 8
  %8 = alloca %struct.i2o_message*, align 8
  %9 = alloca i32, align 4
  store %struct.i2o_block_device* %0, %struct.i2o_block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %11 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %10, i32 0, i32 1
  %12 = load %struct.i2o_device*, %struct.i2o_device** %11, align 8
  store %struct.i2o_device* %12, %struct.i2o_device** %6, align 8
  %13 = load %struct.i2o_device*, %struct.i2o_device** %6, align 8
  %14 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %13, i32 0, i32 1
  %15 = load %struct.i2o_controller*, %struct.i2o_controller** %14, align 8
  store %struct.i2o_controller* %15, %struct.i2o_controller** %7, align 8
  %16 = load %struct.i2o_controller*, %struct.i2o_controller** %7, align 8
  %17 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %18 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %16, i32 %17)
  store %struct.i2o_message* %18, %struct.i2o_message** %8, align 8
  %19 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %20 = call i64 @IS_ERR(%struct.i2o_message* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.i2o_message* %23)
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %2
  %26 = load i32, i32* @FOUR_WORD_MSG_SIZE, align 4
  %27 = load i32, i32* @SGL_OFFSET_0, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %31 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %29, i8** %34, align 8
  %35 = load i32, i32* @I2O_CMD_BLOCK_POWER, align 4
  %36 = shl i32 %35, 24
  %37 = load i32, i32* @HOST_TID, align 4
  %38 = shl i32 %37, 12
  %39 = or i32 %36, %38
  %40 = load %struct.i2o_device*, %struct.i2o_device** %6, align 8
  %41 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %39, %43
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %47 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* %45, i8** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 %51, 24
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %55 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  %58 = call i32 @osm_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.i2o_controller*, %struct.i2o_controller** %7, align 8
  %60 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %61 = call i32 @i2o_msg_post_wait(%struct.i2o_controller* %59, %struct.i2o_message* %60, i32 60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %25
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %67 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %25
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @osm_debug(i8*) #1

declare dso_local i32 @i2o_msg_post_wait(%struct.i2o_controller*, %struct.i2o_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
