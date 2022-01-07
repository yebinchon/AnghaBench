; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state* }
%struct.dib3000mc_state = type { %struct.dib3000mc_config* }
%struct.dib3000mc_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dib3000mc_set_config(%struct.dvb_frontend* %0, %struct.dib3000mc_config* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib3000mc_config*, align 8
  %5 = alloca %struct.dib3000mc_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dib3000mc_config* %1, %struct.dib3000mc_config** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %7, align 8
  store %struct.dib3000mc_state* %8, %struct.dib3000mc_state** %5, align 8
  %9 = load %struct.dib3000mc_config*, %struct.dib3000mc_config** %4, align 8
  %10 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %11 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %10, i32 0, i32 0
  store %struct.dib3000mc_config* %9, %struct.dib3000mc_config** %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
