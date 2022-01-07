; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_vitclk_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_vitclk_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STV090x_STOPCLK2 = common dso_local global i32 0, align 4
@STOP_CLKVIT1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKVIT2_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Wrong demodulator!\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_vitclk_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_vitclk_ctl(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %8 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %60 [
    i32 129, label %10
    i32 128, label %35
  ]

10:                                               ; preds = %2
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %12 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %17 = load i32, i32* @STV090x_STOPCLK2, align 4
  %18 = call i32 @stv090x_read_reg(%struct.stv090x_state* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @STOP_CLKVIT1_FIELD, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @STV090x_SETFIELD(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %24 = load i32, i32* @STV090x_STOPCLK2, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @stv090x_write_reg(%struct.stv090x_state* %23, i32 %24, i32 %25)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  br label %64

29:                                               ; preds = %10
  %30 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %31 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %63

35:                                               ; preds = %2
  %36 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %37 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %42 = load i32, i32* @STV090x_STOPCLK2, align 4
  %43 = call i32 @stv090x_read_reg(%struct.stv090x_state* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @STOP_CLKVIT2_FIELD, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @STV090x_SETFIELD(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %49 = load i32, i32* @STV090x_STOPCLK2, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @stv090x_write_reg(%struct.stv090x_state* %48, i32 %49, i32 %50)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %64

54:                                               ; preds = %35
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %56 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %63

60:                                               ; preds = %2
  %61 = load i32, i32* @FE_ERROR, align 4
  %62 = call i32 @dprintk(i32 %61, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %54, %29
  store i32 0, i32* %3, align 4
  br label %72

64:                                               ; preds = %53, %28
  %65 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %66 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* @FE_ERROR, align 4
  %71 = call i32 @dprintk(i32 %70, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %63
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD(i32, i32, i32) #1

declare dso_local i32 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
