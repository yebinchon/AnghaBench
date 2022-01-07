; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ocrdma_pd = type { i32, i64, i64, %struct.ocrdma_dev* }
%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@OCRDMA_DPP_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_dealloc_pd(%struct.ib_pd* %0) #0 {
  %2 = alloca %struct.ib_pd*, align 8
  %3 = alloca %struct.ocrdma_pd*, align 8
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %2, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %9 = call %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd* %8)
  store %struct.ocrdma_pd* %9, %struct.ocrdma_pd** %3, align 8
  %10 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %11 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %10, i32 0, i32 3
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %11, align 8
  store %struct.ocrdma_dev* %12, %struct.ocrdma_dev** %4, align 8
  %13 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %14 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %15 = call i32 @ocrdma_mbx_dealloc_pd(%struct.ocrdma_dev* %13, %struct.ocrdma_pd* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %17 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %1
  %21 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %22 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %26 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @OCRDMA_DPP_PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %24, %30
  store i64 %31, i64* %7, align 8
  %32 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %33 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %20
  %37 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %38 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @OCRDMA_DPP_PAGE_SIZE, align 4
  %42 = call i32 @ocrdma_del_mmap(i64 %39, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %20
  %44 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %45 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %49 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %52 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %47, %56
  store i64 %57, i64* %6, align 8
  %58 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %59 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %63 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ocrdma_del_mmap(i64 %60, i64 %61, i32 %65)
  br label %67

67:                                               ; preds = %43, %1
  %68 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %3, align 8
  %69 = call i32 @kfree(%struct.ocrdma_pd* %68)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd*) #1

declare dso_local i32 @ocrdma_mbx_dealloc_pd(%struct.ocrdma_dev*, %struct.ocrdma_pd*) #1

declare dso_local i32 @ocrdma_del_mmap(i64, i64, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
