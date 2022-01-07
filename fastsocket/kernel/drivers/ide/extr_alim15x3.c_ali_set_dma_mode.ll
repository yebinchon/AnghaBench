; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_alim15x3.c_ali_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_alim15x3.c_ali_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_6 = common dso_local global i64 0, align 8
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @ali_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_set_dma_mode(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %6, align 8
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 87, i32 86
  store i32 %30, i32* %10, align 4
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @XFER_UDMA_6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i64 71, i64* %7, align 8
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @XFER_UDMA_0, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 127, i32 247
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @pci_read_config_byte(%struct.pci_dev* %45, i32 %46, i64* %9)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %9, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @pci_write_config_byte(%struct.pci_dev* %51, i32 %52, i64 %53)
  br label %92

55:                                               ; preds = %35
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @pci_read_config_byte(%struct.pci_dev* %56, i32 %57, i64* %9)
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 1, %59
  %61 = shl i64 %60, 2
  %62 = trunc i64 %61 to i32
  %63 = shl i32 15, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub nsw i64 4, %67
  %69 = and i64 %68, 7
  %70 = or i64 8, %69
  %71 = load i64, i64* %8, align 8
  %72 = shl i64 %71, 2
  %73 = shl i64 %70, %72
  %74 = load i64, i64* %9, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @pci_write_config_byte(%struct.pci_dev* %76, i32 %77, i64 %78)
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @XFER_UDMA_3, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %55
  %84 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %85 = call i32 @pci_read_config_byte(%struct.pci_dev* %84, i32 75, i64* %9)
  %86 = load i64, i64* %9, align 8
  %87 = or i64 %86, 1
  store i64 %87, i64* %9, align 8
  %88 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @pci_write_config_byte(%struct.pci_dev* %88, i32 75, i64 %89)
  br label %91

91:                                               ; preds = %83, %55
  br label %92

92:                                               ; preds = %91, %39
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
