; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_set_min_srate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_set_min_srate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SFRLOW1 = common dso_local global i32 0, align 4
@SFRLOW0 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32, i32)* @stv090x_set_min_srate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_min_srate(%struct.stv090x_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sdiv i32 %9, 100
  %11 = mul nsw i32 95, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 60000000
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 12
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 6000000
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 6
  store i32 %30, i32* %8, align 4
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %32 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 10
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %50

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, 9
  store i32 %41, i32* %8, align 4
  %42 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %43 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 7
  %48 = load i32, i32* %8, align 4
  %49 = sdiv i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %39, %28
  br label %51

51:                                               ; preds = %50, %14
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %53 = load i32, i32* @SFRLOW1, align 4
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 127
  %57 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %52, i32 %53, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %69

60:                                               ; preds = %51
  %61 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %62 = load i32, i32* @SFRLOW0, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 255
  %65 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %61, i32 %62, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %72

69:                                               ; preds = %67, %59
  %70 = load i32, i32* @FE_ERROR, align 4
  %71 = call i32 @dprintk(i32 %70, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
