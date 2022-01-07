; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8* }

@FSP_REG_DEVICE_ID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Sentelic\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"FingerSensingPad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsp_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %8 = load i32, i32* @FSP_REG_DEVICE_ID, align 4
  %9 = call i64 @fsp_reg_read(%struct.psmouse* %7, i32 %8, i32* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %25 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %27 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  br label %28

28:                                               ; preds = %23, %20
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %17, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @fsp_reg_read(%struct.psmouse*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
