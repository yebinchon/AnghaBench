; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_setup_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_setup_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Resetting InfiniPath unit %u\0A\00", align 1
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_PRESENT = common dso_local global i32 0, align 4
@QLOGIC_IB_C_RESET = common dso_local global i32 0, align 4
@kr_control = common dso_local global i64 0, align 8
@kr_revision = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Reset failed to setup PCIe or interrupts; continuing anyway\0A\00", align 1
@kr_gpio_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_6120_setup_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_6120_setup_reset(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %10 = call i32 @qib_pcie_getcmd(%struct.qib_devdata* %9, i32* %6, i32* %7, i32* %8)
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = call i32 @qib_6120_set_intr_state(%struct.qib_devdata* %16, i32 0)
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @QIB_INITTED, align 4
  %31 = load i32, i32* @QIB_PRESENT, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @QLOGIC_IB_C_RESET, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @kr_control, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @writeq(i32 %45, i32* %50)
  %52 = call i32 (...) @mb()
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %87, %1
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 5
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 1, %57
  %59 = mul nsw i32 %58, 2000
  %60 = add nsw i32 1000, %59
  %61 = call i32 @msleep(i32 %60)
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @qib_pcie_reenable(%struct.qib_devdata* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @kr_revision, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = call i32 @readq(i32* %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %56
  %79 = load i32, i32* @QIB_PRESENT, align 4
  %80 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %81 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %85 = call i32 @qib_reinit_intr(%struct.qib_devdata* %84)
  store i32 %85, i32* %5, align 4
  br label %91

86:                                               ; preds = %56
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %53

90:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %96 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %97 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @qib_pcie_params(%struct.qib_devdata* %95, i32 %98, i32* null, i32* null)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %103 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %102, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %94
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %106 = call i32 @qib_6120_init_hwerrors(%struct.qib_devdata* %105)
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %108 = load i32, i32* @kr_gpio_mask, align 4
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %110 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @qib_write_kreg(%struct.qib_devdata* %107, i32 %108, i32 %113)
  %115 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %116 = call i32 @qib_6120_init_hwerrors(%struct.qib_devdata* %115)
  br label %117

117:                                              ; preds = %104, %91
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @qib_pcie_getcmd(%struct.qib_devdata*, i32*, i32*, i32*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_6120_set_intr_state(%struct.qib_devdata*, i32) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qib_pcie_reenable(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @qib_reinit_intr(%struct.qib_devdata*) #1

declare dso_local i64 @qib_pcie_params(%struct.qib_devdata*, i32, i32*, i32*) #1

declare dso_local i32 @qib_6120_init_hwerrors(%struct.qib_devdata*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
