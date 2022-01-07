; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5400_edac.c_i5400_get_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5400_edac.c_i5400_get_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5400_pvt* }
%struct.i5400_pvt = type { i64, i32*, i32*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_5400_ERR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"'system address,Process Bus' device not found:vendor 0x%x device 0x%x ERR funcs (broken BIOS?)\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"System Address, processor bus- PCI Bus ID: %s  %x:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Branchmap, control and errors - PCI Bus ID: %s  %x:%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"FSB Error Regs - PCI Bus ID: %s  %x:%x\0A\00", align 1
@PCI_DEVICE_ID_INTEL_5400_FBD0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"MC: 'BRANCH 0' device not found:vendor 0x%x device 0x%x Func 0 (broken BIOS?)\0A\00", align 1
@CHANNELS_PER_BRANCH = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_INTEL_5400_FBD1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"MC: 'BRANCH 1' device not found:vendor 0x%x device 0x%x Func 0 (broken BIOS?)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32)* @i5400_get_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5400_get_devices(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i5400_pvt*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.i5400_pvt*, %struct.i5400_pvt** %9, align 8
  store %struct.i5400_pvt* %10, %struct.i5400_pvt** %6, align 8
  %11 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %12 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %11, i32 0, i32 4
  store %struct.pci_dev* null, %struct.pci_dev** %12, align 8
  %13 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %14 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %13, i32 0, i32 3
  store %struct.pci_dev* null, %struct.pci_dev** %14, align 8
  %15 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %16 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %18 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  br label %19

19:                                               ; preds = %58, %2
  %20 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %21 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %20, i32 0, i32 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %26 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %25, i32 0, i32 3
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  %28 = icmp ne %struct.pci_dev* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ true, %19 ], [ %29, %24 ]
  br i1 %31, label %32, label %59

32:                                               ; preds = %30
  %33 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %34 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_ERR, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = call i8* @pci_get_device(i32 %33, i32 %34, %struct.pci_dev* %35)
  %37 = bitcast i8* %36 to %struct.pci_dev*
  store %struct.pci_dev* %37, %struct.pci_dev** %7, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = icmp ne %struct.pci_dev* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %43 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_ERR, align 4
  %44 = call i32 @i5400_printk(i32 %41, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %144

45:                                               ; preds = %32
  %46 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PCI_FUNC(i32 %48)
  switch i32 %49, label %58 [
    i32 1, label %50
    i32 2, label %54
  ]

50:                                               ; preds = %45
  %51 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %52 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %53 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %52, i32 0, i32 4
  store %struct.pci_dev* %51, %struct.pci_dev** %53, align 8
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %57 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %56, i32 0, i32 3
  store %struct.pci_dev* %55, %struct.pci_dev** %57, align 8
  br label %58

58:                                               ; preds = %45, %54, %50
  br label %19

59:                                               ; preds = %30
  %60 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %61 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %60, i32 0, i32 5
  %62 = load %struct.pci_dev*, %struct.pci_dev** %61, align 8
  %63 = call i32 @pci_name(%struct.pci_dev* %62)
  %64 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %65 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %64, i32 0, i32 5
  %66 = load %struct.pci_dev*, %struct.pci_dev** %65, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %70 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %69, i32 0, i32 5
  %71 = load %struct.pci_dev*, %struct.pci_dev** %70, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @debugf1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %68, i32 %73)
  %75 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %76 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %75, i32 0, i32 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %76, align 8
  %78 = call i32 @pci_name(%struct.pci_dev* %77)
  %79 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %80 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %79, i32 0, i32 4
  %81 = load %struct.pci_dev*, %struct.pci_dev** %80, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %85 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %84, i32 0, i32 4
  %86 = load %struct.pci_dev*, %struct.pci_dev** %85, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @debugf1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %83, i32 %88)
  %90 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %91 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %90, i32 0, i32 3
  %92 = load %struct.pci_dev*, %struct.pci_dev** %91, align 8
  %93 = call i32 @pci_name(%struct.pci_dev* %92)
  %94 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %95 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %94, i32 0, i32 3
  %96 = load %struct.pci_dev*, %struct.pci_dev** %95, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %100 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %99, i32 0, i32 3
  %101 = load %struct.pci_dev*, %struct.pci_dev** %100, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @debugf1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %98, i32 %103)
  %105 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %106 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_FBD0, align 4
  %107 = call i8* @pci_get_device(i32 %105, i32 %106, %struct.pci_dev* null)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %110 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  %111 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %112 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %59
  %116 = load i32, i32* @KERN_ERR, align 4
  %117 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %118 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_FBD0, align 4
  %119 = call i32 @i5400_printk(i32 %116, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %117, i32 %118)
  br label %144

120:                                              ; preds = %59
  %121 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %122 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CHANNELS_PER_BRANCH, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %149

127:                                              ; preds = %120
  %128 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %129 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_FBD1, align 4
  %130 = call i8* @pci_get_device(i32 %128, i32 %129, %struct.pci_dev* null)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %133 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %132, i32 0, i32 1
  store i32* %131, i32** %133, align 8
  %134 = load %struct.i5400_pvt*, %struct.i5400_pvt** %6, align 8
  %135 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %127
  %139 = load i32, i32* @KERN_ERR, align 4
  %140 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %141 = load i32, i32* @PCI_DEVICE_ID_INTEL_5400_FBD1, align 4
  %142 = call i32 @i5400_printk(i32 %139, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %140, i32 %141)
  br label %144

143:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %149

144:                                              ; preds = %138, %115, %40
  %145 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %146 = call i32 @i5400_put_devices(%struct.mem_ctl_info* %145)
  %147 = load i32, i32* @ENODEV, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %144, %143, %126
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i8* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @i5400_printk(i32, i8*, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @debugf1(i8*, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @i5400_put_devices(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
