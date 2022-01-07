; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_7322_ibspeed_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_set_7322_ibspeed_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IBA7322_IBC_SPEED_MASK = common dso_local global i32 0, align 4
@IBA7322_IBC_IBTA_1_2_MASK = common dso_local global i32 0, align 4
@IBA7322_IBC_MAX_SPEED_MASK = common dso_local global i32 0, align 4
@IBA7322_IBC_SPEED_LSB = common dso_local global i32 0, align 4
@QIB_IB_QDR = common dso_local global i32 0, align 4
@IBA7322_IBC_SPEED_QDR = common dso_local global i32 0, align 4
@QIB_IB_DDR = common dso_local global i32 0, align 4
@IBA7322_IBC_SPEED_DDR = common dso_local global i32 0, align 4
@IBA7322_IBC_SPEED_SDR = common dso_local global i32 0, align 4
@krp_ibcctrl_b = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @set_7322_ibspeed_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_7322_ibspeed_fast(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %7 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IBA7322_IBC_SPEED_MASK, align 4
  %12 = load i32, i32* @IBA7322_IBC_IBTA_1_2_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IBA7322_IBC_MAX_SPEED_MASK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %10, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IBA7322_IBC_SPEED_LSB, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @IBA7322_IBC_IBTA_1_2_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IBA7322_IBC_MAX_SPEED_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %55

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @QIB_IB_QDR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @IBA7322_IBC_SPEED_QDR, align 4
  %39 = load i32, i32* @IBA7322_IBC_IBTA_1_2_MASK, align 4
  %40 = or i32 %38, %39
  br label %51

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @QIB_IB_DDR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @IBA7322_IBC_SPEED_DDR, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @IBA7322_IBC_SPEED_SDR, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %37
  %52 = phi i32 [ %40, %37 ], [ %50, %49 ]
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %23
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %58 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %83

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %67 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %71 = load i32, i32* @krp_ibcctrl_b, align 4
  %72 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %73 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %70, i32 %71, i32 %76)
  %78 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %79 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @kr_scratch, align 4
  %82 = call i32 @qib_write_kreg(i32 %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %64, %63
  ret void
}

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @qib_write_kreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
