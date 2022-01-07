; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_set_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_7__, %struct.ves1820_state* }
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_6__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.ves1820_state = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@ves1820_set_parameters.reg0x00 = internal constant [5 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16], align 16
@ves1820_set_parameters.reg0x01 = internal constant [5 x i32] [i32 140, i32 140, i32 106, i32 100, i32 92], align 16
@ves1820_set_parameters.reg0x05 = internal constant [5 x i32] [i32 135, i32 100, i32 70, i32 54, i32 38], align 16
@ves1820_set_parameters.reg0x08 = internal constant [5 x i32] [i32 162, i32 116, i32 67, i32 52, i32 35], align 16
@ves1820_set_parameters.reg0x09 = internal constant [5 x i32] [i32 145, i32 150, i32 106, i32 126, i32 107], align 16
@QAM_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ves1820_inittab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @ves1820_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_set_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.ves1820_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.ves1820_state*, %struct.ves1820_state** %9, align 8
  store %struct.ves1820_state* %10, %struct.ves1820_state** %6, align 8
  %11 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @QAM_16, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %117

26:                                               ; preds = %20
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %30, align 8
  %32 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %37, align 8
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %40 = bitcast %struct.dvb_frontend* %39 to %struct.dvb_frontend.1*
  %41 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %42 = call i32 %38(%struct.dvb_frontend.1* %40, %struct.dvb_frontend_parameters* %41)
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %51, align 8
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %54 = bitcast %struct.dvb_frontend* %53 to %struct.dvb_frontend.0*
  %55 = call i32 %52(%struct.dvb_frontend.0* %54, i32 0)
  br label %56

56:                                               ; preds = %48, %33
  br label %57

57:                                               ; preds = %56, %26
  %58 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %59 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ves1820_set_symbolrate(%struct.ves1820_state* %58, i32 %63)
  %65 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %66 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %67 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ves1820_writereg(%struct.ves1820_state* %65, i32 52, i32 %68)
  %70 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x01, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ves1820_writereg(%struct.ves1820_state* %70, i32 1, i32 %74)
  %76 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x05, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ves1820_writereg(%struct.ves1820_state* %76, i32 5, i32 %80)
  %82 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x08, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ves1820_writereg(%struct.ves1820_state* %82, i32 8, i32 %86)
  %88 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x09, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ves1820_writereg(%struct.ves1820_state* %88, i32 9, i32 %92)
  %94 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* @ves1820_set_parameters.reg0x00, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %100 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ves1820_setup_reg0(%struct.ves1820_state* %94, i32 %98, i32 %101)
  %103 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %104 = load i32*, i32** @ves1820_inittab, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ves1820_state*, %struct.ves1820_state** %6, align 8
  %108 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 8, i32 0
  %115 = or i32 %106, %114
  %116 = call i32 @ves1820_writereg(%struct.ves1820_state* %103, i32 2, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %57, %23
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @ves1820_set_symbolrate(%struct.ves1820_state*, i32) #1

declare dso_local i32 @ves1820_writereg(%struct.ves1820_state*, i32, i32) #1

declare dso_local i32 @ves1820_setup_reg0(%struct.ves1820_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
