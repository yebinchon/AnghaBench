; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cs5536.c_cs5536_dma_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cs5536.c_cs5536_dma_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@IDE_DRV_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @cs5536_dma_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5536_dma_end(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i32 @ide_dma_end(%struct.TYPE_6__* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call i64 @ide_get_drivedata(%struct.TYPE_6__* %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XFER_UDMA_0, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = lshr i64 %15, 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @IDE_DRV_MASK, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @IDE_DRV_MASK, align 8
  %25 = and i64 %23, %24
  %26 = call i32 @cs5536_program_dtc(%struct.TYPE_6__* %22, i64 %25)
  br label %27

27:                                               ; preds = %21, %14, %1
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ide_dma_end(%struct.TYPE_6__*) #1

declare dso_local i64 @ide_get_drivedata(%struct.TYPE_6__*) #1

declare dso_local i32 @cs5536_program_dtc(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
