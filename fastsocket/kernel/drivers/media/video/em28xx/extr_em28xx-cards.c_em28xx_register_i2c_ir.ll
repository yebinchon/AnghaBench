; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_register_i2c_ir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_register_i2c_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, %struct.i2c_board_info }
%struct.i2c_board_info = type { i8*, %struct.i2c_board_info*, i32, i32, i32 }

@I2C_CLIENT_END = common dso_local global i32 0, align 4
@disable_ir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"ir_video\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@RC_MAP_EM_TERRATEC = common dso_local global i32 0, align 4
@em28xx_get_key_terratec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"i2c IR (EM28XX Terratec)\00", align 1
@RC_MAP_PINNACLE_GREY = common dso_local global i32 0, align 4
@em28xx_get_key_pinnacle_usb_grey = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"i2c IR (EM28XX Pinnacle PCTV)\00", align 1
@RC_MAP_RC5_HAUPPAUGE_NEW = common dso_local global i32 0, align 4
@em28xx_get_key_em_haup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"i2c IR (EM2840 Hauppauge)\00", align 1
@RC_MAP_WINFAST_USBII_DELUXE = common dso_local global i32 0, align 4
@em28xx_get_key_winfast_usbii_deluxe = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"i2c IR (EM2820 Winfast TV USBII Deluxe)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em28xx_register_i2c_ir(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca %struct.i2c_board_info, align 8
  %4 = alloca [4 x i16], align 2
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %5 = getelementptr inbounds [4 x i16], [4 x i16]* %4, i64 0, i64 0
  store i16 31, i16* %5, align 2
  %6 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 48, i16* %6, align 2
  %7 = getelementptr inbounds i16, i16* %6, i64 1
  store i16 71, i16* %7, align 2
  %8 = getelementptr inbounds i16, i16* %7, i64 1
  %9 = load i32, i32* @I2C_CLIENT_END, align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %8, align 2
  %11 = load i64, i64* @disable_ir, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %89

14:                                               ; preds = %1
  %15 = call i32 @memset(%struct.i2c_board_info* %3, i32 0, i32 32)
  %16 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 2
  %18 = call i32 @memset(%struct.i2c_board_info* %17, i32 0, i32 32)
  %19 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @I2C_NAME_SIZE, align 4
  %22 = call i32 @strlcpy(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %74 [
    i32 132, label %26
    i32 128, label %26
    i32 129, label %38
    i32 131, label %50
    i32 130, label %62
  ]

26:                                               ; preds = %14, %14
  %27 = load i32, i32* @RC_MAP_EM_TERRATEC, align 4
  %28 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @em28xx_get_key_terratec, align 4
  %32 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  br label %74

38:                                               ; preds = %14
  %39 = load i32, i32* @RC_MAP_PINNACLE_GREY, align 4
  %40 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %41 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @em28xx_get_key_pinnacle_usb_grey, align 4
  %44 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %45 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %48 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 8
  br label %74

50:                                               ; preds = %14
  %51 = load i32, i32* @RC_MAP_RC5_HAUPPAUGE_NEW, align 4
  %52 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @em28xx_get_key_em_haup, align 4
  %56 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %57 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %60 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %61, align 8
  br label %74

62:                                               ; preds = %14
  %63 = load i32, i32* @RC_MAP_WINFAST_USBII_DELUXE, align 4
  %64 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %65 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @em28xx_get_key_winfast_usbii_deluxe, align 4
  %68 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %72 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8** %73, align 8
  br label %74

74:                                               ; preds = %14, %62, %50, %38, %26
  %75 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %76 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %82 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 1
  store %struct.i2c_board_info* %82, %struct.i2c_board_info** %83, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %86 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %85, i32 0, i32 1
  %87 = getelementptr inbounds [4 x i16], [4 x i16]* %4, i64 0, i64 0
  %88 = call i32 @i2c_new_probed_device(i32* %86, %struct.i2c_board_info* %3, i16* %87)
  br label %89

89:                                               ; preds = %84, %13
  ret void
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_new_probed_device(i32*, %struct.i2c_board_info*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
