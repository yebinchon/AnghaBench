; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbt_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbt_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.ttusbdecfe_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @ttusbdecfe_dvbt_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusbdecfe_dvbt_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.ttusbdecfe_state*, align 8
  %6 = alloca [20 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ttusbdecfe_state*
  store %struct.ttusbdecfe_state* %11, %struct.ttusbdecfe_state** %5, align 8
  %12 = bitcast [20 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 80, i1 false)
  %13 = bitcast i8* %12 to [20 x i32]*
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i32 0, i32 3
  store i32 3, i32* %14, align 4
  %15 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i32 0, i32 11
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i32 0, i32 15
  store i32 255, i32* %16, align 4
  %17 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i32 0, i32 19
  store i32 255, i32* %17, align 4
  %18 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 1000
  %22 = call i32 @htonl(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 4
  %24 = call i32 @memcpy(i32* %23, i32* %7, i32 4)
  %25 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %5, align 8
  %26 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)*, i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)** %28, align 8
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %32 = call i32 %29(%struct.dvb_frontend* %30, i32 113, i32 80, i32* %31, i32* null, i32* null)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
