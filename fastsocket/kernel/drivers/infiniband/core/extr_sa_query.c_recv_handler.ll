; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_recv_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.ib_sa_query = type { i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)* }
%struct.ib_sa_mad = type opaque
%struct.ib_mad_send_buf = type { %struct.ib_sa_query** }
%struct.ib_sa_mad.0 = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_recv_wc*)* @recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_sa_query*, align 8
  %6 = alloca %struct.ib_mad_send_buf*, align 8
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %7 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %8 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.ib_mad_send_buf*
  store %struct.ib_mad_send_buf* %13, %struct.ib_mad_send_buf** %6, align 8
  %14 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %6, align 8
  %15 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %14, i32 0, i32 0
  %16 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %15, align 8
  %17 = getelementptr inbounds %struct.ib_sa_query*, %struct.ib_sa_query** %16, i64 0
  %18 = load %struct.ib_sa_query*, %struct.ib_sa_query** %17, align 8
  store %struct.ib_sa_query* %18, %struct.ib_sa_query** %5, align 8
  %19 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %20 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %19, i32 0, i32 0
  %21 = load i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)*, i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)** %20, align 8
  %22 = icmp ne i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %2
  %24 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %25 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_WC_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %23
  %32 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %33 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %32, i32 0, i32 0
  %34 = load i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)*, i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)** %33, align 8
  %35 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %36 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %37 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  br label %48

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  %50 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %51 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = bitcast %struct.TYPE_6__* %53 to %struct.ib_sa_mad.0*
  %55 = bitcast %struct.ib_sa_mad.0* %54 to %struct.ib_sa_mad*
  %56 = call i32 %34(%struct.ib_sa_query* %35, i32 %49, %struct.ib_sa_mad* %55)
  br label %65

57:                                               ; preds = %23
  %58 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %59 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %58, i32 0, i32 0
  %60 = load i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)*, i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)** %59, align 8
  %61 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 %60(%struct.ib_sa_query* %61, i32 %63, %struct.ib_sa_mad* null)
  br label %65

65:                                               ; preds = %57, %48
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %68 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %67)
  ret void
}

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
