; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx22700.c_cx22700_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx22700.c_cx22700_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.cx22700_state* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_6__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.cx22700_state = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @cx22700_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx22700_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.cx22700_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.cx22700_state*, %struct.cx22700_state** %7, align 8
  store %struct.cx22700_state* %8, %struct.cx22700_state** %5, align 8
  %9 = load %struct.cx22700_state*, %struct.cx22700_state** %5, align 8
  %10 = call i32 @cx22700_writereg(%struct.cx22700_state* %9, i32 0, i32 2)
  %11 = load %struct.cx22700_state*, %struct.cx22700_state** %5, align 8
  %12 = call i32 @cx22700_writereg(%struct.cx22700_state* %11, i32 0, i32 0)
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %16, align 8
  %18 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %23, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = bitcast %struct.dvb_frontend* %25 to %struct.dvb_frontend.1*
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %28 = call i32 %24(%struct.dvb_frontend.1* %26, %struct.dvb_frontend_parameters* %27)
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %19
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %37, align 8
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %40 = bitcast %struct.dvb_frontend* %39 to %struct.dvb_frontend.0*
  %41 = call i32 %38(%struct.dvb_frontend.0* %40, i32 0)
  br label %42

42:                                               ; preds = %34, %19
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.cx22700_state*, %struct.cx22700_state** %5, align 8
  %45 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cx22700_set_inversion(%struct.cx22700_state* %44, i32 %47)
  %49 = load %struct.cx22700_state*, %struct.cx22700_state** %5, align 8
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @cx22700_set_tps(%struct.cx22700_state* %49, i32* %52)
  %54 = load %struct.cx22700_state*, %struct.cx22700_state** %5, align 8
  %55 = call i32 @cx22700_writereg(%struct.cx22700_state* %54, i32 55, i32 1)
  %56 = load %struct.cx22700_state*, %struct.cx22700_state** %5, align 8
  %57 = call i32 @cx22700_writereg(%struct.cx22700_state* %56, i32 0, i32 1)
  ret i32 0
}

declare dso_local i32 @cx22700_writereg(%struct.cx22700_state*, i32, i32) #1

declare dso_local i32 @cx22700_set_inversion(%struct.cx22700_state*, i32) #1

declare dso_local i32 @cx22700_set_tps(%struct.cx22700_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
