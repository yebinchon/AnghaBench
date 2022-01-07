; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dtv_property_cache_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dtv_property_cache_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_9__, %struct.dtv_frontend_properties }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@QPSK = common dso_local global i32 0, align 4
@ROLLOFF_35 = common dso_local global i32 0, align 4
@SYS_DVBS = common dso_local global i32 0, align 4
@SYS_DVBC_ANNEX_AC = common dso_local global i32 0, align 4
@BANDWIDTH_6_MHZ = common dso_local global i32 0, align 4
@BANDWIDTH_7_MHZ = common dso_local global i32 0, align 4
@BANDWIDTH_8_MHZ = common dso_local global i32 0, align 4
@SYS_DVBT = common dso_local global i32 0, align 4
@VSB_8 = common dso_local global i32 0, align 4
@VSB_16 = common dso_local global i32 0, align 4
@SYS_ATSC = common dso_local global i32 0, align 4
@SYS_DVBC_ANNEX_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dtv_property_cache_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtv_property_cache_sync(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  store %struct.dtv_frontend_properties* %7, %struct.dtv_frontend_properties** %5, align 8
  %8 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 12
  store i32 %10, i32* %12, align 4
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %184 [
    i32 128, label %23
    i32 129, label %47
    i32 130, label %72
    i32 131, label %156
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @QPSK, align 4
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ROLLOFF_35, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SYS_DVBS, align 4
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %184

47:                                               ; preds = %2
  %48 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %63 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @SYS_DVBC_ANNEX_AC, align 4
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %184

72:                                               ; preds = %2
  %73 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BANDWIDTH_6_MHZ, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 0
  store i32 6000000, i32* %82, align 4
  br label %110

83:                                               ; preds = %72
  %84 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BANDWIDTH_7_MHZ, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 0
  store i32 7000000, i32* %93, align 4
  br label %109

94:                                               ; preds = %83
  %95 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %104 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %103, i32 0, i32 0
  store i32 8000000, i32* %104, align 4
  br label %108

105:                                              ; preds = %94
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 0
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %91
  br label %110

110:                                              ; preds = %109, %80
  %111 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %112 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %126 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %133 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %138 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %140 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %147 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @SYS_DVBT, align 4
  %154 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %155 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  br label %184

156:                                              ; preds = %2
  %157 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %158 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %163 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %165 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @VSB_8, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %175, label %169

169:                                              ; preds = %156
  %170 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %171 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @VSB_16, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %169, %156
  %176 = load i32, i32* @SYS_ATSC, align 4
  %177 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %178 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %183

179:                                              ; preds = %169
  %180 = load i32, i32* @SYS_DVBC_ANNEX_B, align 4
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %179, %175
  br label %184

184:                                              ; preds = %2, %183, %110, %47, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
