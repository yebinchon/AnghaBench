; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda827x.c_tda827xa_lna_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda827x.c_tda827xa_lna_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 (i32, i32, i32, i32)*, %struct.tda827x_priv* }
%struct.tda827x_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.analog_parameters = type { i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@__const.tda827xa_lna_gain.buf = private unnamed_addr constant [2 x i8] c"\22\01", align 1
@.str = private unnamed_addr constant [50 x i8] c"tda827x_config not defined, cannot set LNA gain!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"setting LNA to high gain\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"setting LNA to low gain\0A\00", align 1
@V4L2_STD_MN = common dso_local global i32 0, align 4
@DVB_FRONTEND_COMPONENT_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32, %struct.analog_parameters*)* @tda827xa_lna_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda827xa_lna_gain(%struct.dvb_frontend* %0, i32 %1, %struct.analog_parameters* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.analog_parameters*, align 8
  %7 = alloca %struct.tda827x_priv*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.analog_parameters* %2, %struct.analog_parameters** %6, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.tda827x_priv*, %struct.tda827x_priv** %13, align 8
  store %struct.tda827x_priv* %14, %struct.tda827x_priv** %7, align 8
  %15 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda827xa_lna_gain.buf, i32 0, i32 0), i64 2, i1 false)
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32 2, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = load %struct.tda827x_priv*, %struct.tda827x_priv** %7, align 8
  %22 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp eq %struct.TYPE_3__* null, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %128

27:                                               ; preds = %3
  %28 = load %struct.tda827x_priv*, %struct.tda827x_priv** %7, align 8
  %29 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.tda827x_priv*, %struct.tda827x_priv** %7, align 8
  %35 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %47

45:                                               ; preds = %40
  %46 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.tda827x_priv*, %struct.tda827x_priv** %7, align 8
  %50 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %128 [
    i32 0, label %54
    i32 1, label %55
    i32 2, label %55
    i32 3, label %110
  ]

54:                                               ; preds = %48
  br label %128

55:                                               ; preds = %48, %48
  %56 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %57 = icmp eq %struct.analog_parameters* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %69

59:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  %60 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %61 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @V4L2_STD_MN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %68

67:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %58
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %70, i32 0, i32 0
  %72 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %71, align 8
  %73 = icmp ne i32 (i32, i32, i32, i32)* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %75, i32 0, i32 0
  %77 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %76, align 8
  %78 = load %struct.tda827x_priv*, %struct.tda827x_priv** %7, align 8
  %79 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DVB_FRONTEND_COMPONENT_TUNER, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 %77(i32 %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %74, %69
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 0, i32 1
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %92, i8* %93, align 1
  %94 = load %struct.tda827x_priv*, %struct.tda827x_priv** %7, align 8
  %95 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %107

100:                                              ; preds = %87
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %105, i8* %106, align 1
  br label %107

107:                                              ; preds = %100, %87
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %109 = call i32 @tuner_transfer(%struct.dvb_frontend* %108, %struct.i2c_msg* %11, i32 1)
  br label %128

110:                                              ; preds = %48
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %112 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %111, i32 0, i32 0
  %113 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %112, align 8
  %114 = icmp ne i32 (i32, i32, i32, i32)* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %117 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %116, i32 0, i32 0
  %118 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %117, align 8
  %119 = load %struct.tda827x_priv*, %struct.tda827x_priv** %7, align 8
  %120 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DVB_FRONTEND_COMPONENT_TUNER, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 %118(i32 %123, i32 %124, i32 0, i32 %125)
  br label %127

127:                                              ; preds = %115, %110
  br label %128

128:                                              ; preds = %25, %48, %127, %107, %54
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*) #2

declare dso_local i32 @tuner_transfer(%struct.dvb_frontend*, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
