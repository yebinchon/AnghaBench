; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_allocate_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_allocate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64*, i32, i64*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"vino_allocate_buffer():\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"vino_allocate_buffer(): size = %d, count = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VINO_PAGE_RATIO = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@VINO_PAGE_SIZE = common dso_local global i32 0, align 4
@VINO_DATA_FMT_NONE = common dso_local global i32 0, align 4
@VINO_DESC_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_framebuffer*, i32)* @vino_allocate_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_allocate_buffer(%struct.vino_framebuffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vino_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vino_framebuffer* %0, %struct.vino_framebuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %192

17:                                               ; preds = %2
  %18 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %19 = call i32 @memset(%struct.vino_framebuffer* %18, i32 0, i32 48)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = udiv i32 %20, %21
  %23 = add i32 %22, 4
  %24 = and i32 %23, -4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i64 @kmalloc(i32 %31, i32 %32)
  %34 = inttoptr i64 %33 to i64*
  %35 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %36 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64* %34, i64** %37, align 8
  %38 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %39 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %17
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %192

46:                                               ; preds = %17
  %47 = load i32, i32* @VINO_PAGE_RATIO, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 4
  %50 = mul i32 %47, %49
  %51 = zext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %55 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = load i32, i32* @GFP_DMA, align 4
  %59 = or i32 %57, %58
  %60 = call i64* @dma_alloc_coherent(i32* null, i32 %53, i32* %56, i32 %59)
  %61 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %62 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i64* %60, i64** %63, align 8
  %64 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %65 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %46
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %185

72:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %151, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %154

77:                                               ; preds = %73
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load i32, i32* @GFP_DMA, align 4
  %80 = or i32 %78, %79
  %81 = call i64 @get_zeroed_page(i32 %80)
  %82 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %83 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %81, i64* %88, align 8
  %89 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %90 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %77
  %99 = load i32, i32* @ENOBUFS, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %154

101:                                              ; preds = %77
  %102 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %103 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %113 = call i64 @dma_map_single(i32* null, i8* %110, i32 %111, i32 %112)
  store i64 %113, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %136, %101
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @VINO_PAGE_RATIO, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = load i64, i64* %10, align 8
  %120 = load i32, i32* @VINO_PAGE_SIZE, align 4
  %121 = load i32, i32* %8, align 4
  %122 = mul i32 %120, %121
  %123 = zext i32 %122 to i64
  %124 = add nsw i64 %119, %123
  %125 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %126 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* @VINO_PAGE_RATIO, align 4
  %130 = load i32, i32* %7, align 4
  %131 = mul i32 %129, %130
  %132 = load i32, i32* %8, align 4
  %133 = add i32 %131, %132
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %128, i64 %134
  store i64 %124, i64* %135, align 8
  br label %136

136:                                              ; preds = %118
  %137 = load i32, i32* %8, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %114

139:                                              ; preds = %114
  %140 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %141 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @virt_to_page(i8* %148)
  %150 = call i32 @SetPageReserved(i32 %149)
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %7, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %73

154:                                              ; preds = %98, %73
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %157 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @vino_free_buffer_with_count(%struct.vino_framebuffer* %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %3, align 4
  br label %192

166:                                              ; preds = %154
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = mul i32 %167, %168
  %170 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %171 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @VINO_DATA_FMT_NONE, align 4
  %173 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %174 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load i64, i64* @VINO_DESC_STOP, align 8
  %176 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %177 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* @VINO_PAGE_RATIO, align 4
  %181 = load i32, i32* %6, align 4
  %182 = mul i32 %180, %181
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %179, i64 %183
  store i64 %175, i64* %184, align 8
  store i32 0, i32* %3, align 4
  br label %192

185:                                              ; preds = %69
  %186 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %187 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = call i32 @kfree(i64* %189)
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %185, %166, %161, %43, %14
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @memset(%struct.vino_framebuffer*, i32, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i64* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @SetPageReserved(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @vino_free_buffer_with_count(%struct.vino_framebuffer*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
