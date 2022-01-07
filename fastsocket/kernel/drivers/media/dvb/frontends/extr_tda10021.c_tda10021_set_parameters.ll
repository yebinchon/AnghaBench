; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10021.c_tda10021_set_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10021.c_tda10021_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.tda10021_state* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.tda10021_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@tda10021_set_parameters.reg0x00 = internal constant [6 x i32] [i32 20, i32 0, i32 4, i32 8, i32 12, i32 16], align 16
@tda10021_set_parameters.reg0x01 = internal constant [6 x i32] [i32 120, i32 140, i32 140, i32 106, i32 120, i32 92], align 16
@tda10021_set_parameters.reg0x05 = internal constant [6 x i32] [i32 120, i32 135, i32 100, i32 70, i32 54, i32 38], align 16
@tda10021_set_parameters.reg0x08 = internal constant [6 x i32] [i32 140, i32 162, i32 116, i32 67, i32 52, i32 35], align 16
@tda10021_set_parameters.reg0x09 = internal constant [6 x i32] [i32 150, i32 145, i32 150, i32 106, i32 126, i32 107], align 16
@EINVAL = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @tda10021_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10021_set_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.tda10021_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.tda10021_state*, %struct.tda10021_state** %9, align 8
  store %struct.tda10021_state* %10, %struct.tda10021_state** %6, align 8
  %11 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %11, i32 0, i32 1
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
  br label %116

24:                                               ; preds = %18
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @INVERSION_ON, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @INVERSION_OFF, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %116

39:                                               ; preds = %30, %24
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %43, align 8
  %45 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %39
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %50, align 8
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %53 = bitcast %struct.dvb_frontend* %52 to %struct.dvb_frontend.1*
  %54 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %55 = call i32 %51(%struct.dvb_frontend.1* %53, %struct.dvb_frontend_parameters* %54)
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %46
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %63 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %64, align 8
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %67 = bitcast %struct.dvb_frontend* %66 to %struct.dvb_frontend.0*
  %68 = call i32 %65(%struct.dvb_frontend.0* %67, i32 0)
  br label %69

69:                                               ; preds = %61, %46
  br label %70

70:                                               ; preds = %69, %39
  %71 = load %struct.tda10021_state*, %struct.tda10021_state** %6, align 8
  %72 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @tda10021_set_symbolrate(%struct.tda10021_state* %71, i32 %76)
  %78 = load %struct.tda10021_state*, %struct.tda10021_state** %6, align 8
  %79 = load %struct.tda10021_state*, %struct.tda10021_state** %6, align 8
  %80 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @_tda10021_writereg(%struct.tda10021_state* %78, i32 52, i32 %81)
  %83 = load %struct.tda10021_state*, %struct.tda10021_state** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* @tda10021_set_parameters.reg0x01, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @_tda10021_writereg(%struct.tda10021_state* %83, i32 1, i32 %87)
  %89 = load %struct.tda10021_state*, %struct.tda10021_state** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* @tda10021_set_parameters.reg0x05, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @_tda10021_writereg(%struct.tda10021_state* %89, i32 5, i32 %93)
  %95 = load %struct.tda10021_state*, %struct.tda10021_state** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* @tda10021_set_parameters.reg0x08, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @_tda10021_writereg(%struct.tda10021_state* %95, i32 8, i32 %99)
  %101 = load %struct.tda10021_state*, %struct.tda10021_state** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* @tda10021_set_parameters.reg0x09, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @_tda10021_writereg(%struct.tda10021_state* %101, i32 9, i32 %105)
  %107 = load %struct.tda10021_state*, %struct.tda10021_state** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* @tda10021_set_parameters.reg0x00, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %113 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @tda10021_setup_reg0(%struct.tda10021_state* %107, i32 %111, i32 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %70, %36, %21
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @tda10021_set_symbolrate(%struct.tda10021_state*, i32) #1

declare dso_local i32 @_tda10021_writereg(%struct.tda10021_state*, i32, i32) #1

declare dso_local i32 @tda10021_setup_reg0(%struct.tda10021_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
