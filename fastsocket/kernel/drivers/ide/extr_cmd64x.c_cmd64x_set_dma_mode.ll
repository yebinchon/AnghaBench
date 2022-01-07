; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cmd64x.c_cmd64x_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cmd64x.c_cmd64x_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@UDIDETCR1 = common dso_local global i32 0, align 4
@UDIDETCR0 = common dso_local global i32 0, align 4
@XFER_SW_DMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @cmd64x_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd64x_set_dma_mode(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @UDIDETCR1, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @UDIDETCR0, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @XFER_SW_DMA_0, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @pci_read_config_byte(%struct.pci_dev* %35, i32 %36, i32* %8)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 202, i32 53
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %34, %29
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %98 [
    i32 128, label %47
    i32 129, label %54
    i32 130, label %61
    i32 131, label %68
    i32 132, label %75
    i32 133, label %82
    i32 134, label %89
    i32 135, label %92
    i32 136, label %95
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 10, i32 5
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %98

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 74, i32 21
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %98

61:                                               ; preds = %45
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 138, i32 37
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %98

68:                                               ; preds = %45
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 66, i32 17
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %98

75:                                               ; preds = %45
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 130, i32 33
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %98

82:                                               ; preds = %45
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 194, i32 49
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %98

89:                                               ; preds = %45
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = call i32 @program_cycle_times(%struct.TYPE_6__* %90, i32 120, i32 70)
  br label %98

92:                                               ; preds = %45
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = call i32 @program_cycle_times(%struct.TYPE_6__* %93, i32 150, i32 80)
  br label %98

95:                                               ; preds = %45
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = call i32 @program_cycle_times(%struct.TYPE_6__* %96, i32 480, i32 215)
  br label %98

98:                                               ; preds = %45, %95, %92, %89, %82, %75, %68, %61, %54, %47
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @XFER_SW_DMA_0, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @pci_write_config_byte(%struct.pci_dev* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %98
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @program_cycle_times(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
