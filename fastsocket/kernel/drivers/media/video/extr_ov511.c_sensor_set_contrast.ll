; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_contrast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i16, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@OV7610_REG_CNT = common dso_local global i32 0, align 4
@__const.sensor_set_contrast.ctab = private unnamed_addr constant [16 x i8] c"\01\05\09\11\1557W[\A5\A7\C7\C9\CF\EF\FF", align 16
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported with this sensor\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i16)* @sensor_set_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_set_contrast(%struct.usb_ov511* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %12 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %17 = call i64 @ov51x_stop(%struct.usb_ov511* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %94

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %25 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %77 [
    i32 130, label %27
    i32 132, label %27
    i32 131, label %39
    i32 129, label %51
    i32 128, label %66
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %29 = load i32, i32* @OV7610_REG_CNT, align 4
  %30 = load i16, i16* %5, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 8
  %33 = trunc i32 %32 to i16
  %34 = call i32 @i2c_w(%struct.usb_ov511* %28, i32 %29, i16 zeroext %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %85

38:                                               ; preds = %27
  br label %81

39:                                               ; preds = %23
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %41 = load i32, i32* @OV7610_REG_CNT, align 4
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = ashr i32 %43, 12
  %45 = trunc i32 %44 to i16
  %46 = call i32 @i2c_w_mask(%struct.usb_ov511* %40, i32 %41, i16 zeroext %45, i32 15)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %85

50:                                               ; preds = %39
  br label %81

51:                                               ; preds = %23
  %52 = bitcast [16 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.sensor_set_contrast.ctab, i32 0, i32 0), i64 16, i1 false)
  %53 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %54 = load i16, i16* %5, align 2
  %55 = zext i16 %54 to i32
  %56 = ashr i32 %55, 12
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i16
  %61 = call i32 @i2c_w(%struct.usb_ov511* %53, i32 100, i16 zeroext %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %85

65:                                               ; preds = %51
  br label %81

66:                                               ; preds = %23
  %67 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %68 = load i16, i16* %5, align 2
  %69 = zext i16 %68 to i32
  %70 = ashr i32 %69, 9
  %71 = trunc i32 %70 to i16
  %72 = call i32 @i2c_w(%struct.usb_ov511* %67, i32 11, i16 zeroext %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %85

76:                                               ; preds = %66
  br label %81

77:                                               ; preds = %23
  %78 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EPERM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %85

81:                                               ; preds = %76, %65, %50, %38
  store i32 0, i32* %6, align 4
  %82 = load i16, i16* %5, align 2
  %83 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %84 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %83, i32 0, i32 1
  store i16 %82, i16* %84, align 4
  br label %85

85:                                               ; preds = %81, %77, %75, %64, %49, %37
  %86 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %87 = call i64 @ov51x_restart(%struct.usb_ov511* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %89, %19
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i64 @ov51x_stop(%struct.usb_ov511*) #1

declare dso_local i32 @i2c_w(%struct.usb_ov511*, i32, i16 zeroext) #1

declare dso_local i32 @i2c_w_mask(%struct.usb_ov511*, i32, i16 zeroext, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ov51x_restart(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
