; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_try_7322_ipg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_try_7322_ipg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_3__*, %struct.qib_ibport }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qib_ibport = type { %struct.TYPE_4__*, %struct.ib_mad_agent* }
%struct.TYPE_4__ = type { %struct.ib_mad_send_buf }
%struct.ib_mad_send_buf = type { %struct.ib_smp*, %struct.ib_mad_send_buf* }
%struct.ib_smp = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.ib_mad_agent = type { i32 }
%struct.ib_ah = type { %struct.ib_smp*, %struct.ib_ah* }

@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_SEND = common dso_local global i32 0, align 4
@QIB_VENDOR_IPG = common dso_local global i32 0, align 4
@ib_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @try_7322_ipg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_7322_ipg(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_ibport*, align 8
  %4 = alloca %struct.ib_mad_send_buf*, align 8
  %5 = alloca %struct.ib_mad_agent*, align 8
  %6 = alloca %struct.ib_smp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_ah*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 1
  store %struct.qib_ibport* %11, %struct.qib_ibport** %3, align 8
  %12 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %13 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %12, i32 0, i32 1
  %14 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %13, align 8
  store %struct.ib_mad_agent* %14, %struct.ib_mad_agent** %5, align 8
  %15 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %16 = icmp ne %struct.ib_mad_agent* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %99

18:                                               ; preds = %1
  %19 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %5, align 8
  %20 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %21 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent* %19, i32 0, i32 0, i32 0, i32 %20, i32 %21, i32 %22)
  store %struct.ib_mad_send_buf* %23, %struct.ib_mad_send_buf** %4, align 8
  %24 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %25 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %99

28:                                               ; preds = %18
  %29 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %30 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %58, label %33

33:                                               ; preds = %28
  %34 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %35 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %36 = call i32 @be16_to_cpu(i32 %35)
  %37 = call %struct.ib_mad_send_buf* @qib_create_qp0_ah(%struct.qib_ibport* %34, i32 %36)
  %38 = bitcast %struct.ib_mad_send_buf* %37 to %struct.ib_ah*
  store %struct.ib_ah* %38, %struct.ib_ah** %9, align 8
  %39 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %40 = bitcast %struct.ib_ah* %39 to %struct.ib_mad_send_buf*
  %41 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %45 = bitcast %struct.ib_ah* %44 to %struct.ib_mad_send_buf*
  %46 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %45)
  store i32 %46, i32* %8, align 4
  br label %57

47:                                               ; preds = %33
  %48 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %49 = bitcast %struct.ib_ah* %48 to %struct.ib_mad_send_buf*
  %50 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %51 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %50, i32 0, i32 1
  store %struct.ib_mad_send_buf* %49, %struct.ib_mad_send_buf** %51, align 8
  %52 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  %53 = bitcast %struct.ib_ah* %52 to %struct.ib_mad_send_buf*
  %54 = call %struct.TYPE_4__* @to_iah(%struct.ib_mad_send_buf* %53)
  %55 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %56 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %55, i32 0, i32 0
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %47, %43
  br label %65

58:                                               ; preds = %28
  %59 = load %struct.qib_ibport*, %struct.qib_ibport** %3, align 8
  %60 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %64 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %63, i32 0, i32 1
  store %struct.ib_mad_send_buf* %62, %struct.ib_mad_send_buf** %64, align 8
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %58, %57
  %66 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %67 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %66, i32 0, i32 0
  %68 = load %struct.ib_smp*, %struct.ib_smp** %67, align 8
  store %struct.ib_smp* %68, %struct.ib_smp** %6, align 8
  %69 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %70 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %71 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 4
  %73 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %74 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %76 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* @IB_MGMT_METHOD_SEND, align 4
  %78 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %79 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %81 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @QIB_VENDOR_IPG, align 4
  %83 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %84 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %86 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %65
  %90 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %91 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %90, i32* null)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %65
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %97 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %27, %17
  %100 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %101 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 2, %104
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @ib_wq, align 4
  %107 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %108 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @msecs_to_jiffies(i32 %111)
  %113 = call i32 @queue_delayed_work(i32 %106, i32* %110, i32 %112)
  ret void
}

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.ib_mad_send_buf* @qib_create_qp0_ah(%struct.qib_ibport*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.TYPE_4__* @to_iah(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
