; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_setup_ht_setextled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_setup_ht_setextled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ipath_diag_inuse = common dso_local global i64 0, align 8
@IPATH_LED_PHYS = common dso_local global i32 0, align 4
@INFINIPATH_IBCS_LT_STATE_LINKUP = common dso_local global i64 0, align 8
@INFINIPATH_IBCS_LT_STATE_DISABLED = common dso_local global i64 0, align 8
@IPATH_LED_LOG = common dso_local global i32 0, align 4
@INFINIPATH_IBCS_L_STATE_ACTIVE = common dso_local global i64 0, align 8
@INFINIPATH_IBCS_L_STATE_DOWN = common dso_local global i64 0, align 8
@INFINIPATH_EXTC_LEDGBLOK_ON = common dso_local global i64 0, align 8
@INFINIPATH_EXTC_LEDGBLERR_OFF = common dso_local global i64 0, align 8
@INFINIPATH_EXTC_LED1PRIPORT_ON = common dso_local global i64 0, align 8
@INFINIPATH_EXTC_LED2PRIPORT_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, i64, i64)* @ipath_setup_ht_setextled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_setup_ht_setextled(%struct.ipath_devdata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* @ipath_diag_inuse, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %118

12:                                               ; preds = %3
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %19 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IPATH_LED_PHYS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @INFINIPATH_IBCS_LT_STATE_LINKUP, align 8
  br label %28

26:                                               ; preds = %17
  %27 = load i64, i64* @INFINIPATH_IBCS_LT_STATE_DISABLED, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  store i64 %29, i64* %6, align 8
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %31 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IPATH_LED_LOG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* @INFINIPATH_IBCS_L_STATE_ACTIVE, align 8
  br label %40

38:                                               ; preds = %28
  %39 = load i64, i64* @INFINIPATH_IBCS_L_STATE_DOWN, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %40, %12
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 3
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %48 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %77

51:                                               ; preds = %42
  %52 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %53 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INFINIPATH_EXTC_LEDGBLOK_ON, align 8
  %56 = xor i64 %55, -1
  %57 = and i64 %54, %56
  %58 = load i64, i64* @INFINIPATH_EXTC_LEDGBLERR_OFF, align 8
  %59 = or i64 %57, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @INFINIPATH_IBCS_LT_STATE_LINKUP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load i64, i64* @INFINIPATH_EXTC_LEDGBLERR_OFF, align 8
  %65 = xor i64 %64, -1
  %66 = load i64, i64* %7, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %63, %51
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @INFINIPATH_IBCS_L_STATE_ACTIVE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i64, i64* @INFINIPATH_EXTC_LEDGBLOK_ON, align 8
  %74 = load i64, i64* %7, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %72, %68
  br label %102

77:                                               ; preds = %42
  %78 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %79 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @INFINIPATH_EXTC_LED1PRIPORT_ON, align 8
  %82 = load i64, i64* @INFINIPATH_EXTC_LED2PRIPORT_ON, align 8
  %83 = or i64 %81, %82
  %84 = xor i64 %83, -1
  %85 = and i64 %80, %84
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @INFINIPATH_IBCS_LT_STATE_LINKUP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load i64, i64* @INFINIPATH_EXTC_LED1PRIPORT_ON, align 8
  %91 = load i64, i64* %7, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %89, %77
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @INFINIPATH_IBCS_L_STATE_ACTIVE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i64, i64* @INFINIPATH_EXTC_LED2PRIPORT_ON, align 8
  %99 = load i64, i64* %7, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %7, align 8
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %105 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %107 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %108 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %107, i32 0, i32 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %106, i32 %111, i64 %112)
  %114 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %115 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %114, i32 0, i32 3
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  br label %118

118:                                              ; preds = %102, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
