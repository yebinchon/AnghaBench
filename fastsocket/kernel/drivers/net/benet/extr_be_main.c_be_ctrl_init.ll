; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.be_dma_mem, %struct.be_dma_mem, %struct.be_dma_mem }
%struct.TYPE_3__ = type { i32 }
%struct.be_dma_mem = type { i32, i32*, i32* }

@SLI_INTF_REG_OFFSET = common dso_local global i32 0, align 4
@SLI_INTF_FAMILY_MASK = common dso_local global i32 0, align 4
@SLI_INTF_FAMILY_SHIFT = common dso_local global i32 0, align 4
@SLI_INTF_FT_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_ctrl_init(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_dma_mem*, align 8
  %5 = alloca %struct.be_dma_mem*, align 8
  %6 = alloca %struct.be_dma_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 9
  store %struct.be_dma_mem* %10, %struct.be_dma_mem** %4, align 8
  %11 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 8
  store %struct.be_dma_mem* %12, %struct.be_dma_mem** %5, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 7
  store %struct.be_dma_mem* %14, %struct.be_dma_mem** %6, align 8
  %15 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* @SLI_INTF_REG_OFFSET, align 4
  %19 = call i32 @pci_read_config_dword(%struct.TYPE_3__* %17, i32 %18, i32* %7)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SLI_INTF_FAMILY_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @SLI_INTF_FAMILY_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SLI_INTF_FT_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = call i32 @be_map_pci_bars(%struct.be_adapter* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %145

40:                                               ; preds = %1
  %41 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %42 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %41, i32 0, i32 0
  store i32 20, i32* %42, align 8
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %48 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %51 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %50, i32 0, i32 1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @dma_alloc_coherent(i32* %46, i32 %49, i32** %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %56 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %58 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %40
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %142

64:                                               ; preds = %40
  %65 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %66 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %65, i32 0, i32 0
  store i32 4, i32* %66, align 8
  %67 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %68 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @PTR_ALIGN(i32* %69, i32 16)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %73 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %75 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i8* @PTR_ALIGN(i32* %76, i32 16)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %80 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  %81 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %82 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @memset(i32* %83, i32 0, i32 4)
  %85 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %86 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %85, i32 0, i32 0
  store i32 4, i32* %86, align 8
  %87 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %92 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %95 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %94, i32 0, i32 1
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = load i32, i32* @__GFP_ZERO, align 4
  %98 = or i32 %96, %97
  %99 = call i8* @dma_alloc_coherent(i32* %90, i32 %93, i32** %95, i32 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %102 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %104 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %64
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  br label %127

110:                                              ; preds = %64
  %111 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %111, i32 0, i32 6
  %113 = call i32 @mutex_init(i32* %112)
  %114 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %114, i32 0, i32 5
  %116 = call i32 @spin_lock_init(i32* %115)
  %117 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %117, i32 0, i32 4
  %119 = call i32 @spin_lock_init(i32* %118)
  %120 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %120, i32 0, i32 3
  %122 = call i32 @init_completion(i32* %121)
  %123 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = call i32 @pci_save_state(%struct.TYPE_3__* %125)
  store i32 0, i32* %2, align 4
  br label %147

127:                                              ; preds = %107
  %128 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %128, i32 0, i32 2
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %133 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %136 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.be_dma_mem*, %struct.be_dma_mem** %4, align 8
  %139 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @dma_free_coherent(i32* %131, i32 %134, i32* %137, i32* %140)
  br label %142

142:                                              ; preds = %127, %61
  %143 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %144 = call i32 @be_unmap_pci_bars(%struct.be_adapter* %143)
  br label %145

145:                                              ; preds = %142, %39
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %110
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @be_map_pci_bars(%struct.be_adapter*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32**, i32) #1

declare dso_local i8* @PTR_ALIGN(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pci_save_state(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32*) #1

declare dso_local i32 @be_unmap_pci_bars(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
