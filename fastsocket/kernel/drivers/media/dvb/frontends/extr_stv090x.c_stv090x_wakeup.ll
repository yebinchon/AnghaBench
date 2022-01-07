; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i64 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Wake %s from standby\00", align 1
@STV0900 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"STV0900\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"STV0903\00", align 1
@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@STANDBY_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR1 = common dso_local global i32 0, align 4
@ADC1_PON_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv090x_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_wakeup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  store %struct.stv090x_state* %8, %struct.stv090x_state** %4, align 8
  %9 = load i32, i32* @FE_DEBUG, align 4
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %11 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STV0900, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %9, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %19 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %20 = call i32 @stv090x_read_reg(%struct.stv090x_state* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @STANDBY_FIELD, align 4
  %23 = call i32 @STV090x_SETFIELD(i32 %21, i32 %22, i32 0)
  %24 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %25 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @stv090x_write_reg(%struct.stv090x_state* %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %32 = load i32, i32* @STV090x_TSTTNR1, align 4
  %33 = call i32 @stv090x_read_reg(%struct.stv090x_state* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ADC1_PON_FIELD, align 4
  %36 = call i32 @STV090x_SETFIELD(i32 %34, i32 %35, i32 1)
  %37 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %38 = load i32, i32* @STV090x_TSTTNR1, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @stv090x_write_reg(%struct.stv090x_state* %37, i32 %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %44

43:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %47

44:                                               ; preds = %42, %29
  %45 = load i32, i32* @FE_ERROR, align 4
  %46 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %45, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD(i32, i32, i32) #1

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
