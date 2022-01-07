; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_set_tvnorm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_set_tvnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tvnorm = type { i32, i8, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.tda9887_priv* }
%struct.tda9887_priv = type { i8*, i64, i64, i32 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_MODE_MONO = common dso_local global i64 0, align 8
@radio_mono = common dso_local global %struct.tvnorm zeroinitializer, align 4
@radio_stereo = common dso_local global %struct.tvnorm zeroinitializer, align 4
@tvnorms = common dso_local global %struct.tvnorm* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unsupported tvnorm entry - audio muted\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"configure for: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda9887_set_tvnorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9887_set_tvnorm(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tda9887_priv*, align 8
  %5 = alloca %struct.tvnorm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda9887_priv*, %struct.tda9887_priv** %9, align 8
  store %struct.tda9887_priv* %10, %struct.tda9887_priv** %4, align 8
  store %struct.tvnorm* null, %struct.tvnorm** %5, align 8
  %11 = load %struct.tda9887_priv*, %struct.tda9887_priv** %4, align 8
  %12 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load %struct.tda9887_priv*, %struct.tda9887_priv** %4, align 8
  %15 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.tda9887_priv*, %struct.tda9887_priv** %4, align 8
  %21 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_TUNER_MODE_MONO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.tvnorm* @radio_mono, %struct.tvnorm** %5, align 8
  br label %27

26:                                               ; preds = %19
  store %struct.tvnorm* @radio_stereo, %struct.tvnorm** %5, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %56

28:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.tvnorm*, %struct.tvnorm** @tvnorms, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.tvnorm* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load %struct.tvnorm*, %struct.tvnorm** @tvnorms, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %35, i64 %37
  %39 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tda9887_priv*, %struct.tda9887_priv** %4, align 8
  %42 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load %struct.tvnorm*, %struct.tvnorm** @tvnorms, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %47, i64 %49
  store %struct.tvnorm* %50, %struct.tvnorm** %5, align 8
  br label %55

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %29

55:                                               ; preds = %46, %29
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %58 = icmp eq %struct.tvnorm* null, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

61:                                               ; preds = %56
  %62 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %63 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %67 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %68, i8* %70, align 1
  %71 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %72 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8 %73, i8* %75, align 1
  %76 = load %struct.tvnorm*, %struct.tvnorm** %5, align 8
  %77 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 2
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8 %78, i8* %80, align 1
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %61, %59
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ARRAY_SIZE(%struct.tvnorm*) #1

declare dso_local i32 @tuner_dbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
