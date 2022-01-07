; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dtt200u-fe.c_dtt200u_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtt200u_fe_state* }
%struct.dtt200u_fe_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SET_BANDWIDTH = common dso_local global i32 0, align 4
@SET_RF_FREQ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FE_TIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dtt200u_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtt200u_fe_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dtt200u_fe_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %13, align 8
  store %struct.dtt200u_fe_state* %14, %struct.dtt200u_fe_state** %6, align 8
  %15 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 250000
  store i32 %18, i32* %9, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %20 = load i32, i32* @SET_BANDWIDTH, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %23 = load i32, i32* @SET_RF_FREQ, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %40 [
    i32 129, label %31
    i32 130, label %33
    i32 131, label %35
    i32 128, label %37
  ]

31:                                               ; preds = %2
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 8, i32* %32, align 4
  br label %43

33:                                               ; preds = %2
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 7, i32* %34, align 4
  br label %43

35:                                               ; preds = %2
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 6, i32* %36, align 4
  br label %43

37:                                               ; preds = %2
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %78

40:                                               ; preds = %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %78

43:                                               ; preds = %35, %33, %31
  %44 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %45 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %48 = call i32 @dvb_usb_generic_write(i32 %46, i32* %47, i32 2)
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %54, i32* %55, align 4
  %56 = load %struct.dtt200u_fe_state*, %struct.dtt200u_fe_state** %6, align 8
  %57 = getelementptr inbounds %struct.dtt200u_fe_state, %struct.dtt200u_fe_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %60 = call i32 @dvb_usb_generic_write(i32 %58, i32* %59, i32 3)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %74, %43
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 30
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = call i32 @msleep(i32 20)
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %67 = call i32 @dtt200u_fe_read_status(%struct.dvb_frontend* %66, i32* %8)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @FE_TIMEDOUT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %61

77:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %40, %37
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @dvb_usb_generic_write(i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dtt200u_fe_read_status(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
