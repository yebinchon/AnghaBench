; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.flexcop_device = type { i32, i32*, i32, i64, i32, i32, i32, i32, i32, %struct.flexcop_pci* }
%struct.flexcop_pci = type { i32, %struct.pci_dev*, %struct.flexcop_device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@flexcop_pci_read_ibi_reg = common dso_local global i32 0, align 4
@flexcop_pci_write_ibi_reg = common dso_local global i32 0, align 4
@flexcop_i2c_request = common dso_local global i32 0, align 4
@flexcop_eeprom_check_mac_addr = common dso_local global i32 0, align 4
@flexcop_pci_stream_control = common dso_local global i32 0, align 4
@enable_pid_filtering = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"will use the HW PID filter.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"will pass the complete TS to the demuxer.\00", align 1
@FC_PCI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@flexcop_pci_irq_check_work = common dso_local global i32 0, align 4
@irq_chk_intv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @flexcop_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.flexcop_device*, align 8
  %7 = alloca %struct.flexcop_pci*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = call %struct.flexcop_device* @flexcop_device_kmalloc(i32 24)
  store %struct.flexcop_device* %11, %struct.flexcop_device** %6, align 8
  %12 = icmp eq %struct.flexcop_device* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %107

17:                                               ; preds = %2
  %18 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %19 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %18, i32 0, i32 9
  %20 = load %struct.flexcop_pci*, %struct.flexcop_pci** %19, align 8
  store %struct.flexcop_pci* %20, %struct.flexcop_pci** %7, align 8
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %22 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  %23 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %22, i32 0, i32 2
  store %struct.flexcop_device* %21, %struct.flexcop_device** %23, align 8
  %24 = load i32, i32* @flexcop_pci_read_ibi_reg, align 4
  %25 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %26 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @flexcop_pci_write_ibi_reg, align 4
  %28 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %29 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @flexcop_i2c_request, align 4
  %31 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %32 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @flexcop_eeprom_check_mac_addr, align 4
  %34 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %35 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @flexcop_pci_stream_control, align 4
  %37 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %38 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @enable_pid_filtering, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %17
  %42 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %45

43:                                               ; preds = %17
  %44 = call i32 @info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i64, i64* @enable_pid_filtering, align 8
  %47 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %48 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @FC_PCI, align 4
  %50 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %51 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %55 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %58 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  %61 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %60, i32 0, i32 1
  store %struct.pci_dev* %59, %struct.pci_dev** %61, align 8
  %62 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  %63 = call i32 @flexcop_pci_init(%struct.flexcop_pci* %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %103

66:                                               ; preds = %45
  %67 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %68 = call i32 @flexcop_device_initialize(%struct.flexcop_device* %67)
  store i32 %68, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %100

71:                                               ; preds = %66
  %72 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  %73 = call i32 @flexcop_pci_dma_init(%struct.flexcop_pci* %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %97

76:                                               ; preds = %71
  %77 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  %78 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %77, i32 0, i32 0
  %79 = load i32, i32* @flexcop_pci_irq_check_work, align 4
  %80 = call i32 @INIT_DELAYED_WORK(i32* %78, i32 %79)
  %81 = load i32, i32* @irq_chk_intv, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  %85 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %84, i32 0, i32 0
  %86 = load i32, i32* @irq_chk_intv, align 4
  %87 = icmp slt i32 %86, 100
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @irq_chk_intv, align 4
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i32 [ 100, %88 ], [ %90, %89 ]
  %93 = call i32 @msecs_to_jiffies(i32 %92)
  %94 = call i32 @schedule_delayed_work(i32* %85, i32 %93)
  br label %95

95:                                               ; preds = %91, %76
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %107

97:                                               ; preds = %75
  %98 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %99 = call i32 @flexcop_device_exit(%struct.flexcop_device* %98)
  br label %100

100:                                              ; preds = %97, %70
  %101 = load %struct.flexcop_pci*, %struct.flexcop_pci** %7, align 8
  %102 = call i32 @flexcop_pci_exit(%struct.flexcop_pci* %101)
  br label %103

103:                                              ; preds = %100, %65
  %104 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %105 = call i32 @flexcop_device_kfree(%struct.flexcop_device* %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %95, %13
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.flexcop_device* @flexcop_device_kmalloc(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @flexcop_pci_init(%struct.flexcop_pci*) #1

declare dso_local i32 @flexcop_device_initialize(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_pci_dma_init(%struct.flexcop_pci*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @flexcop_device_exit(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_pci_exit(%struct.flexcop_pci*) #1

declare dso_local i32 @flexcop_device_kfree(%struct.flexcop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
