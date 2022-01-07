; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1x93.c_ves1x93_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1x93.c_ves1x93_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ves1x93_state* }
%struct.ves1x93_state = type { i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@INVERSION_AUTO = common dso_local global i64 0, align 8
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @ves1x93_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1x93_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.ves1x93_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.ves1x93_state*, %struct.ves1x93_state** %8, align 8
  store %struct.ves1x93_state* %9, %struct.ves1x93_state** %5, align 8
  %10 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %11 = call i32 @ves1x93_readreg(%struct.ves1x93_state* %10, i32 10)
  %12 = shl i32 %11, 1
  %13 = trunc i32 %12 to i8
  %14 = sext i8 %13 to i32
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 1000
  %23 = sdiv i32 %22, 8
  %24 = mul nsw i32 %16, %23
  %25 = sdiv i32 %24, 16
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %32 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INVERSION_AUTO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %2
  %37 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %38 = call i32 @ves1x93_readreg(%struct.ves1x93_state* %37, i32 15)
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @INVERSION_OFF, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @INVERSION_ON, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %2
  %50 = load %struct.ves1x93_state*, %struct.ves1x93_state** %5, align 8
  %51 = call i32 @ves1x93_get_fec(%struct.ves1x93_state* %50)
  %52 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  ret i32 0
}

declare dso_local i32 @ves1x93_readreg(%struct.ves1x93_state*, i32) #1

declare dso_local i32 @ves1x93_get_fec(%struct.ves1x93_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
