; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_msi_sn.c_sn_setup_msi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_msi_sn.c_sn_setup_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.sn_irq_info* }
%struct.sn_irq_info = type { i32, i32, i8*, i32 }
%struct.pci_dev = type { i32 }
%struct.msi_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.msi_msg = type { i32, i8*, i8* }
%struct.pcibus_bussoft = type { i64, i32 }
%struct.sn_pcibus_provider = type { i32 (%struct.pci_dev.0*, i32, i32, i32)* }
%struct.pci_dev.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SN_DMA_MSI = common dso_local global i32 0, align 4
@SN_DMA_ADDR_XIO = common dso_local global i32 0, align 4
@sn_msi_info = common dso_local global %struct.TYPE_4__* null, align 8
@sn_msi_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sn_setup_msi_irq(%struct.pci_dev* %0, %struct.msi_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.msi_desc*, align 8
  %6 = alloca %struct.msi_msg, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sn_irq_info*, align 8
  %12 = alloca %struct.pcibus_bussoft*, align 8
  %13 = alloca %struct.sn_pcibus_provider*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.msi_desc* %1, %struct.msi_desc** %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call %struct.pcibus_bussoft* @SN_PCIDEV_BUSSOFT(%struct.pci_dev* %15)
  store %struct.pcibus_bussoft* %16, %struct.pcibus_bussoft** %12, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call %struct.sn_pcibus_provider* @SN_PCIDEV_BUSPROVIDER(%struct.pci_dev* %17)
  store %struct.sn_pcibus_provider* %18, %struct.sn_pcibus_provider** %13, align 8
  %19 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %20 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %169

27:                                               ; preds = %2
  %28 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %12, align 8
  %29 = icmp eq %struct.pcibus_bussoft* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %169

33:                                               ; preds = %27
  %34 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %13, align 8
  %35 = icmp eq %struct.sn_pcibus_provider* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %13, align 8
  %38 = getelementptr inbounds %struct.sn_pcibus_provider, %struct.sn_pcibus_provider* %37, i32 0, i32 0
  %39 = load i32 (%struct.pci_dev.0*, i32, i32, i32)*, i32 (%struct.pci_dev.0*, i32, i32, i32)** %38, align 8
  %40 = icmp eq i32 (%struct.pci_dev.0*, i32, i32, i32)* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %169

44:                                               ; preds = %36
  %45 = call i32 (...) @create_irq()
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %3, align 4
  br label %169

50:                                               ; preds = %44
  %51 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %12, align 8
  %52 = getelementptr inbounds %struct.pcibus_bussoft, %struct.pcibus_bussoft* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @NASID_GET(i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %12, align 8
  %60 = getelementptr inbounds %struct.pcibus_bussoft, %struct.pcibus_bussoft* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @TIO_SWIN_WIDGETNUM(i64 %61)
  br label %68

63:                                               ; preds = %50
  %64 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %12, align 8
  %65 = getelementptr inbounds %struct.pcibus_bussoft, %struct.pcibus_bussoft* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @SWIN_WIDGETNUM(i64 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i32 [ %62, %58 ], [ %67, %63 ]
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.sn_irq_info* @kzalloc(i32 24, i32 %70)
  store %struct.sn_irq_info* %71, %struct.sn_irq_info** %11, align 8
  %72 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %73 = icmp ne %struct.sn_irq_info* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @destroy_irq(i32 %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %169

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @sn_intr_alloc(i32 %80, i32 %81, %struct.sn_irq_info* %82, i32 %83, i32 -1, i32 -1)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %89 = call i32 @kfree(%struct.sn_irq_info* %88)
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @destroy_irq(i32 %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %169

94:                                               ; preds = %79
  %95 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %96 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %99 = call i32 @sn_irq_fixup(%struct.pci_dev* %97, %struct.sn_irq_info* %98)
  %100 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %12, align 8
  %101 = getelementptr inbounds %struct.pcibus_bussoft, %struct.pcibus_bussoft* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %104 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.pcibus_bussoft*, %struct.pcibus_bussoft** %12, align 8
  %106 = getelementptr inbounds %struct.pcibus_bussoft, %struct.pcibus_bussoft* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %110 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %13, align 8
  %112 = getelementptr inbounds %struct.sn_pcibus_provider, %struct.sn_pcibus_provider* %111, i32 0, i32 0
  %113 = load i32 (%struct.pci_dev.0*, i32, i32, i32)*, i32 (%struct.pci_dev.0*, i32, i32, i32)** %112, align 8
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = bitcast %struct.pci_dev* %114 to %struct.pci_dev.0*
  %116 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %117 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SN_DMA_MSI, align 4
  %120 = load i32, i32* @SN_DMA_ADDR_XIO, align 4
  %121 = or i32 %119, %120
  %122 = call i32 %113(%struct.pci_dev.0* %115, i32 %118, i32 4, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %94
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %129 = call i32 @sn_intr_free(i32 %126, i32 %127, %struct.sn_irq_info* %128)
  %130 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %131 = call i32 @kfree(%struct.sn_irq_info* %130)
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @destroy_irq(i32 %132)
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %169

136:                                              ; preds = %94
  %137 = load %struct.sn_irq_info*, %struct.sn_irq_info** %11, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sn_msi_info, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store %struct.sn_irq_info* %137, %struct.sn_irq_info** %142, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sn_msi_info, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 %143, i32* %148, align 8
  %149 = load i32, i32* %10, align 4
  %150 = ashr i32 %149, 32
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %6, i32 0, i32 2
  store i8* %152, i8** %153, align 8
  %154 = load i32, i32* %10, align 4
  %155 = zext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %6, i32 0, i32 1
  store i8* %156, i8** %157, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 256, %158
  %160 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %6, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %163 = call i32 @set_irq_msi(i32 %161, %struct.msi_desc* %162)
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @write_msi_msg(i32 %164, %struct.msi_msg* %6)
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @handle_edge_irq, align 4
  %168 = call i32 @set_irq_chip_and_handler(i32 %166, i32* @sn_msi_chip, i32 %167)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %136, %125, %87, %74, %48, %41, %30, %24
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.pcibus_bussoft* @SN_PCIDEV_BUSSOFT(%struct.pci_dev*) #1

declare dso_local %struct.sn_pcibus_provider* @SN_PCIDEV_BUSPROVIDER(%struct.pci_dev*) #1

declare dso_local i32 @create_irq(...) #1

declare dso_local i32 @NASID_GET(i64) #1

declare dso_local i32 @TIO_SWIN_WIDGETNUM(i64) #1

declare dso_local i32 @SWIN_WIDGETNUM(i64) #1

declare dso_local %struct.sn_irq_info* @kzalloc(i32, i32) #1

declare dso_local i32 @destroy_irq(i32) #1

declare dso_local i32 @sn_intr_alloc(i32, i32, %struct.sn_irq_info*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sn_irq_info*) #1

declare dso_local i32 @sn_irq_fixup(%struct.pci_dev*, %struct.sn_irq_info*) #1

declare dso_local i32 @sn_intr_free(i32, i32, %struct.sn_irq_info*) #1

declare dso_local i32 @set_irq_msi(i32, %struct.msi_desc*) #1

declare dso_local i32 @write_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @set_irq_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
