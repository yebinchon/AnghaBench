; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_ibsd_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_ibsd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@kr_ibserdesctrl = common dso_local global i32 0, align 4
@IB_7220_SERDES = common dso_local global i32 0, align 4
@kr_hwerrmask = common dso_local global i32 0, align 4
@QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR = common dso_local global i64 0, align 8
@kr_scratch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to re-sync IB EPB\0A\00", align 1
@IB_MPREG5 = common dso_local global i32 0, align 4
@IB_MPREG6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to set WDOG disable\0A\00", align 1
@kr_hwerrstatus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"IBUC Parity still set after RST\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32)* @qib_ibsd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_ibsd_reset(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %10 = load i32, i32* @kr_ibserdesctrl, align 4
  %11 = call i64 @qib_read_kreg64(%struct.qib_devdata* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %22 = load i32, i32* @IB_7220_SERDES, align 4
  %23 = call i32 @epb_access(%struct.qib_devdata* %21, i32 %22, i32 1)
  %24 = load i64, i64* %5, align 8
  %25 = or i64 %24, 1
  store i64 %25, i64* %5, align 8
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %27 = load i32, i32* @kr_hwerrmask, align 4
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  %36 = call i32 @qib_write_kreg(%struct.qib_devdata* %26, i32 %27, i64 %35)
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %38 = load i32, i32* @kr_ibserdesctrl, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @qib_write_kreg(%struct.qib_devdata* %37, i32 %38, i64 %39)
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %42 = load i32, i32* @kr_scratch, align 4
  %43 = call i32 @qib_read_kreg32(%struct.qib_devdata* %41, i32 %42)
  %44 = call i32 @udelay(i32 2)
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %46 = load i32, i32* @IB_7220_SERDES, align 4
  %47 = call i32 @epb_access(%struct.qib_devdata* %45, i32 %46, i32 -1)
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %131

54:                                               ; preds = %2
  %55 = load i64, i64* %5, align 8
  %56 = and i64 %55, -2
  store i64 %56, i64* %5, align 8
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %58 = load i32, i32* @kr_hwerrmask, align 4
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  %67 = call i32 @qib_write_kreg(%struct.qib_devdata* %57, i32 %58, i64 %66)
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %69 = call i32 @qib_resync_ibepb(%struct.qib_devdata* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %54
  %73 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %74 = call i32 @qib_dev_err(%struct.qib_devdata* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %54
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %77 = load i32, i32* @IB_7220_SERDES, align 4
  %78 = load i32, i32* @IB_MPREG5, align 4
  %79 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %76, i32 %77, i32 %78, i32 1, i32 1)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %132

83:                                               ; preds = %75
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %85 = load i32, i32* @IB_7220_SERDES, align 4
  %86 = load i32, i32* @IB_MPREG6, align 4
  %87 = call i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %84, i32 %85, i32 %86, i32 128, i32 128)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %92 = call i32 @qib_dev_err(%struct.qib_devdata* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %132

93:                                               ; preds = %83
  %94 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %95 = load i32, i32* @kr_ibserdesctrl, align 4
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @qib_write_kreg(%struct.qib_devdata* %94, i32 %95, i64 %96)
  %98 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %99 = load i32, i32* @kr_scratch, align 4
  %100 = call i32 @qib_read_kreg32(%struct.qib_devdata* %98, i32 %99)
  %101 = call i32 @udelay(i32 1)
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %103 = call i32 @qib_sd7220_clr_ibpar(%struct.qib_devdata* %102)
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %105 = load i32, i32* @kr_hwerrstatus, align 4
  %106 = call i64 @qib_read_kreg64(%struct.qib_devdata* %104, i32 %105)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %93
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %113 = call i32 @qib_dev_err(%struct.qib_devdata* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i64, i64* @QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR, align 8
  %115 = xor i64 %114, -1
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = and i64 %120, %115
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %111, %93
  %123 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %124 = load i32, i32* @kr_hwerrmask, align 4
  %125 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %126 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @qib_write_kreg(%struct.qib_devdata* %123, i32 %124, i64 %129)
  br label %131

131:                                              ; preds = %122, %14
  br label %132

132:                                              ; preds = %131, %90, %82
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @epb_access(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_resync_ibepb(%struct.qib_devdata*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @qib_sd7220_reg_mod(%struct.qib_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @qib_sd7220_clr_ibpar(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
