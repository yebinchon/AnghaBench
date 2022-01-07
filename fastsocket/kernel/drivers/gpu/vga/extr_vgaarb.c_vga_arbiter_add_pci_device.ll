; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vgaarb.c_vga_arbiter_add_pci_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/vga/extr_vgaarb.c_vga_arbiter_add_pci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_bus* }
%struct.pci_bus = type { %struct.pci_bus*, %struct.pci_dev* }
%struct.vga_device = type { i32, i32, i32, i32, %struct.pci_dev* }

@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vgaarb: failed to allocate pci device\0A\00", align 1
@vga_lock = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_MEM = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_IO = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_MEM = common dso_local global i32 0, align 4
@vga_decode_count = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_VGA = common dso_local global i32 0, align 4
@vga_default = common dso_local global i32* null, align 8
@VGA_RSRC_LEGACY_MASK = common dso_local global i32 0, align 4
@vga_list = common dso_local global i32 0, align 4
@vga_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"vgaarb: device added: PCI:%s,decodes=%s,owns=%s,locks=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @vga_arbiter_add_pci_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_arbiter_add_pci_device(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.vga_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 8
  %14 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %146

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.vga_device* @kmalloc(i32 24, i32 %18)
  store %struct.vga_device* %19, %struct.vga_device** %4, align 8
  %20 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %21 = icmp eq %struct.vga_device* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %146

24:                                               ; preds = %17
  %25 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %26 = call i32 @memset(%struct.vga_device* %25, i32 0, i32 24)
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @vga_lock, i64 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32* @vgadev_find(%struct.pci_dev* %29)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @BUG_ON(i32 1)
  br label %141

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %37 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %36, i32 0, i32 4
  store %struct.pci_dev* %35, %struct.pci_dev** %37, align 8
  %38 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %39 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @VGA_RSRC_NORMAL_IO, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VGA_RSRC_NORMAL_MEM, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %46 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @vga_decode_count, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @vga_decode_count, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = load i32, i32* @PCI_COMMAND, align 4
  %51 = call i32 @pci_read_config_word(%struct.pci_dev* %49, i32 %50, i32* %8)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @PCI_COMMAND_IO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %34
  %57 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %58 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %59 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %34
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %69 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %70 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 1
  %76 = load %struct.pci_bus*, %struct.pci_bus** %75, align 8
  store %struct.pci_bus* %76, %struct.pci_bus** %6, align 8
  br label %77

77:                                               ; preds = %98, %73
  %78 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %79 = icmp ne %struct.pci_bus* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %82 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %81, i32 0, i32 1
  %83 = load %struct.pci_dev*, %struct.pci_dev** %82, align 8
  store %struct.pci_dev* %83, %struct.pci_dev** %7, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %85 = icmp ne %struct.pci_dev* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %88 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %89 = call i32 @pci_read_config_word(%struct.pci_dev* %87, i32 %88, i32* %9)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @PCI_BRIDGE_CTL_VGA, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %96 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %102

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %80
  %99 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %100 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %99, i32 0, i32 0
  %101 = load %struct.pci_bus*, %struct.pci_bus** %100, align 8
  store %struct.pci_bus* %101, %struct.pci_bus** %6, align 8
  br label %77

102:                                              ; preds = %94, %77
  %103 = load i32*, i32** @vga_default, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %107 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @VGA_RSRC_LEGACY_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @VGA_RSRC_LEGACY_MASK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %115 = call i32* @pci_dev_get(%struct.pci_dev* %114)
  store i32* %115, i32** @vga_default, align 8
  br label %116

116:                                              ; preds = %113, %105, %102
  %117 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %118 = call i32 @vga_arbiter_check_bridge_sharing(%struct.vga_device* %117)
  %119 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %120 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %119, i32 0, i32 3
  %121 = call i32 @list_add(i32* %120, i32* @vga_list)
  %122 = load i32, i32* @vga_count, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @vga_count, align 4
  %124 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %125 = call i32 @pci_name(%struct.pci_dev* %124)
  %126 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %127 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @vga_iostate_to_str(i32 %128)
  %130 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %131 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @vga_iostate_to_str(i32 %132)
  %134 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %135 = getelementptr inbounds %struct.vga_device, %struct.vga_device* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @vga_iostate_to_str(i32 %136)
  %138 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %129, i32 %133, i32 %137)
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %139)
  store i32 1, i32* %2, align 4
  br label %146

141:                                              ; preds = %32
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %142)
  %144 = load %struct.vga_device*, %struct.vga_device** %4, align 8
  %145 = call i32 @kfree(%struct.vga_device* %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %141, %116, %22, %16
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.vga_device* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(%struct.vga_device*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @vgadev_find(%struct.pci_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32* @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @vga_arbiter_check_bridge_sharing(%struct.vga_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @vga_iostate_to_str(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.vga_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
