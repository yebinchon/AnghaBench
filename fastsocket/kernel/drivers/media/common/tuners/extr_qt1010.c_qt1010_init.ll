; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_qt1010.c_qt1010_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_qt1010.c_qt1010_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.qt1010_priv* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.qt1010_priv = type { i64, i64, i64 }
%struct.dvb_frontend_parameters = type { i32 }

@__const.qt1010_init.i2c_data = private unnamed_addr constant [34 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 128, i32 1, i32 128, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 13, i32 132, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 14, i32 183, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 42, i32 35, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 44, i32 220, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 37, i32 64, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 129, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 43, i32 112, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 42, i32 35, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 38, i32 8, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 130, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 5, i32 20, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 6, i32 68, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 7, i32 40, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 8, i32 11, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 17, i32 253, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 34, i32 13, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 208, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 6, i32 64, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 22, i32 240, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 2, i32 56, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 3, i32 24, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 32, i32 224, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 31, i32 32, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 130, i32 132, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 129, i32 32, i32 32, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 3, i32 25, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 2, i32 63, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 33, i32 83, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 129, i32 33, i32 255, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 17, i32 253, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 5, i32 52, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 6, i32 68, i32 0, i32 0, i32 0 }, %struct.TYPE_5__ { i32 128, i32 8, i32 8, i32 0, i32 0, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @qt1010_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1010_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.qt1010_priv*, align 8
  %5 = alloca %struct.dvb_frontend_parameters, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca [34 x %struct.TYPE_5__], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.qt1010_priv*, %struct.qt1010_priv** %12, align 8
  store %struct.qt1010_priv* %13, %struct.qt1010_priv** %4, align 8
  store i32 0, i32* %6, align 4
  store i64* null, i64** %9, align 8
  %14 = bitcast [34 x %struct.TYPE_5__]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([34 x %struct.TYPE_5__]* @__const.qt1010_init.i2c_data to i8*), i64 816, i1 false)
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %23, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = bitcast %struct.dvb_frontend* %25 to %struct.dvb_frontend.0*
  %27 = call i32 %24(%struct.dvb_frontend.0* %26, i32 1)
  br label %28

28:                                               ; preds = %20, %1
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %113, %28
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 0
  %32 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %116

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %107 [
    i32 128, label %39
    i32 129, label %50
    i32 130, label %68
  ]

39:                                               ; preds = %34
  %40 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @qt1010_writereg(%struct.qt1010_priv* %40, i32 %44, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %107

50:                                               ; preds = %34
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %58 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %57, i32 0, i32 0
  store i64* %58, i64** %9, align 8
  br label %60

59:                                               ; preds = %50
  store i64* %8, i64** %9, align 8
  br label %60

60:                                               ; preds = %59, %56
  %61 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i64*, i64** %9, align 8
  %67 = call i32 @qt1010_readreg(%struct.qt1010_priv* %61, i32 %65, i64* %66)
  store i32 %67, i32* %6, align 4
  br label %107

68:                                               ; preds = %34
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %76 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %75, i32 0, i32 1
  store i64* %76, i64** %9, align 8
  br label %88

77:                                               ; preds = %68
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 31
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %85 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %84, i32 0, i32 2
  store i64* %85, i64** %9, align 8
  br label %87

86:                                               ; preds = %77
  store i64* %8, i64** %9, align 8
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %74
  %89 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  %92 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds [34 x %struct.TYPE_5__], [34 x %struct.TYPE_5__]* %10, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = call i32 @qt1010_init_meas1(%struct.qt1010_priv* %89, i32 %94, i32 %98, i32 %102, i64* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %34, %88, %60, %39
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %135

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %7, align 8
  br label %29

116:                                              ; preds = %29
  store i64 49, i64* %7, align 8
  br label %117

117:                                              ; preds = %128, %116
  %118 = load i64, i64* %7, align 8
  %119 = icmp ult i64 %118, 58
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load %struct.qt1010_priv*, %struct.qt1010_priv** %4, align 8
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @qt1010_init_meas2(%struct.qt1010_priv* %121, i64 %122, i64* %8)
  store i32 %123, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %135

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %7, align 8
  br label %117

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %5, i32 0, i32 0
  store i32 545000000, i32* %132, align 4
  %133 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %134 = call i32 @qt1010_set_params(%struct.dvb_frontend* %133, %struct.dvb_frontend_parameters* %5)
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %125, %110
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #2

declare dso_local i32 @qt1010_writereg(%struct.qt1010_priv*, i32, i32) #2

declare dso_local i32 @qt1010_readreg(%struct.qt1010_priv*, i32, i64*) #2

declare dso_local i32 @qt1010_init_meas1(%struct.qt1010_priv*, i32, i32, i32, i64*) #2

declare dso_local i32 @qt1010_init_meas2(%struct.qt1010_priv*, i64, i64*) #2

declare dso_local i32 @qt1010_set_params(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
