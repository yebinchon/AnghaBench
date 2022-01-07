; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_hpdi_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_hpdi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32*, i64*, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"comedi%d: gsc_hpdi: remove\0A\00", align 1
@NUM_DMA_BUFFERS = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@NUM_DMA_DESCRIPTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @hpdi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpdi_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = call i32 @free_irq(i64 %15, %struct.comedi_device* %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %19)
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %141

22:                                               ; preds = %18
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %140

28:                                               ; preds = %22
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = call i32 @disable_plx_interrupts(%struct.comedi_device* %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %38 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @iounmap(i8* %41)
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %51 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @iounmap(i8* %54)
  br label %56

56:                                               ; preds = %49, %43
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %95, %56
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @NUM_DMA_BUFFERS, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %57
  %62 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %63 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %61
  %72 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %73 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %77 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %78 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %86 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pci_free_consistent(i64 %75, i32 %76, i64 %84, i32 %92)
  br label %94

94:                                               ; preds = %71, %61
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %57

98:                                               ; preds = %57
  %99 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %100 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %106 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @NUM_DMA_DESCRIPTORS, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = trunc i64 %111 to i32
  %113 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %114 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %113)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %118 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @pci_free_consistent(i64 %108, i32 %112, i64 %116, i32 %120)
  br label %122

122:                                              ; preds = %104, %98
  %123 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %124 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %123)
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %130 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @comedi_pci_disable(i64 %132)
  br label %134

134:                                              ; preds = %128, %122
  %135 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %136 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %135)
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @pci_dev_put(i64 %138)
  br label %140

140:                                              ; preds = %134, %22
  br label %141

141:                                              ; preds = %140, %18
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @disable_plx_interrupts(%struct.comedi_device*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @pci_free_consistent(i64, i32, i64, i32) #1

declare dso_local i32 @comedi_pci_disable(i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
