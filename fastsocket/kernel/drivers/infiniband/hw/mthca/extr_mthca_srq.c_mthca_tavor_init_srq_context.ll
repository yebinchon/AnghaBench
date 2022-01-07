; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_tavor_init_srq_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_srq.c_mthca_tavor_init_srq_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.mthca_pd = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.mthca_srq = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mthca_tavor_srq_context = type { i8*, i8*, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*, %struct.mthca_tavor_srq_context*)* @mthca_tavor_init_srq_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_tavor_init_srq_context(%struct.mthca_dev* %0, %struct.mthca_pd* %1, %struct.mthca_srq* %2, %struct.mthca_tavor_srq_context* %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_pd*, align 8
  %7 = alloca %struct.mthca_srq*, align 8
  %8 = alloca %struct.mthca_tavor_srq_context*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_pd* %1, %struct.mthca_pd** %6, align 8
  store %struct.mthca_srq* %2, %struct.mthca_srq** %7, align 8
  store %struct.mthca_tavor_srq_context* %3, %struct.mthca_tavor_srq_context** %8, align 8
  %9 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %8, align 8
  %10 = call i32 @memset(%struct.mthca_tavor_srq_context* %9, i32 0, i32 32)
  %11 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %12 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 4
  %15 = shl i32 1, %14
  %16 = call i32 @cpu_to_be64(i32 %15)
  %17 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %8, align 8
  %18 = getelementptr inbounds %struct.mthca_tavor_srq_context, %struct.mthca_tavor_srq_context* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mthca_pd*, %struct.mthca_pd** %6, align 8
  %20 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %8, align 8
  %24 = getelementptr inbounds %struct.mthca_tavor_srq_context, %struct.mthca_tavor_srq_context* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.mthca_srq*, %struct.mthca_srq** %7, align 8
  %26 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %8, align 8
  %32 = getelementptr inbounds %struct.mthca_tavor_srq_context, %struct.mthca_tavor_srq_context* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mthca_pd*, %struct.mthca_pd** %6, align 8
  %34 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %4
  %39 = load %struct.mthca_pd*, %struct.mthca_pd** %6, align 8
  %40 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_14__* @to_mucontext(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %8, align 8
  %51 = getelementptr inbounds %struct.mthca_tavor_srq_context, %struct.mthca_tavor_srq_context* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %60

52:                                               ; preds = %4
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %54 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = load %struct.mthca_tavor_srq_context*, %struct.mthca_tavor_srq_context** %8, align 8
  %59 = getelementptr inbounds %struct.mthca_tavor_srq_context, %struct.mthca_tavor_srq_context* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %52, %38
  ret void
}

declare dso_local i32 @memset(%struct.mthca_tavor_srq_context*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_14__* @to_mucontext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
