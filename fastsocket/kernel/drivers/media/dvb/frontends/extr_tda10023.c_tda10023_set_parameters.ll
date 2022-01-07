; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_set_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.tda10023_state* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.tda10023_state = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@tda10023_set_parameters.qamvals = internal global [6 x [6 x i32]] [[6 x i32] [i32 20, i32 120, i32 140, i32 150, i32 120, i32 76], [6 x i32] [i32 0, i32 135, i32 162, i32 145, i32 140, i32 87], [6 x i32] [i32 4, i32 100, i32 116, i32 150, i32 140, i32 87], [6 x i32] [i32 8, i32 70, i32 67, i32 106, i32 106, i32 68], [6 x i32] [i32 12, i32 54, i32 52, i32 126, i32 120, i32 76], [6 x i32] [i32 16, i32 38, i32 35, i32 108, i32 92, i32 60]], align 16
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @tda10023_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10023_set_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.tda10023_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.tda10023_state*, %struct.tda10023_state** %9, align 8
  store %struct.tda10023_state* %10, %struct.tda10023_state** %6, align 8
  %11 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 5
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %107

24:                                               ; preds = %18
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %28, align 8
  %30 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %24
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %35, align 8
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %38 = bitcast %struct.dvb_frontend* %37 to %struct.dvb_frontend.1*
  %39 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %40 = call i32 %36(%struct.dvb_frontend.1* %38, %struct.dvb_frontend_parameters* %39)
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %49, align 8
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %52 = bitcast %struct.dvb_frontend* %51 to %struct.dvb_frontend.0*
  %53 = call i32 %50(%struct.dvb_frontend.0* %52, i32 0)
  br label %54

54:                                               ; preds = %46, %31
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  %57 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tda10023_set_symbolrate(%struct.tda10023_state* %56, i32 %61)
  %63 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tda10023_set_parameters.qamvals, i64 0, i64 %65
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %66, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @tda10023_writereg(%struct.tda10023_state* %63, i32 5, i32 %68)
  %70 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tda10023_set_parameters.qamvals, i64 0, i64 %72
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %73, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @tda10023_writereg(%struct.tda10023_state* %70, i32 8, i32 %75)
  %77 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tda10023_set_parameters.qamvals, i64 0, i64 %79
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %80, i64 0, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @tda10023_writereg(%struct.tda10023_state* %77, i32 9, i32 %82)
  %84 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tda10023_set_parameters.qamvals, i64 0, i64 %86
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %87, i64 0, i64 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @tda10023_writereg(%struct.tda10023_state* %84, i32 180, i32 %89)
  %91 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tda10023_set_parameters.qamvals, i64 0, i64 %93
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %94, i64 0, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @tda10023_writereg(%struct.tda10023_state* %91, i32 182, i32 %96)
  %98 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  %99 = call i32 @tda10023_writebit(%struct.tda10023_state* %98, i32 4, i32 64, i32 64)
  %100 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tda10023_set_parameters.qamvals, i64 0, i64 %102
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %103, i64 0, i64 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @tda10023_setup_reg0(%struct.tda10023_state* %100, i32 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %55, %21
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @tda10023_set_symbolrate(%struct.tda10023_state*, i32) #1

declare dso_local i32 @tda10023_writereg(%struct.tda10023_state*, i32, i32) #1

declare dso_local i32 @tda10023_writebit(%struct.tda10023_state*, i32, i32, i32) #1

declare dso_local i32 @tda10023_setup_reg0(%struct.tda10023_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
