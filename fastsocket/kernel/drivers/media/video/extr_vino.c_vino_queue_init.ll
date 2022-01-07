; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_framebuffer_queue = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"vino_queue_init(): length = %d\0A\00", align 1
@VINO_QUEUE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"vino_queue_init(): queue already initialized!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VINO_MEMORY_NONE = common dso_local global i64 0, align 8
@VINO_FRAMEBUFFER_COUNT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"vino_queue_init(): allocating buffer %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"vino_queue_init(): kmalloc() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VINO_FRAMEBUFFER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"vino_queue_init(): vino_allocate_buffer() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"vino_queue_init(): buffer = %d, offset = %d, size = %d\0A\00", align 1
@VINO_MEMORY_MMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_framebuffer_queue*, i32*)* @vino_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_queue_init(%struct.vino_framebuffer_queue* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vino_framebuffer_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vino_framebuffer_queue* %0, %struct.vino_framebuffer_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VINO_QUEUE_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %221

20:                                               ; preds = %2
  %21 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %22 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VINO_MEMORY_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %221

30:                                               ; preds = %20
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %221

37:                                               ; preds = %30
  %38 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %39 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %38, i32 0, i32 3
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VINO_FRAMEBUFFER_COUNT_MAX, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @VINO_FRAMEBUFFER_COUNT_MAX, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %50 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %182, %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %185

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.TYPE_4__* @kmalloc(i32 4, i32 %59)
  %61 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %62 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %61, i32 0, i32 6
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %65
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %66, align 8
  %67 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %68 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %67, i32 0, i32 6
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %56
  %76 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %185

79:                                               ; preds = %56
  %80 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %81 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %80, i32 0, i32 6
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %82, i64 %84
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* @VINO_FRAMEBUFFER_SIZE, align 4
  %88 = call i32 @vino_allocate_buffer(%struct.TYPE_4__* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %79
  %92 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %93 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %92, i32 0, i32 6
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %94, i64 %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = call i32 @kfree(%struct.TYPE_4__* %98)
  %100 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %185

101:                                              ; preds = %79
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %104 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %103, i32 0, i32 6
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %102, i32* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = icmp ugt i32 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %101
  %114 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %115 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %114, i32 0, i32 6
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sub i32 %117, 1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %116, i64 %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %125 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %124, i32 0, i32 6
  %126 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sub i32 %127, 1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %126, i64 %129
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %123, %133
  %135 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %136 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %135, i32 0, i32 6
  %137 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %137, i64 %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  store i64 %134, i64* %142, align 8
  br label %152

143:                                              ; preds = %101
  %144 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %145 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %144, i32 0, i32 6
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %146, i64 %148
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %143, %113
  %153 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %154 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %153, i32 0, i32 6
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 %157
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  %161 = call i32 @spin_lock_init(i32* %160)
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %164 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %163, i32 0, i32 6
  %165 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %165, i64 %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %173 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %172, i32 0, i32 6
  %174 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %174, i64 %176
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %162, i64 %171, i64 %180)
  br label %182

182:                                              ; preds = %152
  %183 = load i32, i32* %6, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %51

185:                                              ; preds = %91, %75, %51
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @vino_queue_free_with_count(%struct.vino_framebuffer_queue* %189, i32 %190)
  %192 = load i32*, i32** %5, align 8
  store i32 0, i32* %192, align 4
  br label %216

193:                                              ; preds = %185
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %197 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  %198 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %199 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %198, i32 0, i32 5
  %200 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %201 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @vino_fifo_init(i32* %199, i32 %202)
  %204 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %205 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %204, i32 0, i32 4
  %206 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %207 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @vino_fifo_init(i32* %205, i32 %208)
  %210 = load i64, i64* @VINO_MEMORY_MMAP, align 8
  %211 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %212 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %211, i32 0, i32 1
  store i64 %210, i64* %212, align 8
  %213 = load i64, i64* @VINO_QUEUE_MAGIC, align 8
  %214 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %215 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %193, %188
  %217 = load %struct.vino_framebuffer_queue*, %struct.vino_framebuffer_queue** %4, align 8
  %218 = getelementptr inbounds %struct.vino_framebuffer_queue, %struct.vino_framebuffer_queue* %217, i32 0, i32 3
  %219 = call i32 @mutex_unlock(i32* %218)
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %216, %34, %26, %16
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @kmalloc(i32, i32) #1

declare dso_local i32 @vino_allocate_buffer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @vino_queue_free_with_count(%struct.vino_framebuffer_queue*, i32) #1

declare dso_local i32 @vino_fifo_init(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
