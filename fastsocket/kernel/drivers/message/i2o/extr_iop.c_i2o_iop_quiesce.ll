; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.i2o_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }

@ADAPTER_STATE_READY = common dso_local global i64 0, align 8
@ADAPTER_STATE_OPERATIONAL = common dso_local global i64 0, align 8
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@FOUR_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_SYS_QUIESCE = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Unable to quiesce (status=%#x).\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: Quiesced.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*)* @i2o_iop_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_iop_quiesce(%struct.i2o_controller* %0) #0 {
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
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ADAPTER_STATE_OPERATIONAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %78

25:                                               ; preds = %18, %1
  %26 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %27 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %28 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %26, i32 %27)
  store %struct.i2o_message* %28, %struct.i2o_message** %4, align 8
  %29 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %30 = call i64 @IS_ERR(%struct.i2o_message* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.i2o_message* %33)
  store i32 %34, i32* %2, align 4
  br label %78

35:                                               ; preds = %25
  %36 = load i32, i32* @FOUR_WORD_MSG_SIZE, align 4
  %37 = load i32, i32* @SGL_OFFSET_0, align 4
  %38 = or i32 %36, %37
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %41 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %39, i8** %44, align 8
  %45 = load i32, i32* @I2O_CMD_SYS_QUIESCE, align 4
  %46 = shl i32 %45, 24
  %47 = load i32, i32* @HOST_TID, align 4
  %48 = shl i32 %47, 12
  %49 = or i32 %46, %48
  %50 = load i32, i32* @ADAPTER_TID, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %54 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* %52, i8** %57, align 8
  %58 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %59 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %60 = call i32 @i2o_msg_post_wait(%struct.i2o_controller* %58, %struct.i2o_message* %59, i32 240)
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %35
  %63 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %64 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @osm_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67)
  br label %74

69:                                               ; preds = %35
  %70 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %71 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @osm_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %76 = call i32 @i2o_status_get(%struct.i2o_controller* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %32, %24
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @i2o_status_get(%struct.i2o_controller*) #1

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post_wait(%struct.i2o_controller*, %struct.i2o_message*, i32) #1

declare dso_local i32 @osm_info(i8*, i32, i32) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
