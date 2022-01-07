; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_alloc_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_alloc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_id_private = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ib_mad_send_buf = type { %struct.cm_id_private**, i32, %struct.ib_mad_send_buf* }
%struct.ib_ah = type { %struct.cm_id_private**, i32, %struct.ib_ah* }

@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_id_private*, %struct.ib_mad_send_buf**)* @cm_alloc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_alloc_msg(%struct.cm_id_private* %0, %struct.ib_mad_send_buf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.ib_mad_send_buf**, align 8
  %6 = alloca %struct.ib_mad_agent*, align 8
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  %8 = alloca %struct.ib_ah*, align 8
  store %struct.cm_id_private* %0, %struct.cm_id_private** %4, align 8
  store %struct.ib_mad_send_buf** %1, %struct.ib_mad_send_buf*** %5, align 8
  %9 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %10 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %13, align 8
  store %struct.ib_mad_agent* %14, %struct.ib_mad_agent** %6, align 8
  %15 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %16 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %21 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = call %struct.ib_mad_send_buf* @ib_create_ah(i32 %19, i32* %22)
  %24 = bitcast %struct.ib_mad_send_buf* %23 to %struct.ib_ah*
  store %struct.ib_ah* %24, %struct.ib_ah** %8, align 8
  %25 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %26 = bitcast %struct.ib_ah* %25 to %struct.ib_mad_send_buf*
  %27 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %31 = bitcast %struct.ib_ah* %30 to %struct.ib_mad_send_buf*
  %32 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %31)
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %2
  %34 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %6, align 8
  %35 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %36 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %40 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %44 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent* %34, i32 %38, i32 %42, i32 0, i32 %43, i32 %44, i32 %45)
  store %struct.ib_mad_send_buf* %46, %struct.ib_mad_send_buf** %7, align 8
  %47 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %48 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %52 = bitcast %struct.ib_ah* %51 to %struct.ib_mad_send_buf*
  %53 = call i32 @ib_destroy_ah(%struct.ib_mad_send_buf* %52)
  %54 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %55 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %54)
  store i32 %55, i32* %3, align 4
  br label %76

56:                                               ; preds = %33
  %57 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %58 = bitcast %struct.ib_ah* %57 to %struct.ib_mad_send_buf*
  %59 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %60 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %59, i32 0, i32 2
  store %struct.ib_mad_send_buf* %58, %struct.ib_mad_send_buf** %60, align 8
  %61 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %62 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %65 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %67 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %66, i32 0, i32 0
  %68 = call i32 @atomic_inc(i32* %67)
  %69 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %70 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %71 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %70, i32 0, i32 0
  %72 = load %struct.cm_id_private**, %struct.cm_id_private*** %71, align 8
  %73 = getelementptr inbounds %struct.cm_id_private*, %struct.cm_id_private** %72, i64 0
  store %struct.cm_id_private* %69, %struct.cm_id_private** %73, align 8
  %74 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %75 = load %struct.ib_mad_send_buf**, %struct.ib_mad_send_buf*** %5, align 8
  store %struct.ib_mad_send_buf* %74, %struct.ib_mad_send_buf** %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %56, %50, %29
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.ib_mad_send_buf* @ib_create_ah(i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ib_destroy_ah(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
