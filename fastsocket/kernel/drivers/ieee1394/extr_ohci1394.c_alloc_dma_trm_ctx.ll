; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_alloc_dma_trm_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_alloc_dma_trm_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32 }
%struct.dma_trm_ctx = type { i32, i32, i32, i32, i64, i64, i64, i32, i32**, i32*, i32*, %struct.ti_ohci* }

@alloc_dma_trm_ctx.pool_name = internal global [20 x i8] zeroinitializer, align 16
@alloc_dma_trm_ctx.num_allocs = internal global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to allocate %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"AT DMA prg\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ohci1394_trm_prg\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"pci_pool_create failed for %s\00", align 1
@OHCI1394_ContextControlSet = common dso_local global i64 0, align 8
@OHCI1394_ContextControlClear = common dso_local global i64 0, align 8
@OHCI1394_ContextCommandPtr = common dso_local global i64 0, align 8
@dma_trm_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_ohci*, %struct.dma_trm_ctx*, i32, i32, i32, i32)* @alloc_dma_trm_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dma_trm_ctx(%struct.ti_ohci* %0, %struct.dma_trm_ctx* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_ohci*, align 8
  %9 = alloca %struct.dma_trm_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %8, align 8
  store %struct.dma_trm_ctx* %1, %struct.dma_trm_ctx** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %17 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %17, i32 0, i32 11
  store %struct.ti_ohci* %16, %struct.ti_ohci** %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %21 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 %39, i32 %40)
  %42 = bitcast i8* %41 to i32**
  %43 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %43, i32 0, i32 8
  store i32** %42, i32*** %44, align 8
  %45 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kzalloc(i32 %50, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %54, i32 0, i32 9
  store i32* %53, i32** %55, align 8
  %56 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %56, i32 0, i32 8
  %58 = load i32**, i32*** %57, align 8
  %59 = icmp eq i32** %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %6
  %61 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %61, i32 0, i32 9
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60, %6
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = call i32 @PRINT(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %69 = call i32 @free_dma_trm_ctx(%struct.dma_trm_ctx* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %179

72:                                               ; preds = %60
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @alloc_dma_trm_ctx.pool_name, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @alloc_dma_trm_ctx.pool_name, i64 0, i64 0), i64 %75
  %77 = load i32, i32* @alloc_dma_trm_ctx.num_allocs, align 4
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %80 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @pci_pool_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @alloc_dma_trm_ctx.pool_name, i64 0, i64 0), i32 %81, i32 4, i32 4, i32 0)
  %83 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %84 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %83, i32 0, i32 10
  store i32* %82, i32** %84, align 8
  %85 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %85, i32 0, i32 10
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %72
  %90 = load i32, i32* @KERN_ERR, align 4
  %91 = call i32 @PRINT(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @alloc_dma_trm_ctx.pool_name, i64 0, i64 0))
  %92 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %93 = call i32 @free_dma_trm_ctx(%struct.dma_trm_ctx* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %179

96:                                               ; preds = %72
  %97 = load i32, i32* @alloc_dma_trm_ctx.num_allocs, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @alloc_dma_trm_ctx.num_allocs, align 4
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %148, %96
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %102 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %151

105:                                              ; preds = %99
  %106 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %107 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %106, i32 0, i32 10
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %111 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %110, i32 0, i32 9
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32* @pci_pool_alloc(i32* %108, i32 %109, i32* %115)
  %117 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %118 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %117, i32 0, i32 8
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  store i32* %116, i32** %122, align 8
  %123 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %124 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %123, i32 0, i32 8
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %105
  %132 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %133 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %132, i32 0, i32 8
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @memset(i32* %138, i32 0, i32 4)
  br label %147

140:                                              ; preds = %105
  %141 = load i32, i32* @KERN_ERR, align 4
  %142 = call i32 @PRINT(i32 %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %143 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %144 = call i32 @free_dma_trm_ctx(%struct.dma_trm_ctx* %143)
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %179

147:                                              ; preds = %131
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %99

151:                                              ; preds = %99
  %152 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %153 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %152, i32 0, i32 7
  %154 = call i32 @spin_lock_init(i32* %153)
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @OHCI1394_ContextControlSet, align 8
  %158 = add nsw i64 %156, %157
  %159 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %160 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %159, i32 0, i32 6
  store i64 %158, i64* %160, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* @OHCI1394_ContextControlClear, align 8
  %164 = add nsw i64 %162, %163
  %165 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %166 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %165, i32 0, i32 5
  store i64 %164, i64* %166, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* @OHCI1394_ContextCommandPtr, align 8
  %170 = add nsw i64 %168, %169
  %171 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %172 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %171, i32 0, i32 4
  store i64 %170, i64* %172, align 8
  %173 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %174 = getelementptr inbounds %struct.dma_trm_ctx, %struct.dma_trm_ctx* %173, i32 0, i32 3
  %175 = load i32, i32* @dma_trm_tasklet, align 4
  %176 = load %struct.dma_trm_ctx*, %struct.dma_trm_ctx** %9, align 8
  %177 = ptrtoint %struct.dma_trm_ctx* %176 to i64
  %178 = call i32 @tasklet_init(i32* %174, i32 %175, i64 %177)
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %151, %140, %89, %65
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @PRINT(i32, i8*, i8*) #1

declare dso_local i32 @free_dma_trm_ctx(%struct.dma_trm_ctx*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32* @pci_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @pci_pool_alloc(i32*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
