; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_device_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_device_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }

@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@FIVE_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_BLOCK_MMOUNT = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Mounting...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_device*, i32)* @i2o_block_device_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_device_mount(%struct.i2o_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2o_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_message*, align 8
  store %struct.i2o_device* %0, %struct.i2o_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %8 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %11 = call %struct.i2o_message* @i2o_msg_get_wait(i32 %9, i32 %10)
  store %struct.i2o_message* %11, %struct.i2o_message** %6, align 8
  %12 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %13 = call i64 @IS_ERR(%struct.i2o_message* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.i2o_message* %16)
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load i32, i32* @FIVE_WORD_MSG_SIZE, align 4
  %20 = load i32, i32* @SGL_OFFSET_0, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %24 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %22, i8** %27, align 8
  %28 = load i32, i32* @I2O_CMD_BLOCK_MMOUNT, align 4
  %29 = shl i32 %28, 24
  %30 = load i32, i32* @HOST_TID, align 4
  %31 = shl i32 %30, 12
  %32 = or i32 %29, %31
  %33 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %34 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %32, %36
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %40 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %38, i8** %43, align 8
  %44 = call i8* @cpu_to_le32(i32 -1)
  %45 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %46 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %44, i8** %48, align 8
  %49 = call i8* @cpu_to_le32(i32 0)
  %50 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %51 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %49, i8** %53, align 8
  %54 = call i32 @osm_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %56 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %59 = call i32 @i2o_msg_post_wait(i32 %57, %struct.i2o_message* %58, i32 2)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %18, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @osm_debug(i8*) #1

declare dso_local i32 @i2o_msg_post_wait(i32, %struct.i2o_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
