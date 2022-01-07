; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-api.c_dma_extend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-api.c_dma_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_channel*, i64, i8*)* }
%struct.dma_channel = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_extend(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dma_info*, align 8
  %9 = alloca %struct.dma_channel*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.dma_info* @get_dma_info(i32 %10)
  store %struct.dma_info* %11, %struct.dma_info** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.dma_channel* @get_dma_channel(i32 %12)
  store %struct.dma_channel* %13, %struct.dma_channel** %9, align 8
  %14 = load %struct.dma_info*, %struct.dma_info** %8, align 8
  %15 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dma_channel*, i64, i8*)*, i32 (%struct.dma_channel*, i64, i8*)** %17, align 8
  %19 = icmp ne i32 (%struct.dma_channel*, i64, i8*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.dma_info*, %struct.dma_info** %8, align 8
  %22 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dma_channel*, i64, i8*)*, i32 (%struct.dma_channel*, i64, i8*)** %24, align 8
  %26 = load %struct.dma_channel*, %struct.dma_channel** %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 %25(%struct.dma_channel* %26, i64 %27, i8* %28)
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.dma_info* @get_dma_info(i32) #1

declare dso_local %struct.dma_channel* @get_dma_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
