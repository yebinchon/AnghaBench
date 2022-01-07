; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_set_portcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i32 }
%struct.qib_ibport = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qib_pportdata = type { i32 }
%struct.qib_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_PMA_SEL_SYMBOL_ERROR = common dso_local global i32 0, align 4
@IB_PMA_SEL_LINK_ERROR_RECOVERY = common dso_local global i32 0, align 4
@IB_PMA_SEL_LINK_DOWNED = common dso_local global i32 0, align 4
@IB_PMA_SEL_PORT_RCV_ERRORS = common dso_local global i32 0, align 4
@IB_PMA_SEL_PORT_RCV_REMPHYS_ERRORS = common dso_local global i32 0, align 4
@IB_PMA_SEL_PORT_XMIT_DISCARDS = common dso_local global i32 0, align 4
@IB_PMA_SEL_LOCAL_LINK_INTEGRITY_ERRORS = common dso_local global i32 0, align 4
@IB_PMA_SEL_EXCESSIVE_BUFFER_OVERRUNS = common dso_local global i32 0, align 4
@IB_PMA_SEL_PORT_VL15_DROPPED = common dso_local global i32 0, align 4
@IB_PMA_SEL_PORT_XMIT_DATA = common dso_local global i32 0, align 4
@IB_PMA_SEL_PORT_RCV_DATA = common dso_local global i32 0, align 4
@IB_PMA_SEL_PORT_XMIT_PACKETS = common dso_local global i32 0, align 4
@IB_PMA_SEL_PORT_RCV_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @pma_set_portcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_set_portcounters(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca %struct.qib_verbs_counters, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %12 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %14, %struct.ib_pma_portcounters** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %15, i32 %16)
  store %struct.qib_ibport* %17, %struct.qib_ibport** %8, align 8
  %18 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %19 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %18)
  store %struct.qib_pportdata* %19, %struct.qib_pportdata** %9, align 8
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %21 = call i32 @qib_get_counters(%struct.qib_pportdata* %20, %struct.qib_verbs_counters* %10)
  %22 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %23 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IB_PMA_SEL_SYMBOL_ERROR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %32 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %35 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IB_PMA_SEL_LINK_ERROR_RECOVERY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %44 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %47 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IB_PMA_SEL_LINK_DOWNED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %56 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %59 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IB_PMA_SEL_PORT_RCV_ERRORS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %68 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %71 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IB_PMA_SEL_PORT_RCV_REMPHYS_ERRORS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %80 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %83 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IB_PMA_SEL_PORT_XMIT_DISCARDS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %92 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %81
  %94 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %95 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IB_PMA_SEL_LOCAL_LINK_INTEGRITY_ERRORS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %104 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %107 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IB_PMA_SEL_EXCESSIVE_BUFFER_OVERRUNS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %116 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %105
  %118 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %119 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IB_PMA_SEL_PORT_VL15_DROPPED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %126 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %125, i32 0, i32 5
  store i64 0, i64* %126, align 8
  %127 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %130 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %133 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IB_PMA_SEL_PORT_XMIT_DATA, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %142 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %131
  %144 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %145 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IB_PMA_SEL_PORT_RCV_DATA, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %154 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %143
  %156 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %157 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IB_PMA_SEL_PORT_XMIT_PACKETS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %166 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %162, %155
  %168 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %169 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IB_PMA_SEL_PORT_RCV_PACKETS, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %178 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %174, %167
  %180 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %181 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @pma_get_portcounters(%struct.ib_pma_mad* %180, %struct.ib_device* %181, i32 %182)
  ret i32 %183
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_get_counters(%struct.qib_pportdata*, %struct.qib_verbs_counters*) #1

declare dso_local i32 @pma_get_portcounters(%struct.ib_pma_mad*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
