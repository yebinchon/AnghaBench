; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_touchkit_ps2.c_touchkit_ps2_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_touchkit_ps2.c_touchkit_ps2_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32*, i32 }

@TOUCHKIT_CMD_LENGTH = common dso_local global i8 0, align 1
@TOUCHKIT_CMD_ACTIVE = common dso_local global i8 0, align 1
@TOUCHKIT_CMD = common dso_local global i8 0, align 1
@ENODEV = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@TOUCHKIT_MAX_XC = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@TOUCHKIT_MAX_YC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"eGalax\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Touchscreen\00", align 1
@touchkit_ps2_process_byte = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @touchkit_ps2_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 5
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %6, align 8
  %12 = load i8, i8* @TOUCHKIT_CMD_LENGTH, align 1
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %12, i8* %13, align 1
  %14 = load i8, i8* @TOUCHKIT_CMD_ACTIVE, align 1
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %14, i8* %15, align 1
  %16 = load i8, i8* @TOUCHKIT_CMD, align 1
  %17 = call i32 @TOUCHKIT_SEND_PARMS(i32 2, i32 3, i8 zeroext %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %19 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 4
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ps2_command(i32* %19, i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %85

27:                                               ; preds = %2
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @TOUCHKIT_CMD, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @TOUCHKIT_CMD_ACTIVE, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %34, %27
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %85

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %49
  %53 = load i32, i32* @EV_KEY, align 4
  %54 = call i32 @BIT_MASK(i32 %53)
  %55 = load i32, i32* @EV_ABS, align 4
  %56 = call i32 @BIT_MASK(i32 %55)
  %57 = or i32 %54, %56
  %58 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @BTN_TOUCH, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @__set_bit(i32 %62, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %68 = load i32, i32* @ABS_X, align 4
  %69 = load i32, i32* @TOUCHKIT_MAX_XC, align 4
  %70 = call i32 @input_set_abs_params(%struct.input_dev* %67, i32 %68, i32 0, i32 %69, i32 0, i32 0)
  %71 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %72 = load i32, i32* @ABS_Y, align 4
  %73 = load i32, i32* @TOUCHKIT_MAX_YC, align 4
  %74 = call i32 @input_set_abs_params(%struct.input_dev* %71, i32 %72, i32 0, i32 %73, i32 0, i32 0)
  %75 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %76 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %78 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %77, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %78, align 8
  %79 = load i32, i32* @touchkit_ps2_process_byte, align 4
  %80 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %81 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %83 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %82, i32 0, i32 2
  store i32 5, i32* %83, align 8
  br label %84

84:                                               ; preds = %52, %49
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %46, %24
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @TOUCHKIT_SEND_PARMS(i32, i32, i8 zeroext) #1

declare dso_local i64 @ps2_command(i32*, i8*, i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
