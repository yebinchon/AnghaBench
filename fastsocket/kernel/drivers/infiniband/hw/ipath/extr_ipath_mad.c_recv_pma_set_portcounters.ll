; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_set_portcounters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_set_portcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i32 }
%struct.ipath_ibdev = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.ipath_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @recv_pma_set_portcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pma_set_portcounters(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.ipath_ibdev*, align 8
  %9 = alloca %struct.ipath_verbs_counters, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %11 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %13, %struct.ib_pma_portcounters** %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %14)
  store %struct.ipath_ibdev* %15, %struct.ipath_ibdev** %8, align 8
  %16 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %17 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %16, i32 0, i32 15
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ipath_get_counters(i32 %18, %struct.ipath_verbs_counters* %9)
  %20 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %21 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IB_PMA_SEL_SYMBOL_ERROR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %30 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %29, i32 0, i32 14
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %33 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IB_PMA_SEL_LINK_ERROR_RECOVERY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %42 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %41, i32 0, i32 13
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %45 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IB_PMA_SEL_LINK_DOWNED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %54 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %57 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IB_PMA_SEL_PORT_RCV_ERRORS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 9
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %66 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %65, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %70 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %69, i32 0, i32 11
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %62, %55
  %72 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %73 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IB_PMA_SEL_PORT_RCV_REMPHYS_ERRORS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %82 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %71
  %84 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %85 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IB_PMA_SEL_PORT_XMIT_DISCARDS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %94 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %90, %83
  %96 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %97 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IB_PMA_SEL_LOCAL_LINK_INTEGRITY_ERRORS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %106 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %109 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IB_PMA_SEL_EXCESSIVE_BUFFER_OVERRUNS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %118 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %114, %107
  %120 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %121 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IB_PMA_SEL_PORT_VL15_DROPPED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %128 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %127, i32 0, i32 5
  store i64 0, i64* %128, align 8
  %129 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %132 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %126, %119
  %134 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %135 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IB_PMA_SEL_PORT_XMIT_DATA, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %144 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %133
  %146 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %147 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IB_PMA_SEL_PORT_RCV_DATA, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %156 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %145
  %158 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %159 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IB_PMA_SEL_PORT_XMIT_PACKETS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %168 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %164, %157
  %170 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %171 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IB_PMA_SEL_PORT_RCV_PACKETS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %180 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %176, %169
  %182 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %183 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @recv_pma_get_portcounters(%struct.ib_pma_mad* %182, %struct.ib_device* %183, i32 %184)
  ret i32 %185
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @ipath_get_counters(i32, %struct.ipath_verbs_counters*) #1

declare dso_local i32 @recv_pma_get_portcounters(%struct.ib_pma_mad*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
