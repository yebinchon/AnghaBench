; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_aer_isr_one_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_aer_isr_one_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.aer_err_source = type { i32, i32 }
%struct.aer_err_info = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Can't allocate mem when processing AER errors\0A\00", align 1
@PCI_ERR_ROOT_COR_RCV = common dso_local global i32 0, align 4
@AER_CORRECTABLE = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_MULTI_COR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_UNCOR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_FATAL_RCV = common dso_local global i32 0, align 4
@AER_FATAL = common dso_local global i32 0, align 4
@AER_NONFATAL = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_MULTI_UNCOR_RCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_device*, %struct.aer_err_source*)* @aer_isr_one_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_isr_one_error(%struct.pcie_device* %0, %struct.aer_err_source* %1) #0 {
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca %struct.aer_err_source*, align 8
  %5 = alloca %struct.aer_err_info*, align 8
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  store %struct.aer_err_source* %1, %struct.aer_err_source** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.aer_err_info* @kmalloc(i32 12, i32 %6)
  store %struct.aer_err_info* %7, %struct.aer_err_info** %5, align 8
  %8 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %9 = icmp ne %struct.aer_err_info* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @KERN_DEBUG, align 4
  %12 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %13 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @dev_printk(i32 %11, i32* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %124

17:                                               ; preds = %2
  %18 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %19 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PCI_ERR_ROOT_COR_RCV, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %17
  %25 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %26 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ERR_COR_ID(i32 %27)
  %29 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %30 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @AER_CORRECTABLE, align 4
  %32 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %33 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %35 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCI_ERR_ROOT_MULTI_COR_RCV, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %42 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %46

43:                                               ; preds = %24
  %44 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %45 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %48 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %51 = call i32 @aer_print_port_info(%struct.TYPE_3__* %49, %struct.aer_err_info* %50)
  %52 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %53 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %56 = call i64 @find_source_device(%struct.TYPE_3__* %54, %struct.aer_err_info* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %60 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %61 = call i32 @aer_process_err_devices(%struct.pcie_device* %59, %struct.aer_err_info* %60)
  br label %62

62:                                               ; preds = %58, %46
  br label %63

63:                                               ; preds = %62, %17
  %64 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %65 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PCI_ERR_ROOT_UNCOR_RCV, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %63
  %71 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %72 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ERR_UNCOR_ID(i32 %73)
  %75 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %76 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %78 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PCI_ERR_ROOT_FATAL_RCV, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load i32, i32* @AER_FATAL, align 4
  %85 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %86 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %91

87:                                               ; preds = %70
  %88 = load i32, i32* @AER_NONFATAL, align 4
  %89 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %90 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.aer_err_source*, %struct.aer_err_source** %4, align 8
  %93 = getelementptr inbounds %struct.aer_err_source, %struct.aer_err_source* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PCI_ERR_ROOT_MULTI_UNCOR_RCV, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %100 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %99, i32 0, i32 0
  store i32 1, i32* %100, align 4
  br label %104

101:                                              ; preds = %91
  %102 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %103 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %106 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %109 = call i32 @aer_print_port_info(%struct.TYPE_3__* %107, %struct.aer_err_info* %108)
  %110 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %111 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %114 = call i64 @find_source_device(%struct.TYPE_3__* %112, %struct.aer_err_info* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %104
  %117 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %118 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %119 = call i32 @aer_process_err_devices(%struct.pcie_device* %117, %struct.aer_err_info* %118)
  br label %120

120:                                              ; preds = %116, %104
  br label %121

121:                                              ; preds = %120, %63
  %122 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %123 = call i32 @kfree(%struct.aer_err_info* %122)
  br label %124

124:                                              ; preds = %121, %10
  ret void
}

declare dso_local %struct.aer_err_info* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @ERR_COR_ID(i32) #1

declare dso_local i32 @aer_print_port_info(%struct.TYPE_3__*, %struct.aer_err_info*) #1

declare dso_local i64 @find_source_device(%struct.TYPE_3__*, %struct.aer_err_info*) #1

declare dso_local i32 @aer_process_err_devices(%struct.pcie_device*, %struct.aer_err_info*) #1

declare dso_local i32 @ERR_UNCOR_ID(i32) #1

declare dso_local i32 @kfree(%struct.aer_err_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
