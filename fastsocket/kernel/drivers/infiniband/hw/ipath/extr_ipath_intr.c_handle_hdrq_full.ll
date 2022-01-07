; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_hdrq_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_hdrq_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ipath_devdata = type { i64, i32, i64, %struct.ipath_portdata** }
%struct.ipath_portdata = type { i64, i64, i32, i32, i32 }

@ipath_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IPATH_NODMA_RTAIL = common dso_local global i32 0, align 4
@ur_rcvhdrtail = common dso_local global i32 0, align 4
@ur_rcvhdrhead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @handle_hdrq_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_hdrq_full(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ipath_portdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 4
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %101, %1
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %10
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 3
  %19 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %19, i64 %20
  %22 = load %struct.ipath_portdata*, %struct.ipath_portdata** %21, align 8
  store %struct.ipath_portdata* %22, %struct.ipath_portdata** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %16
  %26 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %27 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %30 = call i64 @ipath_get_hdrqtail(%struct.ipath_portdata* %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 1, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %25
  br label %101

39:                                               ; preds = %16
  %40 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %41 = icmp ne %struct.ipath_portdata* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %44 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %39
  br label %101

48:                                               ; preds = %42
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IPATH_NODMA_RTAIL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %57 = load i32, i32* @ur_rcvhdrtail, align 4
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @ipath_read_ureg32(%struct.ipath_devdata* %56, i32 %57, i64 %58)
  store i64 %59, i64* %5, align 8
  br label %63

60:                                               ; preds = %48
  %61 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %62 = call i64 @ipath_get_rcvhdrtail(%struct.ipath_portdata* %61)
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %66 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %101

70:                                               ; preds = %63
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %72 = load i32, i32* @ur_rcvhdrhead, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @ipath_read_ureg32(%struct.ipath_devdata* %71, i32 %72, i64 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %88, label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82, %70
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %91 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %93 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = call i32 (...) @wmb()
  %97 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %98 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %97, i32 0, i32 2
  %99 = call i32 @wake_up_interruptible(i32* %98)
  br label %100

100:                                              ; preds = %88, %82, %79
  br label %101

101:                                              ; preds = %100, %69, %47, %38
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %10

104:                                              ; preds = %10
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @ipath_get_hdrqtail(%struct.ipath_portdata*) #1

declare dso_local i64 @ipath_read_ureg32(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i64 @ipath_get_rcvhdrtail(%struct.ipath_portdata*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
