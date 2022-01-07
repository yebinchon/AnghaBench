; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_diseqc_send_burst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24123.c_cx24123_diseqc_send_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24123_state* }
%struct.cx24123_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SEC_MINI_A = common dso_local global i64 0, align 8
@SEC_MINI_B = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @cx24123_diseqc_send_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_diseqc_send_burst(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cx24123_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %10, align 8
  store %struct.cx24123_state* %11, %struct.cx24123_state** %6, align 8
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %14 = call i32 @cx24123_readreg(%struct.cx24123_state* %13, i32 41)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 16
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, -81
  %22 = call i32 @cx24123_writereg(%struct.cx24123_state* %19, i32 41, i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %25 = call i32 @cx24123_wait_for_diseqc(%struct.cx24123_state* %24)
  %26 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %27 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %28 = call i32 @cx24123_readreg(%struct.cx24123_state* %27, i32 42)
  %29 = or i32 %28, 4
  %30 = call i32 @cx24123_writereg(%struct.cx24123_state* %26, i32 42, i32 %29)
  %31 = call i32 @msleep(i32 30)
  %32 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %33 = call i32 @cx24123_readreg(%struct.cx24123_state* %32, i32 41)
  store i32 %33, i32* %7, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @SEC_MINI_A, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 144
  %41 = or i32 %40, 64
  %42 = call i32 @cx24123_writereg(%struct.cx24123_state* %38, i32 41, i32 %41)
  br label %58

43:                                               ; preds = %23
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @SEC_MINI_B, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 144
  %51 = or i32 %50, 64
  %52 = or i32 %51, 8
  %53 = call i32 @cx24123_writereg(%struct.cx24123_state* %48, i32 41, i32 %52)
  br label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %75

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %60 = call i32 @cx24123_wait_for_diseqc(%struct.cx24123_state* %59)
  %61 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %62 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %63 = call i32 @cx24123_readreg(%struct.cx24123_state* %62, i32 42)
  %64 = and i32 %63, 251
  %65 = call i32 @cx24123_writereg(%struct.cx24123_state* %61, i32 42, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 16
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, -65
  %73 = call i32 @cx24123_writereg(%struct.cx24123_state* %70, i32 41, i32 %72)
  br label %74

74:                                               ; preds = %69, %58
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @cx24123_wait_for_diseqc(%struct.cx24123_state*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
