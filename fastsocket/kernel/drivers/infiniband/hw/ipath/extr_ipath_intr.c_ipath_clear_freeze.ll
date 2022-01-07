; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_ipath_clear_freeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_ipath_clear_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@E_SPKT_ERRS_IGNORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_clear_freeze(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %3 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %4 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %3, i32 %8, i64 0)
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %10, i32 %15, i64 0)
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %18 = call i32 @ipath_cancel_sends(%struct.ipath_devdata* %17, i32 1)
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %19, i32 %24, i64 %27)
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %29, i32 %34)
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %37 = call i32 @ipath_force_pio_avail_update(%struct.ipath_devdata* %36)
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %38, i32 %43, i64 0)
  %45 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %47 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @E_SPKT_ERRS_IGNORE, align 8
  %52 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %45, i32 %50, i64 %51)
  %53 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %60 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %53, i32 %58, i64 %61)
  %63 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %65 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %63, i32 %68, i64 -1)
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %72 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %70, i32 %75, i64 0)
  ret void
}

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i32 @ipath_cancel_sends(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_force_pio_avail_update(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
