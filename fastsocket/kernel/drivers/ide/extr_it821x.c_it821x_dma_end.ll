; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it821x.c_it821x_dma_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_it821x.c_it821x_dma_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.it821x_dev = type { i64*, i32* }

@MWDMA_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @it821x_dma_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it821x_dma_end(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.it821x_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.it821x_dev* @ide_get_hwifdata(i32* %10)
  store %struct.it821x_dev* %11, %struct.it821x_dev** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = call i32 @ide_dma_end(%struct.TYPE_5__* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load %struct.it821x_dev*, %struct.it821x_dev** %4, align 8
  %20 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MWDMA_OFF, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = load %struct.it821x_dev*, %struct.it821x_dev** %4, align 8
  %30 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @it821x_program(%struct.TYPE_5__* %28, i32 %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.it821x_dev* @ide_get_hwifdata(i32*) #1

declare dso_local i32 @ide_dma_end(%struct.TYPE_5__*) #1

declare dso_local i32 @it821x_program(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
