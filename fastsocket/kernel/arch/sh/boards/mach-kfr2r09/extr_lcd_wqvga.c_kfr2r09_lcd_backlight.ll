; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_kfr2r09_lcd_backlight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_kfr2r09_lcd_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@CTRL_CPSW = common dso_local global i8 0, align 1
@CTRL_C10 = common dso_local global i8 0, align 1
@CTRL_CKSW = common dso_local global i8 0, align 1
@MAIN_MSW = common dso_local global i32 0, align 4
@MAIN_MLED4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kfr2r09_lcd_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfr2r09_lcd_backlight(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call %struct.i2c_adapter* @i2c_get_adapter(i32 0)
  store %struct.i2c_adapter* %8, %struct.i2c_adapter** %4, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %10 = icmp ne %struct.i2c_adapter* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i8, i8* @CTRL_CPSW, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @CTRL_C10, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = load i8, i8* @CTRL_CKSW, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %27, i8* %28, align 1
  br label %31

29:                                               ; preds = %14
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %29, %18
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 117, i32* %32, align 8
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i32 2, i32* %35, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %38 = call i32 @i2c_transfer(%struct.i2c_adapter* %37, %struct.i2c_msg* %5, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %71

44:                                               ; preds = %31
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 1, i8* %45, align 1
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @MAIN_MSW, align 4
  %50 = load i32, i32* @MAIN_MLED4, align 4
  %51 = or i32 %49, %50
  %52 = or i32 %51, 12
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %53, i8* %54, align 1
  br label %57

55:                                               ; preds = %44
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %48
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 117, i32* %58, align 8
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i32 2, i32* %61, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %64 = call i32 @i2c_transfer(%struct.i2c_adapter* %63, %struct.i2c_msg* %5, i32 1)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %67, %41, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
