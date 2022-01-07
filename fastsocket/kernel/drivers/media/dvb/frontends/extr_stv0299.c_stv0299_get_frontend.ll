; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0299.c_stv0299_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0299.c_stv0299_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0299_state* }
%struct.stv0299_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @stv0299_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0299_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.stv0299_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv0299_state*, %struct.stv0299_state** %9, align 8
  store %struct.stv0299_state* %10, %struct.stv0299_state** %5, align 8
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %5, align 8
  %12 = call i32 @stv0299_readreg(%struct.stv0299_state* %11, i32 34)
  %13 = shl i32 %12, 8
  %14 = load %struct.stv0299_state*, %struct.stv0299_state** %5, align 8
  %15 = call i32 @stv0299_readreg(%struct.stv0299_state* %14, i32 35)
  %16 = or i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.stv0299_state*, %struct.stv0299_state** %5, align 8
  %20 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 16
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 500
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, 1000
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.stv0299_state*, %struct.stv0299_state** %5, align 8
  %37 = call i32 @stv0299_readreg(%struct.stv0299_state* %36, i32 12)
  %38 = and i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load %struct.stv0299_state*, %struct.stv0299_state** %5, align 8
  %40 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %2
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @INVERSION_ON, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @INVERSION_OFF, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.stv0299_state*, %struct.stv0299_state** %5, align 8
  %61 = call i32 @stv0299_get_fec(%struct.stv0299_state* %60)
  %62 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %63 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load %struct.stv0299_state*, %struct.stv0299_state** %5, align 8
  %67 = call i32 @stv0299_get_symbolrate(%struct.stv0299_state* %66)
  %68 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %69 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  ret i32 0
}

declare dso_local i32 @stv0299_readreg(%struct.stv0299_state*, i32) #1

declare dso_local i32 @stv0299_get_fec(%struct.stv0299_state*) #1

declare dso_local i32 @stv0299_get_symbolrate(%struct.stv0299_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
