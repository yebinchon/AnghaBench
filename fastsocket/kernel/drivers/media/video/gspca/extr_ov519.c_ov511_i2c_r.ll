; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_i2c_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@R51x_I2C_SADDR_2 = common dso_local global i32 0, align 4
@R511_I2C_CTL = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"i2c write retries exhausted\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"i2c read retries exhausted\00", align 1
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ov511_i2c_r %02x %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @ov511_i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov511_i2c_r(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 6, i32* %8, align 4
  br label %9

9:                                                ; preds = %50, %2
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = load i32, i32* @R51x_I2C_SADDR_2, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @reg_w(%struct.sd* %10, i32 %11, i32 %12)
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = load i32, i32* @R511_I2C_CTL, align 4
  %16 = call i32 @reg_w(%struct.sd* %14, i32 %15, i32 3)
  br label %17

17:                                               ; preds = %28, %9
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = load i32, i32* @R511_I2C_CTL, align 4
  %20 = call i32 @reg_r(%struct.sd* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %17, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %102

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %51

40:                                               ; preds = %35
  %41 = load %struct.sd*, %struct.sd** %4, align 8
  %42 = load i32, i32* @R511_I2C_CTL, align 4
  %43 = call i32 @reg_w(%struct.sd* %41, i32 %42, i32 16)
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @D_USBI, align 4
  %49 = call i32 (i32, i8*, ...) @PDEBUG(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %102

50:                                               ; preds = %40
  br label %9

51:                                               ; preds = %39
  store i32 6, i32* %8, align 4
  br label %52

52:                                               ; preds = %89, %51
  %53 = load %struct.sd*, %struct.sd** %4, align 8
  %54 = load i32, i32* @R511_I2C_CTL, align 4
  %55 = call i32 @reg_w(%struct.sd* %53, i32 %54, i32 5)
  br label %56

56:                                               ; preds = %67, %52
  %57 = load %struct.sd*, %struct.sd** %4, align 8
  %58 = load i32, i32* @R511_I2C_CTL, align 4
  %59 = call i32 @reg_r(%struct.sd* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ]
  br i1 %68, label %56, label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %102

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %90

79:                                               ; preds = %74
  %80 = load %struct.sd*, %struct.sd** %4, align 8
  %81 = load i32, i32* @R511_I2C_CTL, align 4
  %82 = call i32 @reg_w(%struct.sd* %80, i32 %81, i32 16)
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @D_USBI, align 4
  %88 = call i32 (i32, i8*, ...) @PDEBUG(i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %102

89:                                               ; preds = %79
  br label %52

90:                                               ; preds = %78
  %91 = load %struct.sd*, %struct.sd** %4, align 8
  %92 = load i32, i32* @R51x_I2C_DATA, align 4
  %93 = call i32 @reg_r(%struct.sd* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @D_USBI, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @PDEBUG(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.sd*, %struct.sd** %4, align 8
  %99 = load i32, i32* @R511_I2C_CTL, align 4
  %100 = call i32 @reg_w(%struct.sd* %98, i32 %99, i32 5)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %90, %86, %72, %47, %33
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
