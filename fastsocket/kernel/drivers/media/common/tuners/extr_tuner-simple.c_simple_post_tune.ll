; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_post_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_post_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"i2c i/o read error: rc == %d (should be 1)\0A\00", align 1
@TUNER_PLL_LOCKED = common dso_local global i32 0, align 4
@TUNER_CHARGE_PUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tv 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 4)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32, i32, i32)* @simple_post_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_post_tune(%struct.dvb_frontend* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tuner_simple_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %17, align 8
  store %struct.tuner_simple_priv* %18, %struct.tuner_simple_priv** %12, align 8
  %19 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %12, align 8
  %20 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %100 [
    i32 130, label %22
    i32 128, label %26
    i32 129, label %30
  ]

22:                                               ; preds = %5
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @simple_set_aux_byte(%struct.dvb_frontend* %23, i32 %24, i32 32)
  br label %100

26:                                               ; preds = %5
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @simple_set_aux_byte(%struct.dvb_frontend* %27, i32 %28, i32 96)
  br label %100

30:                                               ; preds = %5
  %31 = load i64, i64* @jiffies, align 8
  %32 = call i64 @msecs_to_jiffies(i32 1)
  %33 = add i64 %31, %32
  store i64 %33, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %55, %30
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @time_after(i64 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %101

40:                                               ; preds = %34
  %41 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %12, align 8
  %42 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %41, i32 0, i32 1
  %43 = call i32 @tuner_i2c_xfer_recv(i32* %42, i32* %15, i32 1)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 1, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @tuner_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %57

49:                                               ; preds = %40
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @TUNER_PLL_LOCKED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  %56 = call i32 @udelay(i32 10)
  br label %34

57:                                               ; preds = %54, %46
  %58 = load i32, i32* @TUNER_CHARGE_PUMP, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 127
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 255
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @tuner_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i32 %88)
  %90 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %12, align 8
  %91 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %90, i32 0, i32 1
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @tuner_i2c_xfer_send(i32* %91, i32* %92, i32 4)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 4, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %57
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %96, %57
  br label %100

100:                                              ; preds = %5, %99, %26, %22
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %39
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @simple_set_aux_byte(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i32*, i32) #1

declare dso_local i32 @tuner_warn(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
