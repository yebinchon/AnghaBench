; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_mb86a16_read_snr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_mb86a16_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.dvb_frontend = type { %struct.mb86a16_state* }
%struct.mb86a16_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@cnr_tab = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SNR (Quality) = [%d dB], Level=%d %%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mb86a16_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a16_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mb86a16_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.mb86a16_state*, %struct.mb86a16_state** %13, align 8
  store %struct.mb86a16_state* %14, %struct.mb86a16_state** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  store i32 30, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %17 = call i32 @mb86a16_read(%struct.mb86a16_state* %16, i32 38, i64* %11)
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @verbose, align 4
  %21 = load i32, i32* @MB86A16_ERROR, align 4
  %22 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %20, i32 %21, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EREMOTEIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cnr_tab, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cnr_tab, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %32, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cnr_tab, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %52

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %26

52:                                               ; preds = %40, %26
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 100
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sdiv i32 %55, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @verbose, align 4
  %61 = load i32, i32* @MB86A16_ERROR, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %60, i32 %61, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 65280, %67
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %52, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i64*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
