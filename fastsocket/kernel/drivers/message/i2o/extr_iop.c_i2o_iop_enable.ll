; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.i2o_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }

@ADAPTER_STATE_READY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@FOUR_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_SYS_ENABLE = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: Could not enable (status=%#x).\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s: Enabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*)* @i2o_iop_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_iop_enable(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca %struct.i2o_message*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %7 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %8 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %12 = call i32 @i2o_status_get(%struct.i2o_controller* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ADAPTER_STATE_READY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %74

21:                                               ; preds = %1
  %22 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %23 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %24 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %22, i32 %23)
  store %struct.i2o_message* %24, %struct.i2o_message** %4, align 8
  %25 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %26 = call i64 @IS_ERR(%struct.i2o_message* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %30 = call i32 @PTR_ERR(%struct.i2o_message* %29)
  store i32 %30, i32* %2, align 4
  br label %74

31:                                               ; preds = %21
  %32 = load i32, i32* @FOUR_WORD_MSG_SIZE, align 4
  %33 = load i32, i32* @SGL_OFFSET_0, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %37 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %35, i8** %40, align 8
  %41 = load i32, i32* @I2O_CMD_SYS_ENABLE, align 4
  %42 = shl i32 %41, 24
  %43 = load i32, i32* @HOST_TID, align 4
  %44 = shl i32 %43, 12
  %45 = or i32 %42, %44
  %46 = load i32, i32* @ADAPTER_TID, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %50 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %48, i8** %53, align 8
  %54 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %55 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %56 = call i32 @i2o_msg_post_wait(%struct.i2o_controller* %54, %struct.i2o_message* %55, i32 240)
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %31
  %59 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %60 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 @osm_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63)
  br label %70

65:                                               ; preds = %31
  %66 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %67 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @osm_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %72 = call i32 @i2o_status_get(%struct.i2o_controller* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %28, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @i2o_status_get(%struct.i2o_controller*) #1

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post_wait(%struct.i2o_controller*, %struct.i2o_message*, i32) #1

declare dso_local i32 @osm_err(i8*, i32, i32) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
