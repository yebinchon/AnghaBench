; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_set_tone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i32 }

@DISTXCTL = common dso_local global i32 0, align 4
@DISTX_MODE_FIELD = common dso_local global i32 0, align 4
@DISEQC_RESET_FIELD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv090x_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv090x_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %9, align 8
  store %struct.stv090x_state* %10, %struct.stv090x_state** %6, align 8
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %12 = load i32, i32* @DISTXCTL, align 4
  %13 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %53 [
    i32 128, label %15
    i32 129, label %39
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @DISTX_MODE_FIELD, align 4
  %18 = call i32 @STV090x_SETFIELD_Px(i32 %16, i32 %17, i32 0)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @DISEQC_RESET_FIELD, align 4
  %21 = call i32 @STV090x_SETFIELD_Px(i32 %19, i32 %20, i32 1)
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %23 = load i32, i32* @DISTXCTL, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %22, i32 %23, i32 %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %57

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DISEQC_RESET_FIELD, align 4
  %31 = call i32 @STV090x_SETFIELD_Px(i32 %29, i32 %30, i32 0)
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %33 = load i32, i32* @DISTXCTL, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %32, i32 %33, i32 %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %57

38:                                               ; preds = %28
  br label %56

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DISTX_MODE_FIELD, align 4
  %42 = call i32 @STV090x_SETFIELD_Px(i32 %40, i32 %41, i32 0)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @DISEQC_RESET_FIELD, align 4
  %45 = call i32 @STV090x_SETFIELD_Px(i32 %43, i32 %44, i32 1)
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %47 = load i32, i32* @DISTXCTL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %46, i32 %47, i32 %48)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %57

52:                                               ; preds = %39
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %52, %38
  store i32 0, i32* %3, align 4
  br label %60

57:                                               ; preds = %51, %37, %27
  %58 = load i32, i32* @FE_ERROR, align 4
  %59 = call i32 @dprintk(i32 %58, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %56, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
