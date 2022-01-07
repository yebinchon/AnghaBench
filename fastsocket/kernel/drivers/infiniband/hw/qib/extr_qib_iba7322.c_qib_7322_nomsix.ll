; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_nomsix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_nomsix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@kr_intgranted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_7322_nomsix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7322_nomsix(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i64 -1, i64* %9, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %1
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %72, %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @irq_set_affinity_hint(i32 %37, i32* null)
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @free_cpumask_var(i32 %48)
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @free_irq(i32 %60, i32 %70)
  br label %72

72:                                               ; preds = %26
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %22

75:                                               ; preds = %22
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %77 = call i32 @qib_nomsix(%struct.qib_devdata* %76)
  br label %78

78:                                               ; preds = %75, %1
  %79 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %80 = load i32, i32* @kr_intgranted, align 4
  %81 = call i64 @qib_read_kreg64(%struct.qib_devdata* %79, i32 %80)
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %86 = load i32, i32* @kr_intgranted, align 4
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @qib_write_kreg(%struct.qib_devdata* %85, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %78
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @qib_nomsix(%struct.qib_devdata*) #1

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
