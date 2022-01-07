; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_guidinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_guidinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.qib_devdata = type { i32, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i64, %struct.qib_ibport }
%struct.qib_ibport = type { i64* }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@QIB_GUIDS_PER_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_guidinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_guidinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qib_pportdata*, align 8
  %12 = alloca %struct.qib_ibport*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %15)
  store %struct.qib_devdata* %16, %struct.qib_devdata** %7, align 8
  %17 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %18 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = mul nsw i32 8, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %24 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i64*
  store i64* %26, i64** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %30 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memset(i64 %31, i32 0, i32 8)
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %35
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 1
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i64 %46
  store %struct.qib_pportdata* %47, %struct.qib_pportdata** %11, align 8
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 1
  store %struct.qib_ibport* %49, %struct.qib_ibport** %12, align 8
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  %51 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %57 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %58 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %86

61:                                               ; preds = %41
  %62 = load i64, i64* %13, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %62, i64* %64, align 8
  store i32 1, i32* %14, align 4
  br label %65

65:                                               ; preds = %82, %61
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @QIB_GUIDS_PER_PORT, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %71 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sub i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %77, i64* %81, align 8
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %14, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %65

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85, %55
  br label %93

87:                                               ; preds = %35, %3
  %88 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %89 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %90 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %86
  %94 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %95 = call i32 @reply(%struct.ib_smp* %94)
  ret i32 %95
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
