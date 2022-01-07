; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbs_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbs_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ttusbdecfe_state = type { %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)* }

@LOF_HI = common dso_local global i64 0, align 8
@LOF_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @ttusbdecfe_dvbs_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusbdecfe_dvbs_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.ttusbdecfe_state*, align 8
  %6 = alloca [40 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ttusbdecfe_state*
  store %struct.ttusbdecfe_state* %14, %struct.ttusbdecfe_state** %5, align 8
  %15 = bitcast [40 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 160, i1 false)
  %16 = bitcast i8* %15 to <{ [12 x i32], [28 x i32] }>*
  %17 = getelementptr inbounds <{ [12 x i32], [28 x i32] }>, <{ [12 x i32], [28 x i32] }>* %16, i32 0, i32 0
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i32 0, i32 11
  store i32 1, i32* %19, align 4
  %20 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %5, align 8
  %24 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* @LOF_HI, align 8
  br label %31

29:                                               ; preds = %2
  %30 = load i64, i64* @LOF_LO, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  %33 = add nsw i64 %22, %32
  %34 = call i32 @htonl(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 4
  %36 = call i32 @memcpy(i32* %35, i32* %7, i32 4)
  %37 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @htonl(i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 12
  %44 = call i32 @memcpy(i32* %43, i32* %8, i32 4)
  %45 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %5, align 8
  %46 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i64, i64* @LOF_HI, align 8
  br label %53

51:                                               ; preds = %31
  %52 = load i64, i64* @LOF_LO, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @htonl(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 24
  %57 = call i32 @memcpy(i32* %56, i32* %9, i32 4)
  %58 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %5, align 8
  %59 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @htonl(i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 28
  %63 = call i32 @memcpy(i32* %62, i32* %10, i32 4)
  %64 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %5, align 8
  %65 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)*, i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)** %67, align 8
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %70 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 0
  %71 = call i32 %68(%struct.dvb_frontend* %69, i32 113, i32 160, i32* %70, i32* null, i32* null)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @htonl(i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
