; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc4s8s_l1.c_hfc4s8s_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc4s8s_l1.c_hfc4s8s_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32* }

@M_GLOB_IRQ_EN = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@R_SCI = common dso_local global i32 0, align 4
@R_STATUS = common dso_local global i32 0, align 4
@M_MISC_IRQSTA = common dso_local global i32 0, align 4
@M_FR_IRQSTA = common dso_local global i32 0, align 4
@R_IRQ_MISC = common dso_local global i32 0, align 4
@M_TI_IRQ = common dso_local global i32 0, align 4
@R_IRQ_OVIEW = common dso_local global i32 0, align 4
@R_IRQ_FIFO_BL0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hfc4s8s_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfc4s8s_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @M_GLOB_IRQ_EN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16, %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %123

26:                                               ; preds = %16
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = call i32 @GetRegAddr(%struct.TYPE_7__* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = load i32, i32* @R_SCI, align 4
  %31 = call i32 @Read_hfc8(%struct.TYPE_7__* %29, i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load volatile i32, i32* %34, align 8
  %36 = and i32 %31, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load volatile i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store volatile i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* @R_STATUS, align 4
  %44 = call i32 @Read_hfc8(%struct.TYPE_7__* %42, i32 %43)
  %45 = load volatile i32, i32* @M_MISC_IRQSTA, align 4
  %46 = load volatile i32, i32* @M_FR_IRQSTA, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %26
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load volatile i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @SetRegAddr(%struct.TYPE_7__* %57, i32 %58)
  %60 = load i32, i32* @IRQ_NONE, align 4
  store i32 %60, i32* %3, align 4
  br label %123

61:                                               ; preds = %50, %26
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = load i32, i32* @R_IRQ_MISC, align 4
  %64 = call i32 @Read_hfc8(%struct.TYPE_7__* %62, i32 %63)
  %65 = load i32, i32* @M_TI_IRQ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i32 1, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %61
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = load i32, i32* @R_IRQ_OVIEW, align 4
  %79 = call i32 @Read_hfc8(%struct.TYPE_7__* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @R_IRQ_FIFO_BL0, align 4
  store i32 %88, i32* %10, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %9, align 8
  br label %93

93:                                               ; preds = %107, %81
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @Read_hfc8(%struct.TYPE_7__* %101, i32 %102)
  %104 = load i32*, i32** %9, align 8
  %105 = load volatile i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store volatile i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %96
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %93

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114, %76
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = call i32 @schedule_work(i32* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @SetRegAddr(%struct.TYPE_7__* %119, i32 %120)
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %115, %56, %24
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @GetRegAddr(%struct.TYPE_7__*) #1

declare dso_local i32 @Read_hfc8(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SetRegAddr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
