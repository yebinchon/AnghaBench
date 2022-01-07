; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_amd64-agp.c_nforce3_agp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_amd64-agp.c_nforce3_agp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.pci_dev = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.pci_dev* }

@.str = private unnamed_addr constant [24 x i8] c"setting up Nforce3 AGP\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"can't find Nforce3 secondary device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@nforce3_sizes = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"no NForce3 size found for %d\0A\00", align 1
@NVIDIA_X86_64_1_APSIZE = common dso_local global i32 0, align 4
@AMD64_GARTAPERTUREBASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"aperture base > 4G\0A\00", align 1
@NVIDIA_X86_64_0_APBASE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@NVIDIA_X86_64_1_APBASE1 = common dso_local global i32 0, align 4
@NVIDIA_X86_64_1_APLIMIT1 = common dso_local global i32 0, align 4
@NVIDIA_X86_64_1_APBASE2 = common dso_local global i32 0, align 4
@NVIDIA_X86_64_1_APLIMIT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @nforce3_agp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce3_agp_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %11 = call i32 (...) @amd64_fetch_size()
  store i32 %11, i32* %10, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call i32 (i32*, i8*, ...) @dev_info(i32* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PCI_DEVFN(i32 11, i32 0)
  %19 = call %struct.pci_dev* @pci_get_slot(i32 %17, i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %8, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %21 = icmp eq %struct.pci_dev* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_info(i32* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %135

28:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nforce3_sizes, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nforce3_sizes, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %29

48:                                               ; preds = %43, %29
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nforce3_sizes, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %135

60:                                               ; preds = %48
  %61 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %62 = load i32, i32* @NVIDIA_X86_64_1_APSIZE, align 4
  %63 = call i32 @pci_read_config_dword(%struct.pci_dev* %61, i32 %62, i32* %4)
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, -16
  store i32 %65, i32* %4, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nforce3_sizes, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %75 = load i32, i32* @NVIDIA_X86_64_1_APSIZE, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pci_write_config_dword(%struct.pci_dev* %74, i32 %75, i32 %76)
  %78 = call %struct.TYPE_4__* @node_to_amd_nb(i32 0)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.pci_dev*, %struct.pci_dev** %79, align 8
  %81 = load i32, i32* @AMD64_GARTAPERTUREBASE, align 4
  %82 = call i32 @pci_read_config_dword(%struct.pci_dev* %80, i32 %81, i32* %5)
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 32767
  %85 = ashr i32 %84, 7
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %60
  %88 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_info(i32* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %135

93:                                               ; preds = %60
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, 32767
  %96 = shl i32 %95, 25
  store i32 %96, i32* %5, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = load i32, i32* @NVIDIA_X86_64_0_APBASE, align 4
  %99 = call i32 @pci_read_config_dword(%struct.pci_dev* %97, i32 %98, i32* %6)
  %100 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %108 = load i32, i32* @NVIDIA_X86_64_0_APBASE, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @pci_write_config_dword(%struct.pci_dev* %107, i32 %108, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %10, align 4
  %113 = mul i32 %112, 1024
  %114 = mul i32 %113, 1024
  %115 = add i32 %111, %114
  %116 = sub i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %118 = load i32, i32* @NVIDIA_X86_64_1_APBASE1, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @pci_write_config_dword(%struct.pci_dev* %117, i32 %118, i32 %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %122 = load i32, i32* @NVIDIA_X86_64_1_APLIMIT1, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @pci_write_config_dword(%struct.pci_dev* %121, i32 %122, i32 %123)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %126 = load i32, i32* @NVIDIA_X86_64_1_APBASE2, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @pci_write_config_dword(%struct.pci_dev* %125, i32 %126, i32 %127)
  %129 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %130 = load i32, i32* @NVIDIA_X86_64_1_APLIMIT2, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @pci_write_config_dword(%struct.pci_dev* %129, i32 %130, i32 %131)
  %133 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %134 = call i32 @pci_dev_put(%struct.pci_dev* %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %93, %87, %53, %22
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @amd64_fetch_size(...) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @node_to_amd_nb(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
