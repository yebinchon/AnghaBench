; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_decode_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_decode_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@TW_STATUS_PCI_PARITY_ERROR = common dso_local global i32 0, align 4
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PCI Parity Error: clearing\00", align 1
@TW_CONTROL_CLEAR_PARITY_ERROR = common dso_local global i32 0, align 4
@TW_STATUS_PCI_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"PCI Abort: clearing\00", align 1
@TW_CONTROL_CLEAR_PCI_ABORT = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@TW_PCI_CLEAR_PCI_ABORT = common dso_local global i32 0, align 4
@TW_STATUS_QUEUE_ERROR = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_3WARE_9650SE = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_3WARE_9690SA = common dso_local global i64 0, align 8
@TW_IN_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Controller Queue Error: clearing\00", align 1
@TW_CONTROL_CLEAR_QUEUE_ERROR = common dso_local global i32 0, align 4
@TW_STATUS_MICROCONTROLLER_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Microcontroller Error: clearing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @twa_decode_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_decode_bits(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TW_STATUS_PCI_PARITY_ERROR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TW_DRIVER, align 4
  %15 = call i32 @TW_PRINTK(i32 %13, i32 %14, i32 12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @TW_CONTROL_CLEAR_PARITY_ERROR, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i32 @TW_CONTROL_REG_ADDR(%struct.TYPE_5__* %17)
  %19 = call i32 @writel(i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %10, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TW_STATUS_PCI_ABORT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TW_DRIVER, align 4
  %30 = call i32 @TW_PRINTK(i32 %28, i32 %29, i32 13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @TW_CONTROL_CLEAR_PCI_ABORT, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = call i32 @TW_CONTROL_REG_ADDR(%struct.TYPE_5__* %32)
  %34 = call i32 @writel(i32 %31, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* @PCI_STATUS, align 4
  %39 = load i32, i32* @TW_PCI_CLEAR_PCI_ABORT, align 4
  %40 = call i32 @pci_write_config_word(%struct.TYPE_6__* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %25, %20
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TW_STATUS_QUEUE_ERROR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI_DEVICE_ID_3WARE_9650SE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCI_DEVICE_ID_3WARE_9690SA, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %54, %46
  %63 = load i32, i32* @TW_IN_RESET, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = call i32 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TW_DRIVER, align 4
  %73 = call i32 @TW_PRINTK(i32 %71, i32 %72, i32 14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %68, %62
  %75 = load i32, i32* @TW_CONTROL_CLEAR_QUEUE_ERROR, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = call i32 @TW_CONTROL_REG_ADDR(%struct.TYPE_5__* %76)
  %78 = call i32 @writel(i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %74, %41
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @TW_STATUS_MICROCONTROLLER_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TW_DRIVER, align 4
  %94 = call i32 @TW_PRINTK(i32 %92, i32 %93, i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %89, %84
  br label %99

98:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @TW_PRINTK(i32, i32, i32, i8*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @TW_CONTROL_REG_ADDR(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_write_config_word(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
