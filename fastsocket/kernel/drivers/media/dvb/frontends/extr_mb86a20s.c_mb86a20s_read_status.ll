; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a20s.c_mb86a20s_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a20s.c_mb86a20s_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.mb86a20s_state* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.mb86a20s_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"val = %d, status = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mb86a20s_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a20s_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mb86a20s_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %8, align 8
  store %struct.mb86a20s_state* %9, %struct.mb86a20s_state** %5, align 8
  %10 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %20, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = bitcast %struct.dvb_frontend* %22 to %struct.dvb_frontend.0*
  %24 = call i32 %21(%struct.dvb_frontend.0* %23, i32 0)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %5, align 8
  %27 = call i32 @mb86a20s_readreg(%struct.mb86a20s_state* %26, i32 10)
  %28 = and i32 %27, 15
  store i32 %28, i32* %6, align 4
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %37, align 8
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %40 = bitcast %struct.dvb_frontend* %39 to %struct.dvb_frontend.0*
  %41 = call i32 %38(%struct.dvb_frontend.0* %40, i32 1)
  br label %42

42:                                               ; preds = %34, %25
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @FE_HAS_CARRIER, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %6, align 4
  %60 = icmp sge i32 %59, 5
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @FE_HAS_VITERBI, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %67, 7
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @FE_HAS_SYNC, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %6, align 4
  %76 = icmp sge i32 %75, 8
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @FE_HAS_LOCK, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* %6, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %85)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @mb86a20s_readreg(%struct.mb86a20s_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
