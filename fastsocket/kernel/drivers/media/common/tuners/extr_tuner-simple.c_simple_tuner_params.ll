; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_tuner_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_tuner_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner_params = type { i32 }
%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, %struct.tunertype* }
%struct.tunertype = type { i32, %struct.tuner_params* }

@.str = private unnamed_addr constant [44 x i8] c"desired params (%s) undefined for tuner %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"using tuner params #%d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tuner_params* (%struct.dvb_frontend*, i32)* @simple_tuner_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tuner_params* @simple_tuner_params(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tuner_simple_priv*, align 8
  %6 = alloca %struct.tunertype*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %9, align 8
  store %struct.tuner_simple_priv* %10, %struct.tuner_simple_priv** %5, align 8
  %11 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %5, align 8
  %12 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %11, i32 0, i32 1
  %13 = load %struct.tunertype*, %struct.tunertype** %12, align 8
  store %struct.tunertype* %13, %struct.tunertype** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %17 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %23 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %22, i32 0, i32 1
  %24 = load %struct.tuner_params*, %struct.tuner_params** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %24, i64 %26
  %28 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %14

36:                                               ; preds = %31, %14
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %39 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @tuner_param_name(i32 %43)
  %45 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %5, align 8
  %46 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @tuner_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %52 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %51, i32 0, i32 1
  %53 = load %struct.tuner_params*, %struct.tuner_params** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %53, i64 %55
  %57 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @tuner_param_name(i32 %58)
  %60 = call i32 @tuner_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %59)
  %61 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %62 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %61, i32 0, i32 1
  %63 = load %struct.tuner_params*, %struct.tuner_params** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %63, i64 %65
  ret %struct.tuner_params* %66
}

declare dso_local i32 @tuner_dbg(i8*, i32, i32) #1

declare dso_local i32 @tuner_param_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
