; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_mthca_free_agents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mad.c_mthca_free_agents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i64*, %struct.ib_mad_agent***, %struct.TYPE_2__ }
%struct.ib_mad_agent = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_free_agents(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %63, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %18, i32 0, i32 1
  %20 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %20, i64 %22
  %24 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %24, i64 %26
  %28 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %27, align 8
  store %struct.ib_mad_agent* %28, %struct.ib_mad_agent** %3, align 8
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %30 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %29, i32 0, i32 1
  %31 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %31, i64 %33
  %35 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %35, i64 %37
  store %struct.ib_mad_agent* null, %struct.ib_mad_agent** %38, align 8
  %39 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %40 = call i32 @ib_unregister_mad_agent(%struct.ib_mad_agent* %39)
  br label %41

41:                                               ; preds = %17
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %55 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ib_destroy_ah(i64 %60)
  br label %62

62:                                               ; preds = %53, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %6

66:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ib_unregister_mad_agent(%struct.ib_mad_agent*) #1

declare dso_local i32 @ib_destroy_ah(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
