; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.c_cx24110_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_7__, %struct.cx24110_state* }
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_8__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.cx24110_state = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @cx24110_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.cx24110_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.cx24110_state*, %struct.cx24110_state** %7, align 8
  store %struct.cx24110_state* %8, %struct.cx24110_state** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %12, align 8
  %14 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %19, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = bitcast %struct.dvb_frontend* %21 to %struct.dvb_frontend.1*
  %23 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %24 = call i32 %20(%struct.dvb_frontend.1* %22, %struct.dvb_frontend_parameters* %23)
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %15
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %33, align 8
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %36 = bitcast %struct.dvb_frontend* %35 to %struct.dvb_frontend.0*
  %37 = call i32 %34(%struct.dvb_frontend.0* %36, i32 0)
  br label %38

38:                                               ; preds = %30, %15
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %41 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cx24110_set_inversion(%struct.cx24110_state* %40, i32 %43)
  %45 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %46 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cx24110_set_fec(%struct.cx24110_state* %45, i32 %50)
  %52 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %53 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cx24110_set_symbolrate(%struct.cx24110_state* %52, i32 %57)
  %59 = load %struct.cx24110_state*, %struct.cx24110_state** %5, align 8
  %60 = call i32 @cx24110_writereg(%struct.cx24110_state* %59, i32 4, i32 5)
  ret i32 0
}

declare dso_local i32 @cx24110_set_inversion(%struct.cx24110_state*, i32) #1

declare dso_local i32 @cx24110_set_fec(%struct.cx24110_state*, i32) #1

declare dso_local i32 @cx24110_set_symbolrate(%struct.cx24110_state*, i32) #1

declare dso_local i32 @cx24110_writereg(%struct.cx24110_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
