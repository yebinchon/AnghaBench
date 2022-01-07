; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_setup_setextled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_setup_setextled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.qib_devdata* }
%struct.qib_devdata = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@QIB_LED_PHYS = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_LINKUP = common dso_local global i64 0, align 8
@IB_PHYSPORTSTATE_DISABLED = common dso_local global i64 0, align 8
@QIB_LED_LOG = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@IB_PORT_DOWN = common dso_local global i64 0, align 8
@kr_ibcstatus = common dso_local global i32 0, align 4
@EXTCtrl = common dso_local global i32 0, align 4
@LEDPriPortGreenOn = common dso_local global i32 0, align 4
@LEDPriPortYellowOn = common dso_local global i32 0, align 4
@kr_extctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i64)* @qib_6120_setup_setextled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_6120_setup_setextled(%struct.qib_pportdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  store %struct.qib_devdata* %13, %struct.qib_devdata** %10, align 8
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %118

19:                                               ; preds = %2
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @QIB_LED_PHYS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @IB_PHYSPORTSTATE_LINKUP, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load i64, i64* @IB_PHYSPORTSTATE_DISABLED, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %8, align 8
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %38 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @QIB_LED_LOG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i64, i64* @IB_PORT_ACTIVE, align 8
  br label %47

45:                                               ; preds = %35
  %46 = load i64, i64* @IB_PORT_DOWN, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  store i64 %48, i64* %7, align 8
  br label %62

49:                                               ; preds = %19
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %54 = load i32, i32* @kr_ibcstatus, align 4
  %55 = call i64 @qib_read_kreg64(%struct.qib_devdata* %53, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @qib_6120_phys_portstate(i64 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @qib_6120_iblink_state(i64 %58)
  store i64 %59, i64* %7, align 8
  br label %61

60:                                               ; preds = %49
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %60, %52
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %64 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %70 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @EXTCtrl, align 4
  %75 = load i32, i32* @LEDPriPortGreenOn, align 4
  %76 = call i64 @SYM_MASK(i32 %74, i32 %75)
  %77 = load i32, i32* @EXTCtrl, align 4
  %78 = load i32, i32* @LEDPriPortYellowOn, align 4
  %79 = call i64 @SYM_MASK(i32 %77, i32 %78)
  %80 = or i64 %76, %79
  %81 = xor i64 %80, -1
  %82 = and i64 %73, %81
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @IB_PHYSPORTSTATE_LINKUP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %62
  %87 = load i32, i32* @EXTCtrl, align 4
  %88 = load i32, i32* @LEDPriPortYellowOn, align 4
  %89 = call i64 @SYM_MASK(i32 %87, i32 %88)
  %90 = load i64, i64* %5, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %86, %62
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* @EXTCtrl, align 4
  %98 = load i32, i32* @LEDPriPortGreenOn, align 4
  %99 = call i64 @SYM_MASK(i32 %97, i32 %98)
  %100 = load i64, i64* %5, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %96, %92
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %105 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i64 %103, i64* %107, align 8
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %109 = load i32, i32* @kr_extctrl, align 4
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @qib_write_kreg(%struct.qib_devdata* %108, i32 %109, i64 %110)
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  %113 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  br label %118

118:                                              ; preds = %102, %18
  ret void
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i64 @qib_6120_phys_portstate(i64) #1

declare dso_local i64 @qib_6120_iblink_state(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @SYM_MASK(i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
