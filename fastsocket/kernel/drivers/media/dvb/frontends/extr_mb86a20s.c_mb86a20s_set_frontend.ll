; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a20s.c_mb86a20s_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a20s.c_mb86a20s_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.mb86a20s_state* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.mb86a20s_state = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Calling tuner set parameters\0A\00", align 1
@mb86a20s_reset_reception = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @mb86a20s_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a20s_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.mb86a20s_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %8, align 8
  store %struct.mb86a20s_state* %9, %struct.mb86a20s_state** %5, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %19, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = bitcast %struct.dvb_frontend* %21 to %struct.dvb_frontend.0*
  %23 = call i32 %20(%struct.dvb_frontend.0* %22, i32 1)
  br label %24

24:                                               ; preds = %16, %2
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %29, align 8
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = bitcast %struct.dvb_frontend* %31 to %struct.dvb_frontend.1*
  %33 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %34 = call i32 %30(%struct.dvb_frontend.1* %32, %struct.dvb_frontend_parameters* %33)
  %35 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %5, align 8
  %36 = getelementptr inbounds %struct.mb86a20s_state, %struct.mb86a20s_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %41 = call i32 @mb86a20s_initfe(%struct.dvb_frontend* %40)
  br label %42

42:                                               ; preds = %39, %24
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %51, align 8
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %54 = bitcast %struct.dvb_frontend* %53 to %struct.dvb_frontend.0*
  %55 = call i32 %52(%struct.dvb_frontend.0* %54, i32 0)
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %5, align 8
  %58 = load i32, i32* @mb86a20s_reset_reception, align 4
  %59 = call i32 @mb86a20s_writeregdata(%struct.mb86a20s_state* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %68, align 8
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %71 = bitcast %struct.dvb_frontend* %70 to %struct.dvb_frontend.0*
  %72 = call i32 %69(%struct.dvb_frontend.0* %71, i32 1)
  br label %73

73:                                               ; preds = %65, %56
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @mb86a20s_initfe(%struct.dvb_frontend*) #1

declare dso_local i32 @mb86a20s_writeregdata(%struct.mb86a20s_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
