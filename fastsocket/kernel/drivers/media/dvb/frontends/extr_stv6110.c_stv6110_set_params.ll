; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110.c_stv6110_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110.c_stv6110_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @stv6110_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %5, align 8
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %10 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @carrier_width(i32 %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @stv6110_set_frequency(%struct.dvb_frontend* %16, i32 %19)
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @stv6110_set_bandwidth(%struct.dvb_frontend* %21, i32 %22)
  ret i32 0
}

declare dso_local i32 @carrier_width(i32, i32) #1

declare dso_local i32 @stv6110_set_frequency(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @stv6110_set_bandwidth(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
