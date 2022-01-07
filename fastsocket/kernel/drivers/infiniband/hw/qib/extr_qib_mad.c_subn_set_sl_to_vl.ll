; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_sl_to_vl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_set_sl_to_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64 }
%struct.ib_device = type { i32 }
%struct.qib_ibport = type { i32, i32* }

@IB_PORT_SL_MAP_SUP = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@_QIB_EVENT_SL2VL_CHANGE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_set_sl_to_vl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_sl_to_vl(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_smp*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %11, i32 %12)
  store %struct.qib_ibport* %13, %struct.qib_ibport** %8, align 8
  %14 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %15 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %19 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IB_PORT_SL_MAP_SUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %26 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %27 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %31 = call i32 @reply(%struct.ib_smp* %30)
  store i32 %31, i32* %4, align 4
  br label %76

32:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %60, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %36 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp ult i32 %34, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %33
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 4
  %44 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %45 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %54 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = add i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 2
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %9, align 8
  br label %33

65:                                               ; preds = %33
  %66 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %66, i32 %67)
  %69 = call i32 @ppd_from_ibp(%struct.qib_ibport* %68)
  %70 = load i32, i32* @_QIB_EVENT_SL2VL_CHANGE_BIT, align 4
  %71 = call i32 @qib_set_uevent_bits(i32 %69, i32 %70)
  %72 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %73 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @subn_get_sl_to_vl(%struct.ib_smp* %72, %struct.ib_device* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @qib_set_uevent_bits(i32, i32) #1

declare dso_local i32 @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @subn_get_sl_to_vl(%struct.ib_smp*, %struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
