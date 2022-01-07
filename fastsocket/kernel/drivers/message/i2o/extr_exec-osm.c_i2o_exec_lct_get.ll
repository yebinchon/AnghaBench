; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_exec-osm.c_i2o_exec_lct_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_exec-osm.c_i2o_exec_lct_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }

@EAGAIN = common dso_local global i32 0, align 4
@I2O_LCT_GET_TRIES = common dso_local global i32 0, align 4
@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@EIGHT_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_6 = common dso_local global i32 0, align 4
@I2O_CMD_LCT_NOTIFY = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@ADAPTER_TID = common dso_local global i32 0, align 4
@I2O_TIMEOUT_LCT_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_exec_lct_get(%struct.i2o_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2o_controller*, align 8
  %4 = alloca %struct.i2o_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @EAGAIN, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %91, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @I2O_LCT_GET_TRIES, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %94

13:                                               ; preds = %9
  %14 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %15 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %16 = call %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller* %14, i32 %15)
  store %struct.i2o_message* %16, %struct.i2o_message** %4, align 8
  %17 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %18 = call i64 @IS_ERR(%struct.i2o_message* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %22 = call i32 @PTR_ERR(%struct.i2o_message* %21)
  store i32 %22, i32* %2, align 4
  br label %96

23:                                               ; preds = %13
  %24 = load i32, i32* @EIGHT_WORD_MSG_SIZE, align 4
  %25 = load i32, i32* @SGL_OFFSET_6, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %29 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %27, i8** %32, align 8
  %33 = load i32, i32* @I2O_CMD_LCT_NOTIFY, align 4
  %34 = shl i32 %33, 24
  %35 = load i32, i32* @HOST_TID, align 4
  %36 = shl i32 %35, 12
  %37 = or i32 %34, %36
  %38 = load i32, i32* @ADAPTER_TID, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %42 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %40, i8** %45, align 8
  %46 = call i8* @cpu_to_le32(i32 -1)
  %47 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %48 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = call i8* @cpu_to_le32(i32 0)
  %52 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %53 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* %51, i8** %55, align 8
  %56 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %57 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 -805306368, %59
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %63 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  store i8* %61, i8** %65, align 8
  %66 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %67 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %72 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 3
  store i8* %70, i8** %74, align 8
  %75 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %76 = load %struct.i2o_message*, %struct.i2o_message** %4, align 8
  %77 = load i32, i32* @I2O_TIMEOUT_LCT_GET, align 4
  %78 = call i32 @i2o_msg_post_wait(%struct.i2o_controller* %75, %struct.i2o_message* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %23
  br label %94

82:                                               ; preds = %23
  %83 = load %struct.i2o_controller*, %struct.i2o_controller** %3, align 8
  %84 = call i32 @i2o_device_parse_lct(%struct.i2o_controller* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %94

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %9

94:                                               ; preds = %89, %81, %9
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(%struct.i2o_controller*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post_wait(%struct.i2o_controller*, %struct.i2o_message*, i32) #1

declare dso_local i32 @i2o_device_parse_lct(%struct.i2o_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
