; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.cx24123_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32*)* }
%struct.dvb_frontend.0 = type opaque
%struct.cx24123_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@TUNER_STATUS_LOCKED = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cx24123_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cx24123_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %10, align 8
  store %struct.cx24123_state* %11, %struct.cx24123_state** %5, align 8
  %12 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %13 = call i32 @cx24123_readreg(%struct.cx24123_state* %12, i32 20)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %16 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %25, align 8
  %27 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %32, align 8
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = bitcast %struct.dvb_frontend* %34 to %struct.dvb_frontend.0*
  %36 = call i32 %33(%struct.dvb_frontend.0* %35, i32* %7)
  br label %37

37:                                               ; preds = %28, %21
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TUNER_STATUS_LOCKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %60

48:                                               ; preds = %2
  %49 = load %struct.cx24123_state*, %struct.cx24123_state** %5, align 8
  %50 = call i32 @cx24123_readreg(%struct.cx24123_state* %49, i32 32)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %48
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 2
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @FE_HAS_CARRIER, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @FE_HAS_VITERBI, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @FE_HAS_SYNC, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 128
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* @FE_HAS_LOCK, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %87
  ret i32 0
}

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
