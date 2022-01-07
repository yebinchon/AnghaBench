; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp7045-fe.c_vp7045_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp7045-fe.c_vp7045_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.vp7045_fe_state* }
%struct.vp7045_fe_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LOCK_TUNER_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @vp7045_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp7045_fe_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.vp7045_fe_state*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %10, align 8
  store %struct.vp7045_fe_state* %11, %struct.vp7045_fe_state** %6, align 8
  %12 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %42 [
    i32 129, label %33
    i32 130, label %35
    i32 131, label %37
    i32 128, label %39
  ]

33:                                               ; preds = %2
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 8, i32* %34, align 16
  br label %45

35:                                               ; preds = %2
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 7, i32* %36, align 16
  br label %45

37:                                               ; preds = %2
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 6, i32* %38, align 16
  br label %45

39:                                               ; preds = %2
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %37, %35, %33
  %46 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %6, align 8
  %47 = getelementptr inbounds %struct.vp7045_fe_state, %struct.vp7045_fe_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @LOCK_TUNER_COMMAND, align 4
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %51 = call i32 @vp7045_usb_op(i32 %48, i32 %49, i32* %50, i32 5, i32* null, i32 0, i32 200)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %42, %39
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @vp7045_usb_op(i32, i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
