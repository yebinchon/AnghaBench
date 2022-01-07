; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_portsamplesresult_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_portsamplesresult_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { i64 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portsamplesresult_ext = type { i32*, i32, i8*, i8* }
%struct.ipath_ibdev = type { i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ipath_cregs* }
%struct.ipath_cregs = type { i64 }
%struct.ib_smp = type { i32 }

@IB_PMA_SAMPLE_STATUS_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*)* @recv_pma_get_portsamplesresult_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pma_get_portsamplesresult_ext(%struct.ib_pma_mad* %0, %struct.ib_device* %1) #0 {
  %3 = alloca %struct.ib_pma_mad*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_pma_portsamplesresult_ext*, align 8
  %6 = alloca %struct.ipath_ibdev*, align 8
  %7 = alloca %struct.ipath_cregs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %3, align 8
  store %struct.ib_device* %1, %struct.ib_device** %4, align 8
  %10 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %3, align 8
  %11 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ib_pma_portsamplesresult_ext*
  store %struct.ib_pma_portsamplesresult_ext* %13, %struct.ib_pma_portsamplesresult_ext** %5, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %14)
  store %struct.ipath_ibdev* %15, %struct.ipath_ibdev** %6, align 8
  %16 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %17 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ipath_cregs*, %struct.ipath_cregs** %19, align 8
  store %struct.ipath_cregs* %20, %struct.ipath_cregs** %7, align 8
  %21 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %3, align 8
  %22 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @memset(i64 %23, i32 0, i32 8)
  %25 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %26 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @cpu_to_be16(i64 %27)
  %29 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %5, align 8
  %30 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ipath_cregs*, %struct.ipath_cregs** %7, align 8
  %32 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %37 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.ipath_cregs*, %struct.ipath_cregs** %7, align 8
  %40 = getelementptr inbounds %struct.ipath_cregs, %struct.ipath_cregs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @ipath_read_creg32(%struct.TYPE_2__* %38, i64 %41)
  store i64 %42, i64* %8, align 8
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %45 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i64, i64* %8, align 8
  %49 = call i8* @cpu_to_be16(i64 %48)
  %50 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %5, align 8
  %51 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = call i32 @cpu_to_be32(i32 -2147483648)
  %53 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %5, align 8
  %54 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %87, %47
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %58 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %55
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @IB_PMA_SAMPLE_STATUS_DONE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %79

67:                                               ; preds = %62
  %68 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %69 = load %struct.ipath_cregs*, %struct.ipath_cregs** %7, align 8
  %70 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %6, align 8
  %71 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @get_counter(%struct.ipath_ibdev* %68, %struct.ipath_cregs* %69, i32 %76)
  %78 = call i32 @cpu_to_be64(i32 %77)
  br label %79

79:                                               ; preds = %67, %66
  %80 = phi i32 [ 0, %66 ], [ %78, %67 ]
  %81 = load %struct.ib_pma_portsamplesresult_ext*, %struct.ib_pma_portsamplesresult_ext** %5, align 8
  %82 = getelementptr inbounds %struct.ib_pma_portsamplesresult_ext, %struct.ib_pma_portsamplesresult_ext* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %55

90:                                               ; preds = %55
  %91 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %3, align 8
  %92 = bitcast %struct.ib_pma_mad* %91 to %struct.ib_smp*
  %93 = call i32 @reply(%struct.ib_smp* %92)
  ret i32 %93
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i64 @ipath_read_creg32(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @get_counter(%struct.ipath_ibdev*, %struct.ipath_cregs*, i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
