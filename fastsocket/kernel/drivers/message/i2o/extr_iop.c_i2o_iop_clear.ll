; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i32 }
%struct.i2o_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8** }

@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@FOUR_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_ADAPTER_CLEAR = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: Unable to clear (status=%#x).\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s: Cleared.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*)* @i2o_iop_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_iop_clear(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca %struct.i2o_message*, align 8
  %5 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  %6 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %7 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %8 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %6, i32 %7)
  store %struct.i2o_message* %8, %struct.i2o_message** %4, align 8
  %9 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %10 = call i64 @IS_ERR(%struct.i2o_message* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.i2o_message* %13)
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = call i32 (...) @i2o_iop_quiesce_all()
  %17 = load i32, i32* @FOUR_WORD_MSG_SIZE, align 4
  %18 = load i32, i32* @SGL_OFFSET_0, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %22 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %20, i8** %25, align 8
  %26 = load i32, i32* @I2O_CMD_ADAPTER_CLEAR, align 4
  %27 = shl i32 %26, 24
  %28 = load i32, i32* @HOST_TID, align 4
  %29 = shl i32 %28, 12
  %30 = or i32 %27, %29
  %31 = load i32, i32* @ADAPTER_TID, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %35 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* %33, i8** %38, align 8
  %39 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %40 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %41 = call i32 @i2o_msg_post_wait(%struct.i2o_controller* %39, %struct.i2o_message* %40, i32 30)
  store i32 %41, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %15
  %44 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %45 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @osm_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48)
  br label %55

50:                                               ; preds = %15
  %51 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %52 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @osm_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %50, %43
  %56 = call i32 (...) @i2o_iop_enable_all()
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i32 @i2o_iop_quiesce_all(...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post_wait(%struct.i2o_controller*, %struct.i2o_message*, i32) #1

declare dso_local i32 @osm_info(i8*, i32, i32) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

declare dso_local i32 @i2o_iop_enable_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
