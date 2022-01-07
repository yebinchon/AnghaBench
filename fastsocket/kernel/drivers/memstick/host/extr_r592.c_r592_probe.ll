; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.memstick_host = type { i32, i32, i32 }
%struct.r592_device = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, %struct.memstick_host* }

@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@r592_detect_timer = common dso_local global i32 0, align 4
@MEMSTICK_CAP_PAR4 = common dso_local global i32 0, align 4
@r592_submit_req = common dso_local global i32 0, align 4
@r592_set_param = common dso_local global i32 0, align 4
@r592_process_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"r592_io\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@r592_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"driver succesfully loaded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @r592_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.memstick_host*, align 8
  %8 = alloca %struct.r592_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = call %struct.memstick_host* @memstick_alloc_host(i32 64, i32* %12)
  store %struct.memstick_host* %13, %struct.memstick_host** %7, align 8
  %14 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %15 = icmp ne %struct.memstick_host* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %179

17:                                               ; preds = %2
  %18 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %19 = call %struct.r592_device* @memstick_priv(%struct.memstick_host* %18)
  store %struct.r592_device* %19, %struct.r592_device** %8, align 8
  %20 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %21 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %22 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %21, i32 0, i32 11
  store %struct.memstick_host* %20, %struct.memstick_host** %22, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %25 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %24, i32 0, i32 10
  store %struct.pci_dev* %23, %struct.pci_dev** %25, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %28 = call i32 @pci_set_drvdata(%struct.pci_dev* %26, %struct.r592_device* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pci_enable_device(%struct.pci_dev* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %176

34:                                               ; preds = %17
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_set_master(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @DMA_BIT_MASK(i32 32)
  %39 = call i32 @pci_set_dma_mask(%struct.pci_dev* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %173

43:                                               ; preds = %34
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* @DRV_NAME, align 4
  %46 = call i32 @pci_request_regions(%struct.pci_dev* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %173

50:                                               ; preds = %43
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i32 @pci_ioremap_bar(%struct.pci_dev* %51, i32 0)
  %53 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %54 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %56 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %170

60:                                               ; preds = %50
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %65 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %67 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %66, i32 0, i32 9
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %70 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %69, i32 0, i32 8
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %73 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %72, i32 0, i32 7
  %74 = call i32 @init_completion(i32* %73)
  %75 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %76 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @INIT_KFIFO(i32 %77)
  %79 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %80 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %79, i32 0, i32 5
  %81 = load i32, i32* @r592_detect_timer, align 4
  %82 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %83 = ptrtoint %struct.r592_device* %82 to i64
  %84 = call i32 @setup_timer(i32* %80, i32 %81, i64 %83)
  %85 = load i32, i32* @MEMSTICK_CAP_PAR4, align 4
  %86 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %87 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @r592_submit_req, align 4
  %89 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %90 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @r592_set_param, align 4
  %92 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %93 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %95 = call i32 @r592_check_dma(%struct.r592_device* %94)
  %96 = load i32, i32* @r592_process_thread, align 4
  %97 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %98 = call i32 @kthread_run(i32 %96, %struct.r592_device* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %100 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %102 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %60
  %107 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %108 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %6, align 4
  br label %165

111:                                              ; preds = %60
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = load i32, i32* @PAGE_SIZE, align 4
  %114 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %115 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %114, i32 0, i32 2
  %116 = call i64 @pci_alloc_consistent(%struct.pci_dev* %112, i32 %113, i32* %115)
  %117 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %118 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  %119 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %120 = call i32 @r592_stop_dma(%struct.r592_device* %119, i32 0)
  %121 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %122 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IRQF_SHARED, align 4
  %125 = load i32, i32* @DRV_NAME, align 4
  %126 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %127 = call i64 @request_irq(i32 %123, i32* @r592_irq, i32 %124, i32 %125, %struct.r592_device* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %111
  br label %145

130:                                              ; preds = %111
  %131 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %132 = call i32 @r592_update_card_detect(%struct.r592_device* %131)
  %133 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %134 = call i64 @memstick_add_host(%struct.memstick_host* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %139

137:                                              ; preds = %130
  %138 = call i32 @message(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %181

139:                                              ; preds = %136
  %140 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %141 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %144 = call i32 @free_irq(i32 %142, %struct.r592_device* %143)
  br label %145

145:                                              ; preds = %139, %129
  %146 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %147 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %154 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %157 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @pci_free_consistent(%struct.pci_dev* %151, i32 %152, i64 %155, i32 %158)
  br label %160

160:                                              ; preds = %150, %145
  %161 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %162 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @kthread_stop(i32 %163)
  br label %165

165:                                              ; preds = %160, %106
  %166 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %167 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @iounmap(i32 %168)
  br label %170

170:                                              ; preds = %165, %59
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = call i32 @pci_release_regions(%struct.pci_dev* %171)
  br label %173

173:                                              ; preds = %170, %49, %42
  %174 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %175 = call i32 @pci_disable_device(%struct.pci_dev* %174)
  br label %176

176:                                              ; preds = %173, %33
  %177 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %178 = call i32 @memstick_free_host(%struct.memstick_host* %177)
  br label %179

179:                                              ; preds = %176, %16
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %137
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.memstick_host* @memstick_alloc_host(i32, i32*) #1

declare dso_local %struct.r592_device* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.r592_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @r592_check_dma(%struct.r592_device*) #1

declare dso_local i32 @kthread_run(i32, %struct.r592_device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @r592_stop_dma(%struct.r592_device*, i32) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i32, %struct.r592_device*) #1

declare dso_local i32 @r592_update_card_detect(%struct.r592_device*) #1

declare dso_local i64 @memstick_add_host(%struct.memstick_host*) #1

declare dso_local i32 @message(i8*) #1

declare dso_local i32 @free_irq(i32, %struct.r592_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @memstick_free_host(%struct.memstick_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
