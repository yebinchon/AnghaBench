; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_get_nodeinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_get_nodeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.nodeinfo = type { i32, i32, i32, i64, i64, i32*, i32, i32, i8*, i8*, i32, i32 }
%struct.ipath_devdata = type { i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ipath_devdata* }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IPATH_SRC_OUI_1 = common dso_local global i32 0, align 4
@IPATH_SRC_OUI_2 = common dso_local global i32 0, align 4
@IPATH_SRC_OUI_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @recv_subn_get_nodeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_subn_get_nodeinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nodeinfo*, align 8
  %8 = alloca %struct.ipath_devdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %13 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %12, i32 0, i32 2
  %14 = bitcast i32* %13 to %struct.nodeinfo*
  store %struct.nodeinfo* %14, %struct.nodeinfo** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = call %struct.TYPE_2__* @to_idev(%struct.ib_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %17, align 8
  store %struct.ipath_devdata* %18, %struct.ipath_devdata** %8, align 8
  %19 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %20 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %30 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %31 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %36 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %38 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %40 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %42 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %45 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %47 = call %struct.TYPE_2__* @to_idev(%struct.ib_device* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %51 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %53 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %56 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %58 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %61 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %63 = call i32 @ipath_get_npkeys(%struct.ipath_devdata* %62)
  %64 = call i8* @cpu_to_be16(i32 %63)
  %65 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %66 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %65, i32 0, i32 9
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %68 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be16(i32 %69)
  %71 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %72 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %74 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %77 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = shl i32 %79, 16
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @cpu_to_be32(i32 %82)
  %84 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %85 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %88 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %90 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @IPATH_SRC_OUI_1, align 4
  %93 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %94 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @IPATH_SRC_OUI_2, align 4
  %98 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %99 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @IPATH_SRC_OUI_3, align 4
  %103 = load %struct.nodeinfo*, %struct.nodeinfo** %7, align 8
  %104 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %102, i32* %106, align 4
  %107 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %108 = call i32 @reply(%struct.ib_smp* %107)
  ret i32 %108
}

declare dso_local %struct.TYPE_2__* @to_idev(%struct.ib_device*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ipath_get_npkeys(%struct.ipath_devdata*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
