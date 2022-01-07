; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_dma_init_user_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_dma_init_user_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.videobuf_dmabuf = type { i32, i64, i64, i64, i32* }

@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"init user [0x%lx+0x%lx => %d pages]\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"get_user_pages: err=%d [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_dmabuf*, i32, i64, i64)* @videobuf_dma_init_user_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_dma_init_user_locked(%struct.videobuf_dmabuf* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.videobuf_dmabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.videobuf_dmabuf* %0, %struct.videobuf_dmabuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %16 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %18 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 128, label %22
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* @READ, align 4
  store i32 %21, i32* %13, align 4
  br label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @WRITE, align 4
  store i32 %23, i32* %13, align 4
  br label %26

24:                                               ; preds = %4
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %24, %22, %20
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @PAGE_MASK, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = sub i64 %34, 1
  %36 = load i64, i64* @PAGE_MASK, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* @PAGE_SHIFT, align 8
  %39 = lshr i64 %37, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @PAGE_MASK, align 8
  %42 = xor i64 %41, -1
  %43 = and i64 %40, %42
  %44 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %45 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %48 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %49, %50
  %52 = add i64 %51, 1
  %53 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %54 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %56 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @kmalloc(i32 %59, i32 %60)
  %62 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %63 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %62, i32 0, i32 4
  store i32* %61, i32** %63, align 8
  %64 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %65 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* null, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %26
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %132

71:                                               ; preds = %26
  %72 = load i64, i64* %8, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %77 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75, i64 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @PAGE_MASK, align 8
  %86 = and i64 %84, %85
  %87 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %88 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @READ, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %96 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @get_user_pages(%struct.TYPE_3__* %80, i32 %83, i64 %86, i32 %90, i32 %94, i32 1, i32* %97, i32* null)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %102 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %71
  %106 = load i32, i32* %12, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  br label %111

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %113 = sext i32 %112 to i64
  %114 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %115 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %118 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i32, i32* %12, align 4
  br label %129

126:                                              ; preds = %111
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i32 [ %125, %124 ], [ %128, %126 ]
  store i32 %130, i32* %5, align 4
  br label %132

131:                                              ; preds = %71
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %129, %68
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_3__*, i32, i64, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
