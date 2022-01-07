; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_i2c_new_ir_legacy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_i2c_new_ir_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ivtv = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_CLIENT_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ir_video\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @ivtv_i2c_new_ir_legacy(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.i2c_board_info, align 4
  %4 = alloca [3 x i16], align 2
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %5 = getelementptr inbounds [3 x i16], [3 x i16]* %4, i64 0, i64 0
  store i16 26, i16* %5, align 2
  %6 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 24, i16* %6, align 2
  %7 = getelementptr inbounds i16, i16* %6, i64 1
  %8 = load i32, i32* @I2C_CLIENT_END, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %7, align 2
  %10 = call i32 @memset(%struct.i2c_board_info* %3, i32 0, i32 4)
  %11 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_NAME_SIZE, align 4
  %14 = call i32 @strlcpy(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 0
  %17 = getelementptr inbounds [3 x i16], [3 x i16]* %4, i64 0, i64 0
  %18 = call %struct.i2c_client* @i2c_new_probed_device(i32* %16, %struct.i2c_board_info* %3, i16* %17)
  ret %struct.i2c_client* %18
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_probed_device(i32*, %struct.i2c_board_info*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
