; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_autosearch_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_autosearch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32, i32 }

@QAM_64 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000p_autosearch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_autosearch_start(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca %struct.dvb_frontend_parameters, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib7000p_state*, %struct.dib7000p_state** %10, align 8
  store %struct.dib7000p_state* %11, %struct.dib7000p_state** %5, align 8
  %12 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %13 = bitcast %struct.dvb_frontend_parameters* %6 to i8*
  %14 = bitcast %struct.dvb_frontend_parameters* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 40, i1 false)
  %15 = load i32, i32* @QAM_64, align 4
  %16 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @FEC_2_3, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @FEC_3_4, align 4
  %32 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %39 = call i32 @dib7000p_set_channel(%struct.dib7000p_state* %38, %struct.dvb_frontend_parameters* %6, i32 7)
  %40 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @BANDWIDTH_TO_KHZ(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 5000
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %50

49:                                               ; preds = %2
  store i32 6, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %52 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 30, %56
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 65535
  %64 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %60, i32 6, i32 %63)
  %65 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 65535
  %68 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %65, i32 7, i32 %67)
  %69 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %70 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 100, %74
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = ashr i32 %79, 16
  %81 = and i32 %80, 65535
  %82 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %78, i32 8, i32 %81)
  %83 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 65535
  %86 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %83, i32 9, i32 %85)
  %87 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %88 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 500, %92
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %93, %94
  store i32 %95, i32* %7, align 4
  %96 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 65535
  %100 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %96, i32 10, i32 %99)
  %101 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 65535
  %104 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %101, i32 11, i32 %103)
  %105 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %106 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %105, i32 0)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = or i32 512, %108
  %110 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %107, i32 0, i32 %109)
  %111 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %112 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %111, i32 1284)
  %113 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %113, i32 0, i32 %114)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dib7000p_set_channel(%struct.dib7000p_state*, %struct.dvb_frontend_parameters*, i32) #2

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #2

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #2

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
