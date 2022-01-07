; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a20s.c_mb86a20s_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a20s.c_mb86a20s_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.mb86a20s_state* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.mb86a20s_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"signal strength = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mb86a20s_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a20s_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mb86a20s_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %11, align 8
  store %struct.mb86a20s_state* %12, %struct.mb86a20s_state** %5, align 8
  %13 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %22, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %25 = bitcast %struct.dvb_frontend* %24 to %struct.dvb_frontend.0*
  %26 = call i32 %23(%struct.dvb_frontend.0* %25, i32 0)
  br label %27

27:                                               ; preds = %19, %2
  store i32 4095, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %73, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %29, %30
  %32 = udiv i32 %31, 2
  store i32 %32, i32* %8, align 4
  %33 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %5, align 8
  %34 = call i32 @mb86a20s_writereg(%struct.mb86a20s_state* %33, i32 4, i32 31)
  %35 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = lshr i32 %36, 8
  %38 = call i32 @mb86a20s_writereg(%struct.mb86a20s_state* %35, i32 5, i32 %37)
  %39 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %5, align 8
  %40 = call i32 @mb86a20s_writereg(%struct.mb86a20s_state* %39, i32 4, i32 32)
  %41 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mb86a20s_writereg(%struct.mb86a20s_state* %41, i32 4, i32 %42)
  %44 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %5, align 8
  %45 = call i32 @mb86a20s_readreg(%struct.mb86a20s_state* %44, i32 2)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %28
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %50, %51
  %53 = udiv i32 %52, 2
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %28
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %55, %56
  %58 = udiv i32 %57, 2
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %60, %61
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %65, %66
  %68 = udiv i32 %67, 2
  %69 = mul i32 %68, 65535
  %70 = udiv i32 %69, 4095
  %71 = load i32*, i32** %4, align 8
  store i32 %70, i32* %71, align 4
  br label %74

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  br i1 true, label %28, label %74

74:                                               ; preds = %73, %64
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %86, align 8
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %89 = bitcast %struct.dvb_frontend* %88 to %struct.dvb_frontend.0*
  %90 = call i32 %87(%struct.dvb_frontend.0* %89, i32 1)
  br label %91

91:                                               ; preds = %83, %74
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @mb86a20s_writereg(%struct.mb86a20s_state*, i32, i32) #1

declare dso_local i32 @mb86a20s_readreg(%struct.mb86a20s_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
