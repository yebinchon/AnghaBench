; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_get_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_get_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5000_pvt* }
%struct.i5000_pvt = type { i64, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_I5000_DEV16 = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"'system address,Process Bus' device not found:vendor 0x%x device 0x%x FUNC 1 (broken BIOS?)\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"MC: 'branchmap,control,errors' device not found:vendor 0x%x device 0x%x Func 2 (broken BIOS?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"System Address, processor bus- PCI Bus ID: %s  %x:%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Branchmap, control and errors - PCI Bus ID: %s  %x:%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"FSB Error Regs - PCI Bus ID: %s  %x:%x\0A\00", align 1
@PCI_DEVICE_ID_I5000_BRANCH_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"MC: 'BRANCH 0' device not found:vendor 0x%x device 0x%x Func 0 (broken BIOS?)\0A\00", align 1
@CHANNELS_PER_BRANCH = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_I5000_BRANCH_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [79 x i8] c"MC: 'BRANCH 1' device not found:vendor 0x%x device 0x%x Func 0 (broken BIOS?)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32)* @i5000_get_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5000_get_devices(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i5000_pvt*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.i5000_pvt*, %struct.i5000_pvt** %9, align 8
  store %struct.i5000_pvt* %10, %struct.i5000_pvt** %6, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  br label %11

11:                                               ; preds = %2, %30
  %12 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %13 = load i32, i32* @PCI_DEVICE_ID_INTEL_I5000_DEV16, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = call %struct.pci_dev* @pci_get_device(i32 %12, i32 %13, %struct.pci_dev* %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %17 = icmp eq %struct.pci_dev* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, i32* @KERN_ERR, align 4
  %20 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %21 = load i32, i32* @PCI_DEVICE_ID_INTEL_I5000_DEV16, align 4
  %22 = call i32 @i5000_printk(i32 %19, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  store i32 1, i32* %3, align 4
  br label %165

23:                                               ; preds = %11
  %24 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PCI_FUNC(i32 %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %23
  br label %11

31:                                               ; preds = %29
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %34 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %33, i32 0, i32 4
  store %struct.pci_dev* %32, %struct.pci_dev** %34, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  br label %35

35:                                               ; preds = %31, %58
  %36 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %37 = load i32, i32* @PCI_DEVICE_ID_INTEL_I5000_DEV16, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = call %struct.pci_dev* @pci_get_device(i32 %36, i32 %37, %struct.pci_dev* %38)
  store %struct.pci_dev* %39, %struct.pci_dev** %7, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = icmp eq %struct.pci_dev* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %45 = load i32, i32* @PCI_DEVICE_ID_INTEL_I5000_DEV16, align 4
  %46 = call i32 @i5000_printk(i32 %43, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %48 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %47, i32 0, i32 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %48, align 8
  %50 = call i32 @pci_dev_put(%struct.pci_dev* %49)
  store i32 1, i32* %3, align 4
  br label %165

51:                                               ; preds = %35
  %52 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PCI_FUNC(i32 %54)
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %59

58:                                               ; preds = %51
  br label %35

59:                                               ; preds = %57
  %60 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %61 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %62 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %61, i32 0, i32 3
  store %struct.pci_dev* %60, %struct.pci_dev** %62, align 8
  %63 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %64 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %63, i32 0, i32 5
  %65 = load %struct.pci_dev*, %struct.pci_dev** %64, align 8
  %66 = call i32 @pci_name(%struct.pci_dev* %65)
  %67 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %68 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %67, i32 0, i32 5
  %69 = load %struct.pci_dev*, %struct.pci_dev** %68, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %73 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %72, i32 0, i32 5
  %74 = load %struct.pci_dev*, %struct.pci_dev** %73, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @debugf1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %71, i32 %76)
  %78 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %79 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %78, i32 0, i32 4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %79, align 8
  %81 = call i32 @pci_name(%struct.pci_dev* %80)
  %82 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %83 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %82, i32 0, i32 4
  %84 = load %struct.pci_dev*, %struct.pci_dev** %83, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %88 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %87, i32 0, i32 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %88, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @debugf1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %86, i32 %91)
  %93 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %94 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %93, i32 0, i32 3
  %95 = load %struct.pci_dev*, %struct.pci_dev** %94, align 8
  %96 = call i32 @pci_name(%struct.pci_dev* %95)
  %97 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %98 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %97, i32 0, i32 3
  %99 = load %struct.pci_dev*, %struct.pci_dev** %98, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %103 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %102, i32 0, i32 3
  %104 = load %struct.pci_dev*, %struct.pci_dev** %103, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @debugf1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %101, i32 %106)
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  %108 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %109 = load i32, i32* @PCI_DEVICE_ID_I5000_BRANCH_0, align 4
  %110 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %111 = call %struct.pci_dev* @pci_get_device(i32 %108, i32 %109, %struct.pci_dev* %110)
  store %struct.pci_dev* %111, %struct.pci_dev** %7, align 8
  %112 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %113 = icmp eq %struct.pci_dev* %112, null
  br i1 %113, label %114, label %127

114:                                              ; preds = %59
  %115 = load i32, i32* @KERN_ERR, align 4
  %116 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %117 = load i32, i32* @PCI_DEVICE_ID_I5000_BRANCH_0, align 4
  %118 = call i32 @i5000_printk(i32 %115, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %120 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %119, i32 0, i32 4
  %121 = load %struct.pci_dev*, %struct.pci_dev** %120, align 8
  %122 = call i32 @pci_dev_put(%struct.pci_dev* %121)
  %123 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %124 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %123, i32 0, i32 3
  %125 = load %struct.pci_dev*, %struct.pci_dev** %124, align 8
  %126 = call i32 @pci_dev_put(%struct.pci_dev* %125)
  store i32 1, i32* %3, align 4
  br label %165

127:                                              ; preds = %59
  %128 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %129 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %130 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %129, i32 0, i32 2
  store %struct.pci_dev* %128, %struct.pci_dev** %130, align 8
  %131 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %132 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CHANNELS_PER_BRANCH, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %127
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  %137 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %138 = load i32, i32* @PCI_DEVICE_ID_I5000_BRANCH_1, align 4
  %139 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %140 = call %struct.pci_dev* @pci_get_device(i32 %137, i32 %138, %struct.pci_dev* %139)
  store %struct.pci_dev* %140, %struct.pci_dev** %7, align 8
  %141 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %142 = icmp eq %struct.pci_dev* %141, null
  br i1 %142, label %143, label %160

143:                                              ; preds = %136
  %144 = load i32, i32* @KERN_ERR, align 4
  %145 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %146 = load i32, i32* @PCI_DEVICE_ID_I5000_BRANCH_1, align 4
  %147 = call i32 @i5000_printk(i32 %144, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %149 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %148, i32 0, i32 4
  %150 = load %struct.pci_dev*, %struct.pci_dev** %149, align 8
  %151 = call i32 @pci_dev_put(%struct.pci_dev* %150)
  %152 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %153 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %152, i32 0, i32 3
  %154 = load %struct.pci_dev*, %struct.pci_dev** %153, align 8
  %155 = call i32 @pci_dev_put(%struct.pci_dev* %154)
  %156 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %157 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %156, i32 0, i32 2
  %158 = load %struct.pci_dev*, %struct.pci_dev** %157, align 8
  %159 = call i32 @pci_dev_put(%struct.pci_dev* %158)
  store i32 1, i32* %3, align 4
  br label %165

160:                                              ; preds = %136
  %161 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %162 = load %struct.i5000_pvt*, %struct.i5000_pvt** %6, align 8
  %163 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %162, i32 0, i32 1
  store %struct.pci_dev* %161, %struct.pci_dev** %163, align 8
  br label %164

164:                                              ; preds = %160, %127
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %143, %114, %42, %18
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @i5000_printk(i32, i8*, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @debugf1(i8*, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
