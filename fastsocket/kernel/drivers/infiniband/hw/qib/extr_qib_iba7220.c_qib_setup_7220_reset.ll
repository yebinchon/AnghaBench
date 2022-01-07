; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_setup_7220_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_setup_7220_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32*, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Resetting InfiniPath unit %u\0A\00", align 1
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_PRESENT = common dso_local global i32 0, align 4
@QLOGIC_IB_C_RESET = common dso_local global i32 0, align 4
@kr_control = common dso_local global i64 0, align 8
@kr_revision = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Reset failed to setup PCIe or interrupts; continuing anyway\0A\00", align 1
@IBA7220_IBC_IBTA_1_2_MASK = common dso_local global i32 0, align 4
@QIBL_IB_FORCE_NOTIFY = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_setup_7220_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_setup_7220_reset(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %11 = call i32 @qib_pcie_getcmd(%struct.qib_devdata* %10, i32* %6, i32* %7, i32* %8)
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %18 = call i32 @qib_7220_set_intr_state(%struct.qib_devdata* %17, i32 0)
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @QIB_INITTED, align 4
  %38 = load i32, i32* @QIB_PRESENT, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @QLOGIC_IB_C_RESET, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @kr_control, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = call i32 @writeq(i32 %52, i32* %57)
  %59 = call i32 (...) @mb()
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %94, %1
  %61 = load i32, i32* %4, align 4
  %62 = icmp sle i32 %61, 5
  br i1 %62, label %63, label %97

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 1, %64
  %66 = mul nsw i32 %65, 2000
  %67 = add nsw i32 1000, %66
  %68 = call i32 @msleep(i32 %67)
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @qib_pcie_reenable(%struct.qib_devdata* %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @kr_revision, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = call i32 @readq(i32* %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %82 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %63
  %86 = load i32, i32* @QIB_PRESENT, align 4
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %92 = call i32 @qib_reinit_intr(%struct.qib_devdata* %91)
  store i32 %92, i32* %5, align 4
  br label %98

93:                                               ; preds = %63
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %60

97:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %85
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %160

101:                                              ; preds = %98
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %103 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %104 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @qib_pcie_params(%struct.qib_devdata* %102, i32 %105, i32* null, i32* null)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %110 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %109, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %101
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %113 = load i64, i64* @kr_control, align 8
  %114 = call i32 @qib_write_kreg(%struct.qib_devdata* %112, i64 %113, i64 0)
  %115 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %116 = call i32 @qib_7220_init_hwerrors(%struct.qib_devdata* %115)
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %118 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IBA7220_IBC_IBTA_1_2_MASK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %111
  %128 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %129 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %128, i32 0, i32 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %111
  %133 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %134 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %133, i32 0, i32 3
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @spin_lock_irqsave(i32* %136, i64 %137)
  %139 = load i32, i32* @QIBL_IB_FORCE_NOTIFY, align 4
  %140 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %141 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %139
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* @QIBL_IB_AUTONEG_FAILED, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %149 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %147
  store i32 %153, i32* %151, align 4
  %154 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %155 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %154, i32 0, i32 3
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  br label %160

160:                                              ; preds = %132, %98
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @qib_pcie_getcmd(%struct.qib_devdata*, i32*, i32*, i32*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_7220_set_intr_state(%struct.qib_devdata*, i32) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qib_pcie_reenable(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @qib_reinit_intr(%struct.qib_devdata*) #1

declare dso_local i64 @qib_pcie_params(%struct.qib_devdata*, i32, i32*, i32*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i64, i64) #1

declare dso_local i32 @qib_7220_init_hwerrors(%struct.qib_devdata*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
