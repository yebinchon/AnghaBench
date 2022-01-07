; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tea5761.c___set_radio_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tea5761.c___set_radio_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tea5761_priv* }
%struct.tea5761_priv = type { i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"radio freq counter %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TEA5761 set to standby mode\0A\00", align 1
@TEA5761_TNCTRL_MU = common dso_local global i8 0, align 1
@TEA5761_TNCTRL_PUPD_0 = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"TEA5761 set to mono\0A\00", align 1
@TEA5761_TNCTRL_MST = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"TEA5761 set to stereo\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 5)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @__set_radio_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_radio_freq(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tea5761_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [7 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.tea5761_priv*, %struct.tea5761_priv** %13, align 8
  store %struct.tea5761_priv* %14, %struct.tea5761_priv** %7, align 8
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  %16 = bitcast [7 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %16, i8 0, i64 7, i1 false)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.tea5761_priv*, %struct.tea5761_priv** %7, align 8
  %20 = getelementptr inbounds %struct.tea5761_priv, %struct.tea5761_priv* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8, i8* @TEA5761_TNCTRL_MU, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 5
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %26
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  br label %40

32:                                               ; preds = %3
  %33 = load i8, i8* @TEA5761_TNCTRL_PUPD_0, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 4
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %34
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  br label %40

40:                                               ; preds = %32, %23
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8, i8* @TEA5761_TNCTRL_MST, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 5
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  br label %54

52:                                               ; preds = %40
  %53 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %43
  %55 = load i32, i32* %8, align 4
  %56 = mul i32 %55, 4
  %57 = udiv i32 %56, 16
  %58 = add i32 %57, 700
  %59 = add i32 %58, 225
  %60 = mul i32 1000, %59
  %61 = lshr i32 %60, 15
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = lshr i32 %62, 8
  %64 = and i32 %63, 63
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 1
  store i8 %65, i8* %66, align 1
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 2
  store i8 %69, i8* %70, align 1
  %71 = load i64, i64* @debug, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %54
  %74 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %75 = call i32 @tea5761_status_dump(i8* %74)
  br label %76

76:                                               ; preds = %73, %54
  %77 = load %struct.tea5761_priv*, %struct.tea5761_priv** %7, align 8
  %78 = getelementptr inbounds %struct.tea5761_priv, %struct.tea5761_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %80 = call i32 @tuner_i2c_xfer_send(i32* %78, i8* %79, i32 7)
  store i32 %80, i32* %11, align 4
  %81 = icmp ne i32 7, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i32, i32* %8, align 4
  %87 = mul i32 %86, 125
  %88 = udiv i32 %87, 2
  %89 = load %struct.tea5761_priv*, %struct.tea5761_priv** %7, align 8
  %90 = getelementptr inbounds %struct.tea5761_priv, %struct.tea5761_priv* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tuner_dbg(i8*, ...) #2

declare dso_local i32 @tea5761_status_dump(i8*) #2

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #2

declare dso_local i32 @tuner_warn(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
