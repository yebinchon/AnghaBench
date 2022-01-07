; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_create_agents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_create_agents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.qib_ibport, %struct.TYPE_5__ }
%struct.qib_ibport = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@IB_QPT_SMI = common dso_local global i32 0, align 4
@send_handler = common dso_local global i32 0, align 4
@xmit_wait_timer_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_create_agents(%struct.qib_ibdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qib_ibdev*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca %struct.ib_mad_agent*, align 8
  %6 = alloca %struct.qib_ibport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_ibdev* %0, %struct.qib_ibdev** %3, align 8
  %9 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %10 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %9)
  store %struct.qib_devdata* %10, %struct.qib_devdata** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %103, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %106

17:                                               ; preds = %11
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.qib_ibport* %24, %struct.qib_ibport** %6, align 8
  %25 = load %struct.qib_ibdev*, %struct.qib_ibdev** %3, align 8
  %26 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @IB_QPT_SMI, align 4
  %30 = load i32, i32* @send_handler, align 4
  %31 = call %struct.ib_mad_agent* @ib_register_mad_agent(i32* %26, i32 %28, i32 %29, i32* null, i32 0, i32 %30, i32* null, i32* null)
  store %struct.ib_mad_agent* %31, %struct.ib_mad_agent** %5, align 8
  %32 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %33 = call i64 @IS_ERR(%struct.ib_mad_agent* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %37 = call i32 @PTR_ERR(%struct.ib_mad_agent* %36)
  store i32 %37, i32* %8, align 4
  br label %107

38:                                               ; preds = %17
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @init_timer(%struct.TYPE_7__* %54)
  %56 = load i32, i32* @xmit_wait_timer_func, align 4
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %58 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 %56, i32* %65, align 8
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = ptrtoint %struct.TYPE_6__* %71 to i64
  %73 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %74 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i64 %72, i64* %81, align 8
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %83 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %92 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i32 @add_timer(%struct.TYPE_7__* %98)
  %100 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %101 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %102 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %101, i32 0, i32 0
  store %struct.ib_mad_agent* %100, %struct.ib_mad_agent** %102, align 8
  br label %103

103:                                              ; preds = %38
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %11

106:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %140

107:                                              ; preds = %35
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %135, %107
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %111 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %108
  %115 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %116 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store %struct.qib_ibport* %121, %struct.qib_ibport** %6, align 8
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 0
  %124 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %123, align 8
  %125 = icmp ne %struct.ib_mad_agent* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %114
  %127 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %128 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %127, i32 0, i32 0
  %129 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %128, align 8
  store %struct.ib_mad_agent* %129, %struct.ib_mad_agent** %5, align 8
  %130 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %131 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %130, i32 0, i32 0
  store %struct.ib_mad_agent* null, %struct.ib_mad_agent** %131, align 8
  %132 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %133 = call i32 @ib_unregister_mad_agent(%struct.ib_mad_agent* %132)
  br label %134

134:                                              ; preds = %126, %114
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %108

138:                                              ; preds = %108
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %106
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.ib_mad_agent* @ib_register_mad_agent(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_agent*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_agent*) #1

declare dso_local i32 @init_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @ib_unregister_mad_agent(%struct.ib_mad_agent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
