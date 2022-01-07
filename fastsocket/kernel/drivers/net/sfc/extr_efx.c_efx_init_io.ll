; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_init_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.pci_dev*, i64, i32, %struct.TYPE_2__*, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"initialising I/O\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to enable PCI device\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not find a suitable DMA mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"using DMA mask %llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to set consistent DMA mask\0A\00", align 1
@EFX_MEM_BAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"sfc\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"request for memory BAR failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"could not map memory BAR at %llx+%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"memory BAR at %llx+%x (virtual %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_init_io(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = load i32, i32* @probe, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_enable_device(%struct.pci_dev* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = load i32, i32* @probe, align 4
  %28 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %26, i32 %27, i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %176

32:                                               ; preds = %1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_set_master(%struct.pci_dev* %33)
  br label %35

35:                                               ; preds = %54, %32
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %37, 2147483647
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @dma_supported(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dma_set_mask(i32* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %39
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %35

57:                                               ; preds = %52, %35
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = load i32, i32* @probe, align 4
  %63 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %171

67:                                               ; preds = %57
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = load i32, i32* @probe, align 4
  %70 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %71 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %68, i32 %69, i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @dma_set_coherent_mask(i32* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %67
  %83 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %84 = load i32, i32* @probe, align 4
  %85 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %86 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %83, i32 %84, i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %171

89:                                               ; preds = %67
  %90 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %91 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %90, i32 0, i32 0
  %92 = load %struct.pci_dev*, %struct.pci_dev** %91, align 8
  %93 = load i32, i32* @EFX_MEM_BAR, align 4
  %94 = call i64 @pci_resource_start(%struct.pci_dev* %92, i32 %93)
  %95 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %96 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load i32, i32* @EFX_MEM_BAR, align 4
  %99 = call i32 @pci_request_region(%struct.pci_dev* %97, i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %89
  %103 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %104 = load i32, i32* @probe, align 4
  %105 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %106 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %103, i32 %104, i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %168

111:                                              ; preds = %89
  %112 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %113 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %116 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %115, i32 0, i32 3
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ioremap_nocache(i64 %114, i32 %119)
  %121 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %122 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %124 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %111
  %128 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %129 = load i32, i32* @probe, align 4
  %130 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %131 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %134 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %137 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %128, i32 %129, i32 %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %135, i32 %140)
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %6, align 4
  br label %162

144:                                              ; preds = %111
  %145 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %146 = load i32, i32* @probe, align 4
  %147 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %148 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %151 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %154 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %153, i32 0, i32 3
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %159 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %145, i32 %146, i32 %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i64 %152, i32 %157, i32 %160)
  store i32 0, i32* %2, align 4
  br label %178

162:                                              ; preds = %127
  %163 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %164 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %163, i32 0, i32 0
  %165 = load %struct.pci_dev*, %struct.pci_dev** %164, align 8
  %166 = load i32, i32* @EFX_MEM_BAR, align 4
  %167 = call i32 @pci_release_region(%struct.pci_dev* %165, i32 %166)
  br label %168

168:                                              ; preds = %162, %102
  %169 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %170 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %169, i32 0, i32 1
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %168, %82, %60
  %172 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %173 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %172, i32 0, i32 0
  %174 = load %struct.pci_dev*, %struct.pci_dev** %173, align 8
  %175 = call i32 @pci_disable_device(%struct.pci_dev* %174)
  br label %176

176:                                              ; preds = %171, %25
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176, %144
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @dma_supported(i32*, i32) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @ioremap_nocache(i64, i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
