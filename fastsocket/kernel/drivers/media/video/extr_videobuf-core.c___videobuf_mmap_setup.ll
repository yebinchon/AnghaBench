; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c___videobuf_mmap_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c___videobuf_mmap_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@UNSET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mmap setup: %d buffers, %d bytes each\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__videobuf_mmap_setup(%struct.videobuf_queue* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.videobuf_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %13 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %18 = call i32 @MAGIC_CHECK(i32 %16, i32 %17)
  %19 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %20 = call i32 @__videobuf_free(%struct.videobuf_queue* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 0, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %115

25:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %101, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %104

30:                                               ; preds = %26
  %31 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %32 = call %struct.TYPE_4__* @videobuf_alloc_vb(%struct.videobuf_queue* %31)
  %33 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %34 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %40 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp eq %struct.TYPE_4__* null, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %104

48:                                               ; preds = %30
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %51 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %49, i32* %57, align 4
  %58 = load i32, i32* @UNSET, align 4
  %59 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %60 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  store i32 %58, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %69 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %67, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %78 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %76, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %100 [
    i32 130, label %86
    i32 128, label %99
    i32 129, label %99
  ]

86:                                               ; preds = %48
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @PAGE_ALIGN(i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = mul i32 %88, %89
  %91 = load %struct.videobuf_queue*, %struct.videobuf_queue** %6, align 8
  %92 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i32 %90, i32* %98, align 4
  br label %100

99:                                               ; preds = %48, %48
  br label %100

100:                                              ; preds = %48, %99, %86
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %26

104:                                              ; preds = %47, %26
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %115

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %107, %23
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @__videobuf_free(%struct.videobuf_queue*) #1

declare dso_local %struct.TYPE_4__* @videobuf_alloc_vb(%struct.videobuf_queue*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
