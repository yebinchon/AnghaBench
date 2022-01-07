; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_query_gid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qib_devdata = type { i64 }
%struct.qib_ibport = type { i32*, i32 }
%struct.qib_pportdata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QIB_GUIDS_PER_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i64, i32, %union.ib_gid*)* @qib_query_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_query_gid(%struct.ib_device* %0, i64 %1, i32 %2, %union.ib_gid* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qib_ibport*, align 8
  %12 = alloca %struct.qib_pportdata*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.ib_gid* %3, %union.ib_gid** %8, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %13)
  store %struct.qib_devdata* %14, %struct.qib_devdata** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %68

26:                                               ; preds = %17
  %27 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %27, i64 %28)
  store %struct.qib_ibport* %29, %struct.qib_ibport** %11, align 8
  %30 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %31 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %30)
  store %struct.qib_pportdata* %31, %struct.qib_pportdata** %12, align 8
  %32 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %33 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %36 = bitcast %union.ib_gid* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %45 = bitcast %union.ib_gid* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %67

47:                                               ; preds = %26
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @QIB_GUIDS_PER_PORT, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %53 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %61 = bitcast %union.ib_gid* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  br label %66

63:                                               ; preds = %47
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %51
  br label %67

67:                                               ; preds = %66, %40
  br label %68

68:                                               ; preds = %67, %23
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
