; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv6110x_state* }
%struct.stv6110x_state = type { i32* }

@STV6110x_CTRL1 = common dso_local global i64 0, align 8
@CTRL1_SYN = common dso_local global i32 0, align 4
@CTRL1_RX = common dso_local global i32 0, align 4
@CTRL1_LPT = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O Error\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv6110x_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110x_set_mode(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv6110x_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv6110x_state*, %struct.stv6110x_state** %9, align 8
  store %struct.stv6110x_state* %10, %struct.stv6110x_state** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %62 [
    i32 129, label %12
    i32 128, label %37
  ]

12:                                               ; preds = %2
  %13 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %14 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @STV6110x_CTRL1, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CTRL1_SYN, align 4
  %20 = call i32 @STV6110x_SETFIELD(i32 %18, i32 %19, i32 0)
  %21 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %22 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @STV6110x_CTRL1, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CTRL1_RX, align 4
  %28 = call i32 @STV6110x_SETFIELD(i32 %26, i32 %27, i32 0)
  %29 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %30 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @STV6110x_CTRL1, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CTRL1_LPT, align 4
  %36 = call i32 @STV6110x_SETFIELD(i32 %34, i32 %35, i32 0)
  br label %62

37:                                               ; preds = %2
  %38 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %39 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @STV6110x_CTRL1, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CTRL1_SYN, align 4
  %45 = call i32 @STV6110x_SETFIELD(i32 %43, i32 %44, i32 1)
  %46 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %47 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @STV6110x_CTRL1, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CTRL1_RX, align 4
  %53 = call i32 @STV6110x_SETFIELD(i32 %51, i32 %52, i32 1)
  %54 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %55 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @STV6110x_CTRL1, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CTRL1_LPT, align 4
  %61 = call i32 @STV6110x_SETFIELD(i32 %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %2, %37, %12
  %63 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %64 = load i64, i64* @STV6110x_CTRL1, align 8
  %65 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %66 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @STV6110x_CTRL1, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @stv6110x_write_reg(%struct.stv6110x_state* %63, i64 %64, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load i32, i32* @FE_ERROR, align 4
  %76 = call i32 @dprintk(i32 %75, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @STV6110x_SETFIELD(i32, i32, i32) #1

declare dso_local i32 @stv6110x_write_reg(%struct.stv6110x_state*, i64, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
