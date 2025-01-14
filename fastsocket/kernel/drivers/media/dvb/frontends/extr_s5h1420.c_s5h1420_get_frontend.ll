; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.s5h1420_state* }
%struct.s5h1420_state = type { i64 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @s5h1420_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %7, align 8
  store %struct.s5h1420_state* %8, %struct.s5h1420_state** %5, align 8
  %9 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %10 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %13 = call i64 @s5h1420_getfreqoffset(%struct.s5h1420_state* %12)
  %14 = add nsw i64 %11, %13
  %15 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %18 = call i32 @s5h1420_getinversion(%struct.s5h1420_state* %17)
  %19 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %22 = call i32 @s5h1420_getsymbolrate(%struct.s5h1420_state* %21)
  %23 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  %28 = call i32 @s5h1420_getfec(%struct.s5h1420_state* %27)
  %29 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  ret i32 0
}

declare dso_local i64 @s5h1420_getfreqoffset(%struct.s5h1420_state*) #1

declare dso_local i32 @s5h1420_getinversion(%struct.s5h1420_state*) #1

declare dso_local i32 @s5h1420_getsymbolrate(%struct.s5h1420_state*) #1

declare dso_local i32 @s5h1420_getfec(%struct.s5h1420_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
