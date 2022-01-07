; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_mt352_demod_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_mt352_demod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@CLOCK_CTL = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@ADC_CTL_1 = common dso_local global i32 0, align 4
@AGC_TARGET = common dso_local global i32 0, align 4
@__const.m920x_mt352_demod_init.sec_agc = private unnamed_addr constant [9 x i32] [i32 105, i32 0, i32 255, i32 255, i32 64, i32 255, i32 0, i32 64, i32 64], align 16
@__const.m920x_mt352_demod_init.unk1 = private unnamed_addr constant [2 x i32] [i32 147, i32 26], align 4
@__const.m920x_mt352_demod_init.unk2 = private unnamed_addr constant [2 x i32] [i32 181, i32 122], align 4
@.str = private unnamed_addr constant [13 x i8] c"Demod init!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @m920x_mt352_demod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_mt352_demod_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [9 x i32], align 16
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %14 = load i32, i32* @CONFIG, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 61, i32* %15, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* @CLOCK_CTL, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 48, i32* %18, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* @RESET, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 128, i32* %21, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* @ADC_CTL_1, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 64, i32* %24, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %26 = load i32, i32* @AGC_TARGET, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 28, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 32, i32* %28, align 4
  %29 = bitcast [9 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([9 x i32]* @__const.m920x_mt352_demod_init.sec_agc to i8*), i64 36, i1 false)
  %30 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast ([2 x i32]* @__const.m920x_mt352_demod_init.unk1 to i8*), i64 8, i1 false)
  %31 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 bitcast ([2 x i32]* @__const.m920x_mt352_demod_init.unk2 to i8*), i64 8, i1 false)
  %32 = call i32 @deb(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = call i32 @mt352_write(%struct.dvb_frontend* %33, i32* %34, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %105

41:                                               ; preds = %1
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = call i32 @mt352_write(%struct.dvb_frontend* %42, i32* %43, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %105

50:                                               ; preds = %41
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = call i32 @mt352_write(%struct.dvb_frontend* %51, i32* %52, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %105

59:                                               ; preds = %50
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = call i32 @mt352_write(%struct.dvb_frontend* %60, i32* %61, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %105

68:                                               ; preds = %59
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %72 = call i32 @ARRAY_SIZE(i32* %71)
  %73 = call i32 @mt352_write(%struct.dvb_frontend* %69, i32* %70, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %105

77:                                               ; preds = %68
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %79 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = call i32 @mt352_write(%struct.dvb_frontend* %78, i32* %79, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %105

86:                                               ; preds = %77
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %90 = call i32 @ARRAY_SIZE(i32* %89)
  %91 = call i32 @mt352_write(%struct.dvb_frontend* %87, i32* %88, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %105

95:                                               ; preds = %86
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %99 = call i32 @ARRAY_SIZE(i32* %98)
  %100 = call i32 @mt352_write(%struct.dvb_frontend* %96, i32* %97, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %105

104:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %102, %93, %84, %75, %66, %57, %48, %39
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @deb(i8*) #2

declare dso_local i32 @mt352_write(%struct.dvb_frontend*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
