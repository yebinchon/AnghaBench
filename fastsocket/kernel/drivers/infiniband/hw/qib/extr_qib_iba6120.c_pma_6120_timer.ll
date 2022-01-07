; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_pma_6120_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_pma_6120_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_ibport, %struct.TYPE_2__* }
%struct.qib_ibport = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.qib_chip_specific* }
%struct.qib_chip_specific = type { i64, i8*, i8*, i8*, i8*, i8*, i32 }

@IB_PMA_SAMPLE_STATUS_STARTED = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_RUNNING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pma_6120_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pma_6120_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.qib_chip_specific*, align 8
  %5 = alloca %struct.qib_ibport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.qib_pportdata*
  store %struct.qib_pportdata* %13, %struct.qib_pportdata** %3, align 8
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %17, align 8
  store %struct.qib_chip_specific* %18, %struct.qib_chip_specific** %4, align 8
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %20 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %19, i32 0, i32 0
  store %struct.qib_ibport* %20, %struct.qib_ibport** %5, align 8
  %21 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %22 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %26 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_PMA_SAMPLE_STATUS_STARTED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %1
  %31 = load i64, i64* @IB_PMA_SAMPLE_STATUS_RUNNING, align 8
  %32 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %33 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %35 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %36 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %35, i32 0, i32 1
  %37 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %38 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %37, i32 0, i32 2
  %39 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %40 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %39, i32 0, i32 3
  %41 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %42 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %41, i32 0, i32 4
  %43 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %44 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %43, i32 0, i32 5
  %45 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %34, i8** %36, i8** %38, i8** %40, i8** %42, i8** %44)
  %46 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %47 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %46, i32 0, i32 6
  %48 = load i64, i64* @jiffies, align 8
  %49 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %50 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @usecs_to_jiffies(i32 %51)
  %53 = add nsw i64 %48, %52
  %54 = call i32 @mod_timer(i32* %47, i64 %53)
  br label %118

55:                                               ; preds = %1
  %56 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %57 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IB_PMA_SAMPLE_STATUS_RUNNING, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %117

61:                                               ; preds = %55
  %62 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %63 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %64 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %66 = call i32 @qib_snapshot_counters(%struct.qib_pportdata* %65, i8** %7, i8** %8, i8** %9, i8** %10, i8** %11)
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %69 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %67 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %76 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %79 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %77 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %86 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %89 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = ptrtoint i8* %87 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %96 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %99 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %97 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %106 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %109 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %108, i32 0, i32 5
  %110 = load i8*, i8** %109, align 8
  %111 = ptrtoint i8* %107 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.qib_chip_specific*, %struct.qib_chip_specific** %4, align 8
  %116 = getelementptr inbounds %struct.qib_chip_specific, %struct.qib_chip_specific* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %61, %55
  br label %118

118:                                              ; preds = %117, %30
  %119 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %120 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %119, i32 0, i32 0
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_snapshot_counters(%struct.qib_pportdata*, i8**, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
