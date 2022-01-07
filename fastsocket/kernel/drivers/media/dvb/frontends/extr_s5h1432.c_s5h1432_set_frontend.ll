; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1432.c_s5h1432_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1432.c_s5h1432_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.s5h1432_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.s5h1432_state = type { i64 }
%struct.dvb_frontend_parameters = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IF_FREQ_4_MHZ = common dso_local global i32 0, align 4
@S5H1432_I2C_TOP_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @s5h1432_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1432_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s5h1432_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  store i32 8, i32* %6, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.s5h1432_state*, %struct.s5h1432_state** %9, align 8
  store %struct.s5h1432_state* %10, %struct.s5h1432_state** %7, align 8
  %11 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.s5h1432_state*, %struct.s5h1432_state** %7, align 8
  %15 = getelementptr inbounds %struct.s5h1432_state, %struct.s5h1432_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %23, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %26 = bitcast %struct.dvb_frontend* %25 to %struct.dvb_frontend.0*
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %28 = call i32 %24(%struct.dvb_frontend.0* %26, %struct.dvb_frontend_parameters* %27)
  %29 = call i32 @msleep(i32 300)
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @s5h1432_set_channel_bandwidth(%struct.dvb_frontend* %30, i32 %31)
  %33 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %50 [
    i32 130, label %38
    i32 129, label %42
    i32 128, label %46
  ]

38:                                               ; preds = %19
  store i32 6, i32* %6, align 4
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %40 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %41 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %39, i32 %40)
  br label %51

42:                                               ; preds = %19
  store i32 7, i32* %6, align 4
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %44 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %45 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %43, i32 %44)
  br label %51

46:                                               ; preds = %19
  store i32 8, i32* %6, align 4
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %48 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %49 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %47, i32 %48)
  br label %51

50:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %96

51:                                               ; preds = %46, %42, %38
  %52 = call i32 @msleep(i32 30)
  %53 = load %struct.s5h1432_state*, %struct.s5h1432_state** %7, align 8
  %54 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %55 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %53, i32 %54, i32 9, i32 26)
  %56 = call i32 @msleep(i32 30)
  %57 = load %struct.s5h1432_state*, %struct.s5h1432_state** %7, align 8
  %58 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %59 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %57, i32 %58, i32 9, i32 27)
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @s5h1432_set_channel_bandwidth(%struct.dvb_frontend* %60, i32 %61)
  %63 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %80 [
    i32 130, label %68
    i32 129, label %72
    i32 128, label %76
  ]

68:                                               ; preds = %51
  store i32 6, i32* %6, align 4
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %70 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %71 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %69, i32 %70)
  br label %81

72:                                               ; preds = %51
  store i32 7, i32* %6, align 4
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %74 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %75 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %73, i32 %74)
  br label %81

76:                                               ; preds = %51
  store i32 8, i32* %6, align 4
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %78 = load i32, i32* @IF_FREQ_4_MHZ, align 4
  %79 = call i32 @s5h1432_set_IF(%struct.dvb_frontend* %77, i32 %78)
  br label %81

80:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %96

81:                                               ; preds = %76, %72, %68
  %82 = call i32 @msleep(i32 30)
  %83 = load %struct.s5h1432_state*, %struct.s5h1432_state** %7, align 8
  %84 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %85 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %83, i32 %84, i32 9, i32 26)
  %86 = call i32 @msleep(i32 30)
  %87 = load %struct.s5h1432_state*, %struct.s5h1432_state** %7, align 8
  %88 = load i32, i32* @S5H1432_I2C_TOP_ADDR, align 4
  %89 = call i32 @s5h1432_writereg(%struct.s5h1432_state* %87, i32 %88, i32 9, i32 27)
  br label %90

90:                                               ; preds = %81, %18
  %91 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.s5h1432_state*, %struct.s5h1432_state** %7, align 8
  %95 = getelementptr inbounds %struct.s5h1432_state, %struct.s5h1432_state* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %80, %50
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s5h1432_set_channel_bandwidth(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @s5h1432_set_IF(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @s5h1432_writereg(%struct.s5h1432_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
