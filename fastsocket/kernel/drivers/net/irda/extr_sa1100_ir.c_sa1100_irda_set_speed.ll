; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_set_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_irda = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@Ser2UTCR3 = common dso_local global i32 0, align 4
@HSCR0_UART = common dso_local global i32 0, align 4
@Ser2HSCR0 = common dso_local global i32 0, align 4
@Ser2UTCR1 = common dso_local global i32 0, align 4
@Ser2UTCR2 = common dso_local global i32 0, align 4
@UTSR0_REB = common dso_local global i32 0, align 4
@UTSR0_RBB = common dso_local global i32 0, align 4
@UTSR0_RID = common dso_local global i32 0, align 4
@Ser2UTSR0 = common dso_local global i32 0, align 4
@UTCR3_RIE = common dso_local global i32 0, align 4
@UTCR3_RXE = common dso_local global i32 0, align 4
@UTCR3_TXE = common dso_local global i32 0, align 4
@Ser2HSSR0 = common dso_local global i32 0, align 4
@HSCR0_HSSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa1100_irda*, i32)* @sa1100_irda_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_irda_set_speed(%struct.sa1100_irda* %0, i32 %1) #0 {
  %3 = alloca %struct.sa1100_irda*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sa1100_irda* %0, %struct.sa1100_irda** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %101 [
    i32 9600, label %11
    i32 19200, label %11
    i32 38400, label %11
    i32 57600, label %11
    i32 115200, label %11
    i32 4000000, label %64
  ]

11:                                               ; preds = %2, %2, %2, %2, %2
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 16, %12
  %14 = sdiv i32 3686400, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %17 = call i32 @IS_FIR(%struct.sa1100_irda* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %21 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sa1100_stop_dma(i32 %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  store i32 0, i32* @Ser2UTCR3, align 4
  %27 = load i32, i32* @HSCR0_UART, align 4
  store i32 %27, i32* @Ser2HSCR0, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 8
  store i32 %29, i32* @Ser2UTCR1, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* @Ser2UTCR2, align 4
  %31 = load i32, i32* @UTSR0_REB, align 4
  %32 = load i32, i32* @UTSR0_RBB, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @UTSR0_RID, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* @Ser2UTSR0, align 4
  %36 = load i32, i32* @UTCR3_RIE, align 4
  %37 = load i32, i32* @UTCR3_RXE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UTCR3_TXE, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* @Ser2UTCR3, align 4
  %41 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %42 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = icmp ne i32 (i32, i32)* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %24
  %48 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %49 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %54 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 %52(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %24
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %61 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  store i32 0, i32* %7, align 4
  br label %102

64:                                               ; preds = %2
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @local_irq_save(i64 %65)
  %67 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %68 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  store i32 255, i32* @Ser2HSSR0, align 4
  %69 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %70 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HSCR0_HSSP, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* @Ser2HSCR0, align 4
  store i32 0, i32* @Ser2UTCR3, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %76 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %78 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = icmp ne i32 (i32, i32)* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %64
  %84 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %85 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (i32, i32)*, i32 (i32, i32)** %87, align 8
  %89 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %90 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 %88(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %83, %64
  %95 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %96 = call i32 @sa1100_irda_rx_alloc(%struct.sa1100_irda* %95)
  %97 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %98 = call i32 @sa1100_irda_rx_dma_start(%struct.sa1100_irda* %97)
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @local_irq_restore(i64 %99)
  br label %102

101:                                              ; preds = %2
  br label %102

102:                                              ; preds = %101, %94, %58
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @IS_FIR(%struct.sa1100_irda*) #1

declare dso_local i32 @sa1100_stop_dma(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @sa1100_irda_rx_alloc(%struct.sa1100_irda*) #1

declare dso_local i32 @sa1100_irda_rx_dma_start(%struct.sa1100_irda*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
