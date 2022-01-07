; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_i2c_init_ir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_i2c_init_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i64, i32, i32, %struct.i2c_board_info }
%struct.i2c_board_info = type { i8*, i16, %struct.i2c_board_info*, i32, i32, i32, i32 }

@I2C_CLIENT_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ir_video\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cx88 Leadtek PVR 2000 remote\00", align 1
@RC_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@get_key_pvr2000 = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cx88 Hauppauge XVR remote\00", align 1
@RC_MAP_HAUPPAUGE_NEW = common dso_local global i32 0, align 4
@RC_TYPE_RC5 = common dso_local global i32 0, align 4
@IR_KBD_GET_KEY_HAUP_XVR = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_QUICK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_i2c_init_ir(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  %3 = alloca %struct.i2c_board_info, align 8
  %4 = alloca [4 x i16], align 2
  %5 = alloca [3 x i16], align 2
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  %8 = getelementptr inbounds [4 x i16], [4 x i16]* %4, i64 0, i64 0
  store i16 24, i16* %8, align 2
  %9 = getelementptr inbounds i16, i16* %8, i64 1
  store i16 107, i16* %9, align 2
  %10 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 113, i16* %10, align 2
  %11 = getelementptr inbounds i16, i16* %10, i64 1
  %12 = load i32, i32* @I2C_CLIENT_END, align 4
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %11, align 2
  %14 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  store i16 24, i16* %14, align 2
  %15 = getelementptr inbounds i16, i16* %14, i64 1
  store i16 26, i16* %15, align 2
  %16 = getelementptr inbounds i16, i16* %15, i64 1
  %17 = load i32, i32* @I2C_CLIENT_END, align 4
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %16, align 2
  %19 = getelementptr inbounds [4 x i16], [4 x i16]* %4, i64 0, i64 0
  store i16* %19, i16** %6, align 8
  %20 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %21 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 0, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %107

25:                                               ; preds = %1
  %26 = call i32 @memset(%struct.i2c_board_info* %3, i32 0, i32 40)
  %27 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I2C_NAME_SIZE, align 4
  %30 = call i32 @strlcpy(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %32 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %51 [
    i32 128, label %34
  ]

34:                                               ; preds = %25
  %35 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  store i16* %35, i16** %6, align 8
  %36 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %37 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @RC_TYPE_UNKNOWN, align 4
  %40 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %41 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @get_key_pvr2000, align 4
  %44 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %45 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @RC_MAP_EMPTY, align 4
  %48 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %49 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  br label %51

51:                                               ; preds = %25, %34
  %52 = load i16*, i16** %6, align 8
  store i16* %52, i16** %7, align 8
  br label %53

53:                                               ; preds = %104, %51
  %54 = load i16*, i16** %7, align 8
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = load i32, i32* @I2C_CLIENT_END, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 2
  store %struct.i2c_board_info* null, %struct.i2c_board_info** %60, align 8
  %61 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %62 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %61, i32 0, i32 3
  %63 = call i32 @memset(%struct.i2c_board_info* %62, i32 0, i32 40)
  %64 = load i16*, i16** %7, align 8
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %66, 113
  br i1 %67, label %68, label %87

68:                                               ; preds = %59
  %69 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %70 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* @RC_MAP_HAUPPAUGE_NEW, align 4
  %73 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %74 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @RC_TYPE_RC5, align 4
  %77 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %78 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @IR_KBD_GET_KEY_HAUP_XVR, align 4
  %81 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %82 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %85 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 2
  store %struct.i2c_board_info* %85, %struct.i2c_board_info** %86, align 8
  br label %87

87:                                               ; preds = %68, %59
  %88 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %89 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %88, i32 0, i32 2
  %90 = load i16*, i16** %7, align 8
  %91 = load i16, i16* %90, align 2
  %92 = load i32, i32* @I2C_SMBUS_READ, align 4
  %93 = load i32, i32* @I2C_SMBUS_QUICK, align 4
  %94 = call i64 @i2c_smbus_xfer(i32* %89, i16 zeroext %91, i32 0, i32 %92, i32 0, i32 %93, i32* null)
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load i16*, i16** %7, align 8
  %98 = load i16, i16* %97, align 2
  %99 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 1
  store i16 %98, i16* %99, align 8
  %100 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %101 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %100, i32 0, i32 2
  %102 = call i32 @i2c_new_device(i32* %101, %struct.i2c_board_info* %3)
  br label %107

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103
  %105 = load i16*, i16** %7, align 8
  %106 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %106, i16** %7, align 8
  br label %53

107:                                              ; preds = %24, %96, %53
  ret void
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @i2c_smbus_xfer(i32*, i16 zeroext, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @i2c_new_device(i32*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
