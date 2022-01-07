; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_autosearch_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_autosearch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state* }
%struct.dib3000mc_state = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8*, i8*, i32, i32, i32 }

@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib3000mc_autosearch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_autosearch_start(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib3000mc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_frontend_parameters, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %9, align 8
  store %struct.dib3000mc_state* %10, %struct.dib3000mc_state** %5, align 8
  %11 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %12 = bitcast %struct.dvb_frontend_parameters* %7 to i8*
  %13 = bitcast %struct.dvb_frontend_parameters* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 40, i1 false)
  %14 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @QAM_64, align 4
  %23 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load i8*, i8** @FEC_2_3, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  %30 = load i8*, i8** @FEC_2_3, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %38 = call i32 @dib3000mc_set_channel_cfg(%struct.dib3000mc_state* %37, %struct.dvb_frontend_parameters* %7, i32 11)
  %39 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %40 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, 256
  %44 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %41, i32 0, i32 %43)
  %45 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %46 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %45, i32 511)
  %47 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %47, i32 0, i32 %48)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dib3000mc_set_channel_cfg(%struct.dib3000mc_state*, %struct.dvb_frontend_parameters*, i32) #2

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #2

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
