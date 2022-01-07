; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_i2c_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_i2c_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ov511_i2c_w %02x %02x\00", align 1
@R51x_I2C_SADDR_3 = common dso_local global i32 0, align 4
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@R511_I2C_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"i2c write retries exhausted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32, i32)* @ov511_i2c_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_i2c_w(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @D_USBO, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 (i32, i8*, ...) @PDEBUG(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  store i32 6, i32* %8, align 4
  br label %13

13:                                               ; preds = %54, %3
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = load i32, i32* @R51x_I2C_SADDR_3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @reg_w(%struct.sd* %14, i32 %15, i32 %16)
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = load i32, i32* @R51x_I2C_DATA, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @reg_w(%struct.sd* %18, i32 %19, i32 %20)
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = load i32, i32* @R511_I2C_CTL, align 4
  %24 = call i32 @reg_w(%struct.sd* %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %36, %13
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = load i32, i32* @R511_I2C_CTL, align 4
  %28 = call i32 @reg_r(%struct.sd* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %25, label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %55

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @D_USBO, align 4
  %53 = call i32 (i32, i8*, ...) @PDEBUG(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %55

54:                                               ; preds = %47
  br label %13

55:                                               ; preds = %41, %51, %46
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
