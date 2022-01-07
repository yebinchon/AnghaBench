; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_enable_hwirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_enable_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PITA_INT0_ENABLE = common dso_local global i32 0, align 4
@TIGER_IRQ_BIT = common dso_local global i64 0, align 8
@TIGER_AUX_IRQMASK = common dso_local global i64 0, align 8
@QS1000_IRQ_ON = common dso_local global i64 0, align 8
@ELSA_IRQ_ADDR = common dso_local global i64 0, align 8
@QS3000_IRQ_ON = common dso_local global i64 0, align 8
@NICCY_IRQ_CTRL_REG = common dso_local global i64 0, align 8
@NICCY_IRQ_ENABLE = common dso_local global i64 0, align 8
@SCT_PLX_IRQ_ADDR = common dso_local global i64 0, align 8
@SCT_PLX_IRQ_ENABLE = common dso_local global i32 0, align 4
@GAZEL_ISAC_EN = common dso_local global i64 0, align 8
@GAZEL_HSCX_EN = common dso_local global i64 0, align 8
@GAZEL_PCI_EN = common dso_local global i64 0, align 8
@GAZEL_INCSR = common dso_local global i64 0, align 8
@GAZEL_IPAC_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf_hw*)* @enable_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_hwirq(%struct.inf_hw* %0) #0 {
  %2 = alloca %struct.inf_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.inf_hw* %0, %struct.inf_hw** %2, align 8
  %5 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %6 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %115 [
    i32 137, label %10
    i32 136, label %10
    i32 128, label %17
    i32 130, label %17
    i32 132, label %27
    i32 131, label %37
    i32 133, label %47
    i32 129, label %68
    i32 135, label %89
    i32 134, label %103
  ]

10:                                               ; preds = %1, %1
  %11 = load i32, i32* @PITA_INT0_ENABLE, align 4
  %12 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %13 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @writel(i32 %11, i32 %15)
  br label %116

17:                                               ; preds = %1, %1
  %18 = load i64, i64* @TIGER_IRQ_BIT, align 8
  %19 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %20 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @TIGER_AUX_IRQMASK, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i64 %18, i64 %25)
  br label %116

27:                                               ; preds = %1
  %28 = load i64, i64* @QS1000_IRQ_ON, align 8
  %29 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %30 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @ELSA_IRQ_ADDR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i64 %28, i64 %35)
  br label %116

37:                                               ; preds = %1
  %38 = load i64, i64* @QS3000_IRQ_ON, align 8
  %39 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %40 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @ELSA_IRQ_ADDR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i64 %38, i64 %45)
  br label %116

47:                                               ; preds = %1
  %48 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %49 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @NICCY_IRQ_CTRL_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i64 @inl(i64 %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* @NICCY_IRQ_ENABLE, align 8
  %57 = load i64, i64* %4, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %61 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @NICCY_IRQ_CTRL_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outl(i64 %59, i64 %66)
  br label %116

68:                                               ; preds = %1
  %69 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %70 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @SCT_PLX_IRQ_ADDR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @inw(i64 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @SCT_PLX_IRQ_ENABLE, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %82 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @SCT_PLX_IRQ_ADDR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outw(i32 %80, i64 %87)
  br label %116

89:                                               ; preds = %1
  %90 = load i64, i64* @GAZEL_ISAC_EN, align 8
  %91 = load i64, i64* @GAZEL_HSCX_EN, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i64, i64* @GAZEL_PCI_EN, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %96 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @GAZEL_INCSR, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i64 %94, i64 %101)
  br label %116

103:                                              ; preds = %1
  %104 = load i64, i64* @GAZEL_IPAC_EN, align 8
  %105 = load i64, i64* @GAZEL_PCI_EN, align 8
  %106 = add nsw i64 %104, %105
  %107 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %108 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @GAZEL_INCSR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outb(i64 %106, i64 %113)
  br label %116

115:                                              ; preds = %1
  br label %116

116:                                              ; preds = %115, %103, %89, %68, %47, %37, %27, %17, %10
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
