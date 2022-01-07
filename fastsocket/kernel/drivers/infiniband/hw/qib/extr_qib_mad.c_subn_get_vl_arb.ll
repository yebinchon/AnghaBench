; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_vl_arb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_vl_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i32, i32 }
%struct.ib_device = type { i32 }
%struct.qib_pportdata = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }

@IB_VL_VL0 = common dso_local global i64 0, align 8
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@IB_VLARB_LOWPRI_0_31 = common dso_local global i32 0, align 4
@QIB_IB_TBL_VL_LOW_ARB = common dso_local global i32 0, align 4
@IB_VLARB_HIGHPRI_0_31 = common dso_local global i32 0, align 4
@QIB_IB_TBL_VL_HIGH_ARB = common dso_local global i32 0, align 4
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_vl_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_vl_arb(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_pportdata*, align 8
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be32_to_cpu(i32 %11)
  %13 = ashr i32 %12, 16
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @to_iport(%struct.ib_device* %14, i32 %15)
  %17 = call %struct.qib_pportdata* @ppd_from_ibp(i32 %16)
  store %struct.qib_pportdata* %17, %struct.qib_pportdata** %8, align 8
  %18 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %19 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memset(i32 %20, i32 0, i32 4)
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_VL_VL0, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %29 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %30 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %73

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IB_VLARB_LOWPRI_0_31, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %41, align 8
  %43 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %44 = load i32, i32* @QIB_IB_TBL_VL_LOW_ARB, align 4
  %45 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %46 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %42(%struct.qib_pportdata* %43, i32 %44, i32 %47)
  br label %72

49:                                               ; preds = %33
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IB_VLARB_HIGHPRI_0_31, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %57, align 8
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %60 = load i32, i32* @QIB_IB_TBL_VL_HIGH_ARB, align 4
  %61 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %62 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 %58(%struct.qib_pportdata* %59, i32 %60, i32 %63)
  br label %71

65:                                               ; preds = %49
  %66 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %67 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %68 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %53
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %27
  %74 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %75 = call i32 @reply(%struct.ib_smp* %74)
  ret i32 %75
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(i32) #1

declare dso_local i32 @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
