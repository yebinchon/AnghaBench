; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I2CRPT = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Enable Gate\00", align 1
@I2CT_ON_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Disable Gate\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_i2c_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %11 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %17 = load i32, i32* @I2CRPT, align 4
  %18 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i32, i32* @FE_DEBUG, align 4
  %23 = call i32 @dprintk(i32 %22, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @I2CT_ON_FIELD, align 4
  %26 = call i32 @STV090x_SETFIELD_Px(i32 %24, i32 %25, i32 1)
  %27 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %28 = load i32, i32* @I2CRPT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %27, i32 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %57

33:                                               ; preds = %21
  br label %47

34:                                               ; preds = %15
  %35 = load i32, i32* @FE_DEBUG, align 4
  %36 = call i32 @dprintk(i32 %35, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @I2CT_ON_FIELD, align 4
  %39 = call i32 @STV090x_SETFIELD_Px(i32 %37, i32 %38, i32 0)
  %40 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %41 = load i32, i32* @I2CRPT, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %40, i32 %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %57

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %52 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %50, %47
  store i32 0, i32* %3, align 4
  br label %65

57:                                               ; preds = %45, %32
  %58 = load i32, i32* @FE_ERROR, align 4
  %59 = call i32 @dprintk(i32 %58, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %61 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  store i32 -1, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %56
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
