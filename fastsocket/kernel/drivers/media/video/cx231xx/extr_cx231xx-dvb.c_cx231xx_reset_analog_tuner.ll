; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-dvb.c_cx231xx_reset_analog_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-dvb.c_cx231xx_reset_analog_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [31 x i8] c"Reloading firmware for XC5000\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"XC5000 firmware download completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"XC5000 firmware download failed !!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_reset_analog_tuner(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_tuner_ops*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %56

9:                                                ; preds = %1
  %10 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %56

16:                                               ; preds = %9
  %17 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.dvb_tuner_ops* %23, %struct.dvb_tuner_ops** %4, align 8
  %24 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %25 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_6__*)* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %16
  %29 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %28
  %34 = call i32 @cx231xx_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %36, align 8
  %38 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 %37(%struct.TYPE_6__* %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = call i32 @cx231xx_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %54

50:                                               ; preds = %33
  %51 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = call i32 @cx231xx_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %28, %16
  br label %56

56:                                               ; preds = %55, %9, %1
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cx231xx_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
