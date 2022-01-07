; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_reg_mod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_reg_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@kr_ibsd_epb_transaction_reg = common dso_local global i32 0, align 4
@kr_pciesd_epb_transaction_reg = common dso_local global i32 0, align 4
@EPB_TRANS_TRIES = common dso_local global i32 0, align 4
@EPB_TRANS_RDY = common dso_local global i32 0, align 4
@EPB_RD = common dso_local global i32 0, align 4
@EPB_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32, i32, i32)* @qib_sd7220_reg_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_sd7220_reg_mod(%struct.qib_devdata* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %23 [
    i32 130, label %19
    i32 129, label %21
    i32 128, label %21
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @kr_ibsd_epb_transaction_reg, align 4
  store i32 %20, i32* %12, align 4
  br label %24

21:                                               ; preds = %5, %5
  %22 = load i32, i32* @kr_pciesd_epb_transaction_reg, align 4
  store i32 %22, i32* %12, align 4
  br label %24

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %123

24:                                               ; preds = %21, %19
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %17, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @epb_access(%struct.qib_devdata* %31, i32 %32, i32 1)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %17, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  store i32 -1, i32* %6, align 4
  br label %123

43:                                               ; preds = %24
  store i32 0, i32* %16, align 4
  %44 = load i32, i32* @EPB_TRANS_TRIES, align 4
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %59, %43
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @qib_read_kreg32(%struct.qib_devdata* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @EPB_TRANS_RDY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %48
  %58 = call i32 @udelay(i32 5)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %15, align 4
  br label %45

62:                                               ; preds = %56, %45
  %63 = load i32, i32* %15, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %62
  store i32 1, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 255
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EPB_RD, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %13, align 4
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @epb_trans(%struct.qib_devdata* %72, i32 %73, i32 %74, i32* %13)
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %68, %65
  %77 = load i32, i32* %15, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = or i32 %85, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @EPB_DATA_MASK, align 4
  %94 = and i32 %92, %93
  %95 = or i32 %91, %94
  store i32 %95, i32* %13, align 4
  %96 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @epb_trans(%struct.qib_devdata* %96, i32 %97, i32 %98, i32* %13)
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %82, %79, %76
  br label %101

101:                                              ; preds = %100, %62
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @epb_access(%struct.qib_devdata* %102, i32 %103, i32 -1)
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 -1, i32* %16, align 4
  br label %111

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @EPB_DATA_MASK, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %107, %106
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %113 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %17, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* %15, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 -1, i32* %16, align 4
  br label %121

121:                                              ; preds = %120, %111
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %36, %23
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @epb_access(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @epb_trans(%struct.qib_devdata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
