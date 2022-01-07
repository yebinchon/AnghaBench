; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dvb_frontend*)* }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Set %s to sleep\00", align 1
@STV0900 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"STV0900\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"STV0903\00", align 1
@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@STANDBY_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR1 = common dso_local global i32 0, align 4
@ADC1_PON_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv090x_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  store %struct.stv090x_state* %8, %struct.stv090x_state** %4, align 8
  %9 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %10 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %9, i32 1)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %75

13:                                               ; preds = %1
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %15 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64 (%struct.dvb_frontend*)*, i64 (%struct.dvb_frontend*)** %17, align 8
  %19 = icmp ne i64 (%struct.dvb_frontend*)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %22 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (%struct.dvb_frontend*)*, i64 (%struct.dvb_frontend*)** %24, align 8
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = call i64 %25(%struct.dvb_frontend* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %72

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %13
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %33 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %32, i32 0)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %75

36:                                               ; preds = %31
  %37 = load i32, i32* @FE_DEBUG, align 4
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %39 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STV0900, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %37, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %47 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %48 = call i32 @stv090x_read_reg(%struct.stv090x_state* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @STANDBY_FIELD, align 4
  %51 = call i32 @STV090x_SETFIELD(i32 %49, i32 %50, i32 1)
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %53 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @stv090x_write_reg(%struct.stv090x_state* %52, i32 %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  br label %75

58:                                               ; preds = %36
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %60 = load i32, i32* @STV090x_TSTTNR1, align 4
  %61 = call i32 @stv090x_read_reg(%struct.stv090x_state* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ADC1_PON_FIELD, align 4
  %64 = call i32 @STV090x_SETFIELD(i32 %62, i32 %63, i32 0)
  %65 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %66 = load i32, i32* @STV090x_TSTTNR1, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @stv090x_write_reg(%struct.stv090x_state* %65, i32 %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %75

71:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %78

72:                                               ; preds = %29
  %73 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %74 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %73, i32 0)
  br label %75

75:                                               ; preds = %72, %70, %57, %35, %12
  %76 = load i32, i32* @FE_ERROR, align 4
  %77 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %76, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

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
