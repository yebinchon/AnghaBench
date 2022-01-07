; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_boardergo.c_ergo_inithardware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_boardergo.c_ergo_inithardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, {}*, {}*, i32, i64, i64, i32, i64 }

@PCI9050_INTR_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"HYSDN\00", align 1
@PCI9050_USER_IO = common dso_local global i64 0, align 8
@ERG_DPRAM_PAGE_SIZE = common dso_local global i64 0, align 8
@ergo_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ergo_testram = common dso_local global i32 0, align 4
@ergo_writebootimg = common dso_local global i32 0, align 4
@ergo_writebootseq = common dso_local global i32 0, align 4
@ergo_waitpofready = common dso_local global i32 0, align 4
@ergo_set_errlog_state = common dso_local global i32 0, align 4
@ergo_irq_bh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ergo_inithardware(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 10
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PCI9050_INTR_REG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @request_region(i64 %8, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %100

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI9050_USER_IO, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @request_region(i64 %17, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI9050_INTR_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @release_region(i64 %25, i32 1)
  store i32 -1, i32* %2, align 4
  br label %100

27:                                               ; preds = %12
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 11
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ERG_DPRAM_PAGE_SIZE, align 8
  %32 = add nsw i64 %30, %31
  %33 = sub nsw i64 %32, 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 13
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ERG_DPRAM_PAGE_SIZE, align 8
  %40 = call i32 @ioremap(i64 %38, i64 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 8
  %43 = icmp ne i32 %40, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %27
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCI9050_INTR_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @release_region(i64 %49, i32 1)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 10
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCI9050_USER_IO, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @release_region(i64 %55, i32 1)
  store i32 -1, i32* %2, align 4
  br label %100

57:                                               ; preds = %27
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = call i32 @ergo_stopcard(%struct.TYPE_6__* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ergo_interrupt, align 4
  %64 = load i32, i32* @IRQF_SHARED, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = call i64 @request_irq(i32 %62, i32 %63, i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = call i32 @ergo_releasehardware(%struct.TYPE_6__* %69)
  store i32 -1, i32* %2, align 4
  br label %100

71:                                               ; preds = %57
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 8
  %74 = bitcast {}** %73 to i32 (%struct.TYPE_6__*)**
  store i32 (%struct.TYPE_6__*)* @ergo_stopcard, i32 (%struct.TYPE_6__*)** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 7
  %77 = bitcast {}** %76 to i32 (%struct.TYPE_6__*)**
  store i32 (%struct.TYPE_6__*)* @ergo_releasehardware, i32 (%struct.TYPE_6__*)** %77, align 8
  %78 = load i32, i32* @ergo_testram, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @ergo_writebootimg, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ergo_writebootseq, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @ergo_waitpofready, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @ergo_set_errlog_state, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* @ergo_irq_bh, align 4
  %96 = call i32 @INIT_WORK(i32* %94, i32 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @spin_lock_init(i32* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %71, %68, %44, %20, %11
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @ergo_stopcard(%struct.TYPE_6__*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @ergo_releasehardware(%struct.TYPE_6__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
