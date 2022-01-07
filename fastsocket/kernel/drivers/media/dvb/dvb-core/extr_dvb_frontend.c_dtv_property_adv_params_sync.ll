; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dtv_property_adv_params_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dtv_property_adv_params_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dvb_frontend_private*, %struct.dtv_frontend_properties }
%struct.dvb_frontend_private = type { %struct.dvb_frontend_parameters }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dtv_frontend_properties = type { i32, i64, i32, i32, i32, i32, i32 }

@SYS_ISDBT = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_AUTO = common dso_local global i32 0, align 4
@GUARD_INTERVAL_AUTO = common dso_local global i32 0, align 4
@HIERARCHY_AUTO = common dso_local global i32 0, align 4
@BANDWIDTH_8_MHZ = common dso_local global i32 0, align 4
@BANDWIDTH_7_MHZ = common dso_local global i32 0, align 4
@BANDWIDTH_6_MHZ = common dso_local global i32 0, align 4
@BANDWIDTH_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @dtv_property_adv_params_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtv_property_adv_params_sync(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dvb_frontend_private*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  store %struct.dtv_frontend_properties* %7, %struct.dtv_frontend_properties** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %9, align 8
  store %struct.dvb_frontend_private* %10, %struct.dvb_frontend_private** %4, align 8
  %11 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %11, i32 0, i32 0
  store %struct.dvb_frontend_parameters* %12, %struct.dvb_frontend_parameters** %5, align 8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %41 [
    i32 129, label %26
    i32 131, label %26
    i32 130, label %26
    i32 128, label %26
  ]

26:                                               ; preds = %1, %1, %1, %1
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SYS_ISDBT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %130

48:                                               ; preds = %42
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @QAM_AUTO, align 4
  %60 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  store i32 %59, i32* %63, align 8
  %64 = load i8*, i8** @FEC_AUTO, align 8
  %65 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  store i8* %64, i8** %68, align 8
  %69 = load i8*, i8** @FEC_AUTO, align 8
  %70 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  store i8* %69, i8** %73, align 8
  %74 = load i32, i32* @TRANSMISSION_MODE_AUTO, align 4
  %75 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @GUARD_INTERVAL_AUTO, align 4
  %80 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %81 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @HIERARCHY_AUTO, align 4
  %85 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %86 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 8000000
  br i1 %92, label %93, label %99

93:                                               ; preds = %48
  %94 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %95 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  br label %129

99:                                               ; preds = %48
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 7000000
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @BANDWIDTH_7_MHZ, align 4
  %106 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %107 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  br label %128

110:                                              ; preds = %99
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 6000000
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i32, i32* @BANDWIDTH_6_MHZ, align 4
  %117 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %118 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 8
  br label %127

121:                                              ; preds = %110
  %122 = load i32, i32* @BANDWIDTH_AUTO, align 4
  %123 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %124 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %115
  br label %128

128:                                              ; preds = %127, %104
  br label %129

129:                                              ; preds = %128, %93
  br label %130

130:                                              ; preds = %129, %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
