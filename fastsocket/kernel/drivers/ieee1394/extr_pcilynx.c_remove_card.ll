; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_remove_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_remove_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ti_lynx = type { i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }

@PCI_INT_ENABLE = common dso_local global i32 0, align 4
@RESET_BUS = common dso_local global i32 0, align 4
@LONG_RESET_NO_FORCE_ROOT = common dso_local global i32 0, align 4
@MISC_CONTROL = common dso_local global i32 0, align 4
@MISC_CONTROL_SWRESET = common dso_local global i32 0, align 4
@DMA0_CHAN_CTRL = common dso_local global i32 0, align 4
@ISORCV_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@LOCALRAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @remove_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_card(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ti_lynx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ti_lynx* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ti_lynx* %7, %struct.ti_lynx** %3, align 8
  %8 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %9 = icmp ne %struct.ti_lynx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %159

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = call i32 @pci_set_drvdata(%struct.pci_dev* %12, i32* null)
  %14 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %15 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %14, i32 0, i32 11
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = call %struct.device* @get_device(i32* %17)
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %20 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %149 [
    i32 128, label %22
    i32 131, label %30
    i32 130, label %59
    i32 133, label %83
    i32 132, label %136
    i32 129, label %136
    i32 134, label %148
  ]

22:                                               ; preds = %11
  %23 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %24 = load i32, i32* @PCI_INT_ENABLE, align 4
  %25 = call i32 @reg_write(%struct.ti_lynx* %23, i32 %24, i32 0)
  %26 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %27 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %26, i32 0, i32 11
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i32 @hpsb_remove_host(%struct.TYPE_9__* %28)
  br label %30

30:                                               ; preds = %11, %22
  %31 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %32 = load i32, i32* @PCI_INT_ENABLE, align 4
  %33 = call i32 @reg_write(%struct.ti_lynx* %31, i32 %32, i32 0)
  %34 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %35 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %40 = call i32 @free_irq(i32 %38, %struct.ti_lynx* %39)
  %41 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %42 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %41, i32 0, i32 12
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %48 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %49 = call i32 @get_phy_reg(%struct.ti_lynx* %48, i32 4)
  %50 = and i32 -193, %49
  %51 = call i32 @set_phy_reg(%struct.ti_lynx* %47, i32 4, i32 %50)
  br label %52

52:                                               ; preds = %46, %30
  %53 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %54 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %53, i32 0, i32 11
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i32, i32* @RESET_BUS, align 4
  %57 = load i32, i32* @LONG_RESET_NO_FORCE_ROOT, align 4
  %58 = call i32 @lynx_devctl(%struct.TYPE_9__* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %11, %52
  %60 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %61 = load i32, i32* @MISC_CONTROL, align 4
  %62 = load i32, i32* @MISC_CONTROL_SWRESET, align 4
  %63 = call i32 @reg_set_bits(%struct.ti_lynx* %60, i32 %61, i32 %62)
  %64 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %65 = load i32, i32* @DMA0_CHAN_CTRL, align 4
  %66 = call i32 @reg_write(%struct.ti_lynx* %64, i32 %65, i32 0)
  %67 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %68 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @iounmap(i32 %69)
  %71 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %72 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @iounmap(i32 %73)
  %75 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %76 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @iounmap(i32 %77)
  %79 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %80 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @iounmap(i32 %81)
  br label %83

83:                                               ; preds = %11, %59
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %121, %83
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @ISORCV_PAGES, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %124

88:                                               ; preds = %84
  %89 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %90 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %88
  %99 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %100 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %99, i32 0, i32 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %104 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %112 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pci_free_consistent(%struct.TYPE_8__* %101, i32 %102, i32 %110, i32 %118)
  br label %120

120:                                              ; preds = %98, %88
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %84

124:                                              ; preds = %84
  %125 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %126 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %125, i32 0, i32 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %130 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %133 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @pci_free_consistent(%struct.TYPE_8__* %127, i32 %128, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %11, %11, %124
  %137 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %138 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %137, i32 0, i32 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* @LOCALRAM_SIZE, align 4
  %141 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %142 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %145 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @pci_free_consistent(%struct.TYPE_8__* %139, i32 %140, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %11, %136
  br label %149

149:                                              ; preds = %148, %11
  %150 = load %struct.ti_lynx*, %struct.ti_lynx** %3, align 8
  %151 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = call i32 @tasklet_kill(i32* %152)
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = icmp ne %struct.device* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = call i32 @put_device(%struct.device* %157)
  br label %159

159:                                              ; preds = %10, %156, %149
  ret void
}

declare dso_local %struct.ti_lynx* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local i32 @reg_write(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @hpsb_remove_host(%struct.TYPE_9__*) #1

declare dso_local i32 @free_irq(i32, %struct.ti_lynx*) #1

declare dso_local i32 @set_phy_reg(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @get_phy_reg(%struct.ti_lynx*, i32) #1

declare dso_local i32 @lynx_devctl(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @reg_set_bits(%struct.ti_lynx*, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
