; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbdma_channel_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbdma_channel_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmacdma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@M_DMA_EOP_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbmacdma*, i32)* @sbdma_channel_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbdma_channel_start(%struct.sbmacdma* %0, i32 %1) #0 {
  %3 = alloca %struct.sbmacdma*, align 8
  %4 = alloca i32, align 4
  store %struct.sbmacdma* %0, %struct.sbmacdma** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %6 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @__raw_writeq(i32 0, i32 %7)
  %9 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %10 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @V_DMA_RINGSZ(i32 %11)
  %13 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %14 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__raw_writeq(i32 %12, i32 %15)
  %17 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %18 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %21 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__raw_writeq(i32 %19, i32 %22)
  %24 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %25 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %28 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %30 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sbmacdma*, %struct.sbmacdma** %3, align 8
  %33 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @__raw_writeq(i32, i32) #1

declare dso_local i32 @V_DMA_RINGSZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
