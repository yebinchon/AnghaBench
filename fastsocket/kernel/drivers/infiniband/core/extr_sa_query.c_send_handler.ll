; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_send_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_send_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32 }
%struct.ib_mad_send_wc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_sa_query** }
%struct.ib_sa_query = type { i32 (%struct.ib_sa_query*)*, i32, i32, i32 (%struct.ib_sa_query*, i32, i32*)* }

@ETIMEDOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@idr_lock = common dso_local global i32 0, align 4
@query_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_wc*)* @send_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_send_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.ib_mad_send_wc*, align 8
  %5 = alloca %struct.ib_sa_query*, align 8
  %6 = alloca i64, align 8
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %3, align 8
  store %struct.ib_mad_send_wc* %1, %struct.ib_mad_send_wc** %4, align 8
  %7 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %8 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %10, align 8
  %12 = getelementptr inbounds %struct.ib_sa_query*, %struct.ib_sa_query** %11, i64 0
  %13 = load %struct.ib_sa_query*, %struct.ib_sa_query** %12, align 8
  store %struct.ib_sa_query* %13, %struct.ib_sa_query** %5, align 8
  %14 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %15 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %14, i32 0, i32 3
  %16 = load i32 (%struct.ib_sa_query*, i32, i32*)*, i32 (%struct.ib_sa_query*, i32, i32*)** %15, align 8
  %17 = icmp ne i32 (%struct.ib_sa_query*, i32, i32*)* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %2
  %19 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %20 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %39 [
    i32 129, label %22
    i32 130, label %23
    i32 128, label %31
  ]

22:                                               ; preds = %18
  br label %47

23:                                               ; preds = %18
  %24 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %25 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %24, i32 0, i32 3
  %26 = load i32 (%struct.ib_sa_query*, i32, i32*)*, i32 (%struct.ib_sa_query*, i32, i32*)** %25, align 8
  %27 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 %26(%struct.ib_sa_query* %27, i32 %29, i32* null)
  br label %47

31:                                               ; preds = %18
  %32 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %33 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %32, i32 0, i32 3
  %34 = load i32 (%struct.ib_sa_query*, i32, i32*)*, i32 (%struct.ib_sa_query*, i32, i32*)** %33, align 8
  %35 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %36 = load i32, i32* @EINTR, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 %34(%struct.ib_sa_query* %35, i32 %37, i32* null)
  br label %47

39:                                               ; preds = %18
  %40 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %41 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %40, i32 0, i32 3
  %42 = load i32 (%struct.ib_sa_query*, i32, i32*)*, i32 (%struct.ib_sa_query*, i32, i32*)** %41, align 8
  %43 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 %42(%struct.ib_sa_query* %43, i32 %45, i32* null)
  br label %47

47:                                               ; preds = %39, %31, %23, %22
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_lock_irqsave(i32* @idr_lock, i64 %49)
  %51 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %52 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @idr_remove(i32* @query_idr, i32 %53)
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* @idr_lock, i64 %55)
  %57 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %58 = call i32 @free_mad(%struct.ib_sa_query* %57)
  %59 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %60 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ib_sa_client_put(i32 %61)
  %63 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %64 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %63, i32 0, i32 0
  %65 = load i32 (%struct.ib_sa_query*)*, i32 (%struct.ib_sa_query*)** %64, align 8
  %66 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %67 = call i32 %65(%struct.ib_sa_query* %66)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_mad(%struct.ib_sa_query*) #1

declare dso_local i32 @ib_sa_client_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
