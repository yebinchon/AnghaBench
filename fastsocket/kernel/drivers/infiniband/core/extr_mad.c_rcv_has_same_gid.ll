; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_rcv_has_same_gid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_rcv_has_same_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_mad_send_wr_private = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_18__, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.ib_mad* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ib_mad = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.ib_ah_attr = type { i32, i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%union.ib_gid = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_agent_private*, %struct.ib_mad_send_wr_private*, %struct.ib_mad_recv_wc*)* @rcv_has_same_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcv_has_same_gid(%struct.ib_mad_agent_private* %0, %struct.ib_mad_send_wr_private* %1, %struct.ib_mad_recv_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_mad_agent_private*, align 8
  %6 = alloca %struct.ib_mad_send_wr_private*, align 8
  %7 = alloca %struct.ib_mad_recv_wc*, align 8
  %8 = alloca %struct.ib_ah_attr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.ib_gid, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %5, align 8
  store %struct.ib_mad_send_wr_private* %1, %struct.ib_mad_send_wr_private** %6, align 8
  store %struct.ib_mad_recv_wc* %2, %struct.ib_mad_recv_wc** %7, align 8
  %15 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %16 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.ib_device*, %struct.ib_device** %17, align 8
  store %struct.ib_device* %18, %struct.ib_device** %12, align 8
  %19 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %20 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %6, align 8
  %24 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ib_mad*
  %28 = call i64 @ib_response_mad(%struct.ib_mad* %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %30 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.ib_mad*, %struct.ib_mad** %31, align 8
  %33 = call i64 @ib_response_mad(%struct.ib_mad* %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %163

38:                                               ; preds = %3
  %39 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %6, align 8
  %40 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ib_query_ah(i32 %42, %struct.ib_ah_attr* %8)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %163

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IB_AH_GRH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %56 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IB_WC_GRH, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = icmp ne i32 %54, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %163

68:                                               ; preds = %46
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %131, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %131

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IB_AH_GRH, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %74
  %81 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i64 @ib_get_cached_lmc(%struct.ib_device* %81, i64 %82, i64* %14)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %163

86:                                               ; preds = %80
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %93 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %91, %96
  %98 = load i64, i64* %14, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 1, %99
  %101 = sub nsw i32 %100, 1
  %102 = and i32 %97, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %89, %86
  %106 = phi i1 [ true, %86 ], [ %104, %89 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %163

108:                                              ; preds = %74
  %109 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @ib_get_cached_gid(%struct.ib_device* %109, i64 %110, i32 %113, %union.ib_gid* %11)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %163

117:                                              ; preds = %108
  %118 = bitcast %union.ib_gid* %11 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %121 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcmp(i32 %119, i32 %126, i32 16)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %4, align 4
  br label %163

131:                                              ; preds = %71, %68
  %132 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IB_AH_GRH, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %141 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %140, i32 0, i32 1
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %139, %144
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %4, align 4
  br label %163

147:                                              ; preds = %131
  %148 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %8, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %153 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @memcmp(i32 %151, i32 %158, i32 16)
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %147, %137, %117, %116, %105, %85, %67, %45, %37
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i64 @ib_response_mad(%struct.ib_mad*) #1

declare dso_local i64 @ib_query_ah(i32, %struct.ib_ah_attr*) #1

declare dso_local i64 @ib_get_cached_lmc(%struct.ib_device*, i64, i64*) #1

declare dso_local i64 @ib_get_cached_gid(%struct.ib_device*, i64, i32, %union.ib_gid*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
