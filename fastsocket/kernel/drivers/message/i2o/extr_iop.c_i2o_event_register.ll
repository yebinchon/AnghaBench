; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_event_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_event_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_device = type { %struct.TYPE_4__, %struct.i2o_controller* }
%struct.TYPE_4__ = type { i32 }
%struct.i2o_controller = type { i32 }
%struct.i2o_driver = type { i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8** }
%struct.TYPE_5__ = type { i8*, i8* }

@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@FIVE_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_UTIL_EVT_REGISTER = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_event_register(%struct.i2o_device* %0, %struct.i2o_driver* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_device*, align 8
  %7 = alloca %struct.i2o_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2o_controller*, align 8
  %11 = alloca %struct.i2o_message*, align 8
  store %struct.i2o_device* %0, %struct.i2o_device** %6, align 8
  store %struct.i2o_driver* %1, %struct.i2o_driver** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i2o_device*, %struct.i2o_device** %6, align 8
  %13 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %12, i32 0, i32 1
  %14 = load %struct.i2o_controller*, %struct.i2o_controller** %13, align 8
  store %struct.i2o_controller* %14, %struct.i2o_controller** %10, align 8
  %15 = load %struct.i2o_controller*, %struct.i2o_controller** %10, align 8
  %16 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %17 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %15, i32 %16)
  store %struct.i2o_message* %17, %struct.i2o_message** %11, align 8
  %18 = load %struct.i2o_message*, %struct.i2o_message** %11, align 8
  %19 = call i64 @IS_ERR(%struct.i2o_message* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.i2o_message*, %struct.i2o_message** %11, align 8
  %23 = call i32 @PTR_ERR(%struct.i2o_message* %22)
  store i32 %23, i32* %5, align 4
  br label %73

24:                                               ; preds = %4
  %25 = load i32, i32* @FIVE_WORD_MSG_SIZE, align 4
  %26 = load i32, i32* @SGL_OFFSET_0, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.i2o_message*, %struct.i2o_message** %11, align 8
  %30 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  store i8* %28, i8** %33, align 8
  %34 = load i32, i32* @I2O_CMD_UTIL_EVT_REGISTER, align 4
  %35 = shl i32 %34, 24
  %36 = load i32, i32* @HOST_TID, align 4
  %37 = shl i32 %36, 12
  %38 = or i32 %35, %37
  %39 = load %struct.i2o_device*, %struct.i2o_device** %6, align 8
  %40 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %38, %42
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.i2o_message*, %struct.i2o_message** %11, align 8
  %46 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  store i8* %44, i8** %49, align 8
  %50 = load %struct.i2o_driver*, %struct.i2o_driver** %7, align 8
  %51 = getelementptr inbounds %struct.i2o_driver, %struct.i2o_driver* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.i2o_message*, %struct.i2o_message** %11, align 8
  %55 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.i2o_message*, %struct.i2o_message** %11, align 8
  %61 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i8* %59, i8** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.i2o_message*, %struct.i2o_message** %11, align 8
  %67 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  store i8* %65, i8** %69, align 8
  %70 = load %struct.i2o_controller*, %struct.i2o_controller** %10, align 8
  %71 = load %struct.i2o_message*, %struct.i2o_message** %11, align 8
  %72 = call i32 @i2o_msg_post(%struct.i2o_controller* %70, %struct.i2o_message* %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %24, %21
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post(%struct.i2o_controller*, %struct.i2o_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
