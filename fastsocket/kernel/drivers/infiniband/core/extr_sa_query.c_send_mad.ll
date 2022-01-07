; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_send_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_sa_query.c_send_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_query = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ib_sa_query** }

@query_idr = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@idr_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_query*, i32, i32)* @send_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mad(%struct.ib_sa_query* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_query*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_sa_query* %0, %struct.ib_sa_query** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @idr_pre_get(i32* @query_idr, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %73

18:                                               ; preds = %11
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @idr_lock, i64 %19)
  %21 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %22 = call i32 @idr_get_new(i32* @query_idr, %struct.ib_sa_query* %21, i32* %10)
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @idr_lock, i64 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %11

30:                                               ; preds = %18
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %73

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %38 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %42 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %43 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %45, align 8
  %47 = getelementptr inbounds %struct.ib_sa_query*, %struct.ib_sa_query** %46, i64 0
  store %struct.ib_sa_query* %41, %struct.ib_sa_query** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %50 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %52 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call i32 @ib_post_send_mad(%struct.TYPE_2__* %53, i32* null)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %35
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_lock_irqsave(i32* @idr_lock, i64 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @idr_remove(i32* @query_idr, i32 %60)
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* @idr_lock, i64 %62)
  br label %64

64:                                               ; preds = %57, %35
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %33, %15
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_get_new(i32*, %struct.ib_sa_query*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_post_send_mad(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
