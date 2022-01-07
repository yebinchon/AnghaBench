; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_i2c_read_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_i2c_read_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@OV511_I2C_RETRIES = common dso_local global i32 0, align 4
@R51x_I2C_SADDR_2 = common dso_local global i32 0, align 4
@R511_I2C_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"i2c write retries exhausted\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"i2c read retries exhausted\00", align 1
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"0x%02X:0x%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8)* @ov511_i2c_read_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov511_i2c_read_internal(%struct.usb_ov511* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load i32, i32* @OV511_I2C_RETRIES, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %61, %2
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %12 = load i32, i32* @R51x_I2C_SADDR_2, align 4
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = call i32 @reg_w(%struct.usb_ov511* %11, i32 %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %127

20:                                               ; preds = %10
  %21 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %22 = load i32, i32* @R511_I2C_CTL, align 4
  %23 = call i32 @reg_w(%struct.usb_ov511* %21, i32 %22, i32 3)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %127

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %40, %28
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %31 = load i32, i32* @R511_I2C_CTL, align 4
  %32 = call i32 @reg_r(%struct.usb_ov511* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %29, label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %127

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %62

52:                                               ; preds = %47
  %53 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %54 = load i32, i32* @R511_I2C_CTL, align 4
  %55 = call i32 @reg_w(%struct.usb_ov511* %53, i32 %54, i32 16)
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %127

61:                                               ; preds = %52
  br label %10

62:                                               ; preds = %51
  %63 = load i32, i32* @OV511_I2C_RETRIES, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %110, %62
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %66 = load i32, i32* @R511_I2C_CTL, align 4
  %67 = call i32 @reg_w(%struct.usb_ov511* %65, i32 %66, i32 5)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %127

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %84, %72
  %74 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %75 = load i32, i32* @R511_I2C_CTL, align 4
  %76 = call i32 @reg_r(%struct.usb_ov511* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i1 [ false, %77 ], [ %83, %80 ]
  br i1 %85, label %73, label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %127

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %111

96:                                               ; preds = %91
  %97 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %98 = load i32, i32* @R511_I2C_CTL, align 4
  %99 = call i32 @reg_w(%struct.usb_ov511* %97, i32 %98, i32 16)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %127

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %127

110:                                              ; preds = %104
  br label %64

111:                                              ; preds = %95
  %112 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %113 = load i32, i32* @R51x_I2C_DATA, align 4
  %114 = call i32 @reg_r(%struct.usb_ov511* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i8, i8* %5, align 1
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @PDEBUG(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %115, i32 %116)
  %118 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %119 = load i32, i32* @R511_I2C_CTL, align 4
  %120 = call i32 @reg_w(%struct.usb_ov511* %118, i32 %119, i32 5)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %127

125:                                              ; preds = %111
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %123, %108, %102, %89, %70, %59, %45, %26, %18
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
