; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-dma.c_flexcop_dma_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-dma.c_flexcop_dma_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.flexcop_dma = type { i32, i8*, i32*, i8*, i32*, %struct.pci_dev* }

@.str = private unnamed_addr constant [31 x i8] c"dma buffersize has to be even.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_dma_allocate(%struct.pci_dev* %0, %struct.flexcop_dma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.flexcop_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.flexcop_dma* %1, %struct.flexcop_dma** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = srem i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @pci_alloc_consistent(%struct.pci_dev* %18, i32 %19, i8** %9)
  store i32* %20, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %25 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %24, i32 0, i32 5
  store %struct.pci_dev* %23, %struct.pci_dev** %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %28 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %31 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %38 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sdiv i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %39, i64 %42
  %44 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %45 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %46, 2
  %48 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %49 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %4, align 4
  br label %53

50:                                               ; preds = %17
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %22, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32* @pci_alloc_consistent(%struct.pci_dev*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
