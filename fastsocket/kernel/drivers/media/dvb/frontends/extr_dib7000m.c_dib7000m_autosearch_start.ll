; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_autosearch_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_autosearch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state* }
%struct.dib7000m_state = type { i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32 }

@QAM_64 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000m_autosearch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_autosearch_start(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib7000m_state*, align 8
  %6 = alloca %struct.dvb_frontend_parameters, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.dib7000m_state*, %struct.dib7000m_state** %11, align 8
  store %struct.dib7000m_state* %12, %struct.dib7000m_state** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %14 = bitcast %struct.dvb_frontend_parameters* %6 to i8*
  %15 = bitcast %struct.dvb_frontend_parameters* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 40, i1 false)
  %16 = load i32, i32* @QAM_64, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %21 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @FEC_2_3, align 4
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @FEC_3_4, align 4
  %33 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %40 = call i32 @dib7000m_set_channel(%struct.dib7000m_state* %39, %struct.dvb_frontend_parameters* %6, i32 7)
  %41 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @BANDWIDTH_TO_KHZ(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 5000
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %51

50:                                               ; preds = %2
  store i32 6, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %53 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 30, %54
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 65535
  %62 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %58, i32 6, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 65535
  %68 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %65, i32 7, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %72 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 100, %73
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 16
  %80 = and i32 %79, 65535
  %81 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %77, i32 8, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 65535
  %87 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %84, i32 9, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %91 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 500, %92
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %93, %94
  store i32 %95, i32* %8, align 4
  %96 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 65535
  %100 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %96, i32 10, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 65535
  %106 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %103, i32 11, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %110 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %109, i32 0)
  store i32 %110, i32* %8, align 4
  %111 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, 512
  %114 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %111, i32 0, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %118 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 16384
  br i1 %120, label %121, label %124

121:                                              ; preds = %51
  %122 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %123 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %122, i32 1793, i32 0)
  br label %127

124:                                              ; preds = %51
  %125 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %126 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %125, i32 537)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %128, i32 0, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dib7000m_set_channel(%struct.dib7000m_state*, %struct.dvb_frontend_parameters*, i32) #2

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #2

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #2

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
