; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.jmb38x_ms = type { i32, i32**, %struct.pci_dev* }

@DRIVER_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @jmb38x_ms_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.jmb38x_ms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @DMA_BIT_MASK(i32 32)
  %12 = call i32 @pci_set_dma_mask(%struct.pci_dev* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %147

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_enable_device(%struct.pci_dev* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %147

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pci_set_master(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* @DRIVER_NAME, align 4
  %29 = call i32 @pci_request_regions(%struct.pci_dev* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %139

33:                                               ; preds = %24
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %34, i32 172, i32* %8)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, 4653056
  %39 = call i32 @pci_write_config_dword(%struct.pci_dev* %36, i32 172, i32 %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @jmb38x_ms_count_slots(%struct.pci_dev* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %139

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = add i64 24, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.jmb38x_ms* @kzalloc(i32 %52, i32 %53)
  store %struct.jmb38x_ms* %54, %struct.jmb38x_ms** %6, align 8
  %55 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %56 = icmp ne %struct.jmb38x_ms* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %136

60:                                               ; preds = %47
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %63 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %62, i32 0, i32 2
  store %struct.pci_dev* %61, %struct.pci_dev** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %66 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %69 = call i32 @pci_set_drvdata(%struct.pci_dev* %67, %struct.jmb38x_ms* %68)
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %122, %60
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %73 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %70
  %77 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32* @jmb38x_ms_alloc_host(%struct.jmb38x_ms* %77, i32 %78)
  %80 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %81 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* %79, i32** %85, align 8
  %86 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %87 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %76
  br label %125

95:                                               ; preds = %76
  %96 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %97 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @memstick_add_host(i32* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %95
  %107 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %108 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @jmb38x_ms_free_host(i32* %113)
  %115 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %116 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32* null, i32** %120, align 8
  br label %125

121:                                              ; preds = %95
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %70

125:                                              ; preds = %106, %94, %70
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %147

129:                                              ; preds = %125
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  %132 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %133 = call i32 @pci_set_drvdata(%struct.pci_dev* %132, %struct.jmb38x_ms* null)
  %134 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %6, align 8
  %135 = call i32 @kfree(%struct.jmb38x_ms* %134)
  br label %136

136:                                              ; preds = %129, %57
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = call i32 @pci_release_regions(%struct.pci_dev* %137)
  br label %139

139:                                              ; preds = %136, %44, %32
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %144 = call i32 @pci_disable_device(%struct.pci_dev* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %128, %22, %15
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @jmb38x_ms_count_slots(%struct.pci_dev*) #1

declare dso_local %struct.jmb38x_ms* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.jmb38x_ms*) #1

declare dso_local i32* @jmb38x_ms_alloc_host(%struct.jmb38x_ms*, i32) #1

declare dso_local i32 @memstick_add_host(i32*) #1

declare dso_local i32 @jmb38x_ms_free_host(i32*) #1

declare dso_local i32 @kfree(%struct.jmb38x_ms*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
