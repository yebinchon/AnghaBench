; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_eeh_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_eeh_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rsxx_cardinfo = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"IBM Flash Adapter PCI: disabling failed card.\0A\00", align 1
@COMPLETE_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Freed %d queued DMAs on channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rsxx_eeh_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_eeh_failure(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.rsxx_cardinfo* %7, %struct.rsxx_cardinfo** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call i32 @dev_err(i32* %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %12 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %14 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %80, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %18 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %15
  %22 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %23 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %31 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %37 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* @COMPLETE_DMA, align 4
  %44 = call i32 @rsxx_cleanup_dma_queue(%struct.TYPE_3__* %35, i32* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %46 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %54 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = call i64 @rsxx_dma_cancel(%struct.TYPE_3__* %58)
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %21
  %67 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %68 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %67)
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %71 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_info(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %77)
  br label %79

79:                                               ; preds = %66, %21
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %15

83:                                               ; preds = %15
  ret void
}

declare dso_local %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rsxx_cleanup_dma_queue(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @rsxx_dma_cancel(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
