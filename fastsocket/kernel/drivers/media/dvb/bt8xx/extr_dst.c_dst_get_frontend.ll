; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i64, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dst_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  store %struct.dst_state* %8, %struct.dst_state** %5, align 8
  %9 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %34 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %41 = call i8* @dst_get_fec(%struct.dst_state* %40)
  %42 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %43 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* %41, i8** %45, align 8
  br label %88

46:                                               ; preds = %2
  %47 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %48 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %54 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  br label %87

60:                                               ; preds = %46
  %61 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %62 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %68 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 8
  %74 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %75 = call i8* @dst_get_fec(%struct.dst_state* %74)
  %76 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %77 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i8* %75, i8** %79, align 8
  %80 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %81 = call i32 @dst_get_modulation(%struct.dst_state* %80)
  %82 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  br label %86

86:                                               ; preds = %66, %60
  br label %87

87:                                               ; preds = %86, %52
  br label %88

88:                                               ; preds = %87, %32
  ret i32 0
}

declare dso_local i8* @dst_get_fec(%struct.dst_state*) #1

declare dso_local i32 @dst_get_modulation(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
