; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_free_agents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_free_agents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.qib_ibport }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.qib_ibport = type { %struct.TYPE_5__*, %struct.ib_mad_agent* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_mad_agent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_free_agents(%struct.qib_ibdev* %0) #0 {
  %2 = alloca %struct.qib_ibdev*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.qib_ibport*, align 8
  %6 = alloca i32, align 4
  store %struct.qib_ibdev* %0, %struct.qib_ibdev** %2, align 8
  %7 = load %struct.qib_ibdev*, %struct.qib_ibdev** %2, align 8
  %8 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %7)
  store %struct.qib_devdata* %8, %struct.qib_devdata** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %71, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %9
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store %struct.qib_ibport* %22, %struct.qib_ibport** %5, align 8
  %23 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %24 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %23, i32 0, i32 1
  %25 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %24, align 8
  %26 = icmp ne %struct.ib_mad_agent* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %29 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %28, i32 0, i32 1
  %30 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %29, align 8
  store %struct.ib_mad_agent* %30, %struct.ib_mad_agent** %4, align 8
  %31 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %32 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %31, i32 0, i32 1
  store %struct.ib_mad_agent* null, %struct.ib_mad_agent** %32, align 8
  %33 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %34 = call i32 @ib_unregister_mad_agent(%struct.ib_mad_agent* %33)
  br label %35

35:                                               ; preds = %27, %15
  %36 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %37 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %42 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @ib_destroy_ah(i32* %44)
  %46 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %47 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %46, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %47, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %48
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @del_timer_sync(%struct.TYPE_8__* %68)
  br label %70

70:                                               ; preds = %60, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %9

74:                                               ; preds = %9
  ret void
}

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local i32 @ib_unregister_mad_agent(%struct.ib_mad_agent*) #1

declare dso_local i32 @ib_destroy_ah(i32*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
