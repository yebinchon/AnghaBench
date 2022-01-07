; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_setup_qdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_setup_qdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.qdio_initialize = type { i32, i32, i32, i32 }

@PAGE_DEFAULT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, %struct.qdio_initialize*)* @setup_qdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_qdr(%struct.qdio_irq* %0, %struct.qdio_initialize* %1) #0 {
  %3 = alloca %struct.qdio_irq*, align 8
  %4 = alloca %struct.qdio_initialize*, align 8
  %5 = alloca i32, align 4
  store %struct.qdio_irq* %0, %struct.qdio_irq** %3, align 8
  store %struct.qdio_initialize* %1, %struct.qdio_initialize** %4, align 8
  %6 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %7 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %10 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 7
  store i32 %8, i32* %12, align 8
  %13 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %14 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %17 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  store i32 %15, i32* %19, align 4
  %20 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %21 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %24 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %28 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %31 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %35 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %39 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 1, i32* %41, align 4
  %42 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %43 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %42, i32 0, i32 3
  %44 = ptrtoint i32* %43 to i64
  %45 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %46 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  store i64 %44, i64* %48, align 8
  %49 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %50 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %51 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  store i32 %49, i32* %53, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %67, %2
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %57 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %62 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %63 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @__qdio_allocate_fill_qdr(%struct.qdio_irq* %61, i32 %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %54

70:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %87, %70
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %74 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %79 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %80 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %84 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @__qdio_allocate_fill_qdr(%struct.qdio_irq* %78, i32 %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %71

90:                                               ; preds = %71
  ret void
}

declare dso_local i32 @__qdio_allocate_fill_qdr(%struct.qdio_irq*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
