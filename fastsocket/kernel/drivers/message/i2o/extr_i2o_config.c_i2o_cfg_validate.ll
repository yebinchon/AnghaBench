; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_config.c_i2o_cfg_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_config.c_i2o_cfg_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i2o_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }
%struct.i2o_controller = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@FOUR_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@I2O_CMD_CONFIG_VALIDATE = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@i2o_config_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@I2O_POST_WAIT_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can't validate configuration, ErrorStatus = %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @i2o_cfg_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_cfg_validate(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_message*, align 8
  %7 = alloca %struct.i2o_controller*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.i2o_controller* @i2o_find_iop(i32 %10)
  store %struct.i2o_controller* %11, %struct.i2o_controller** %7, align 8
  %12 = load %struct.i2o_controller*, %struct.i2o_controller** %7, align 8
  %13 = icmp ne %struct.i2o_controller* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.i2o_controller*, %struct.i2o_controller** %7, align 8
  %19 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %20 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %18, i32 %19)
  store %struct.i2o_message* %20, %struct.i2o_message** %6, align 8
  %21 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %22 = call i64 @IS_ERR(%struct.i2o_message* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %26 = call i32 @PTR_ERR(%struct.i2o_message* %25)
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %17
  %28 = load i32, i32* @FOUR_WORD_MSG_SIZE, align 4
  %29 = load i32, i32* @SGL_OFFSET_0, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %33 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %31, i8** %36, align 8
  %37 = load i32, i32* @I2O_CMD_CONFIG_VALIDATE, align 4
  %38 = shl i32 %37, 24
  %39 = load i32, i32* @HOST_TID, align 4
  %40 = shl i32 %39, 12
  %41 = or i32 %38, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %46 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  store i8* %44, i8** %49, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @i2o_config_driver, i32 0, i32 0), align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %53 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  store i8* %51, i8** %56, align 8
  %57 = call i8* @cpu_to_le32(i32 0)
  %58 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %59 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 3
  store i8* %57, i8** %62, align 8
  %63 = load %struct.i2o_controller*, %struct.i2o_controller** %7, align 8
  %64 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %65 = call i32 @i2o_msg_post_wait(%struct.i2o_controller* %63, %struct.i2o_message* %64, i32 10)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @I2O_POST_WAIT_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %27
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @osm_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %69, %24, %14
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.i2o_controller* @i2o_find_iop(i32) #1

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post_wait(%struct.i2o_controller*, %struct.i2o_message*, i32) #1

declare dso_local i32 @osm_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
