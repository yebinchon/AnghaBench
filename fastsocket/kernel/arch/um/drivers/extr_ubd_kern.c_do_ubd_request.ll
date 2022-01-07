; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_do_ubd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_do_ubd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.ubd* }
%struct.ubd = type { i64, i64, %struct.request*, i32, %struct.scatterlist* }
%struct.request = type { i32 }
%struct.scatterlist = type { i32, i32 }
%struct.io_thread_req = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@restart = common dso_local global i32 0, align 4
@thread_fd = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"write to io thread failed, errno = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @do_ubd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ubd_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.io_thread_req*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubd*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  br label %10

10:                                               ; preds = %1, %127
  %11 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load %struct.ubd*, %struct.ubd** %12, align 8
  store %struct.ubd* %13, %struct.ubd** %7, align 8
  %14 = load %struct.ubd*, %struct.ubd** %7, align 8
  %15 = getelementptr inbounds %struct.ubd, %struct.ubd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %10
  %19 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %20 = call %struct.request* @blk_fetch_request(%struct.request_queue* %19)
  store %struct.request* %20, %struct.request** %8, align 8
  %21 = load %struct.request*, %struct.request** %8, align 8
  %22 = icmp eq %struct.request* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %132

24:                                               ; preds = %18
  %25 = load %struct.request*, %struct.request** %8, align 8
  %26 = load %struct.ubd*, %struct.ubd** %7, align 8
  %27 = getelementptr inbounds %struct.ubd, %struct.ubd* %26, i32 0, i32 2
  store %struct.request* %25, %struct.request** %27, align 8
  %28 = load %struct.ubd*, %struct.ubd** %7, align 8
  %29 = getelementptr inbounds %struct.ubd, %struct.ubd* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %31 = load %struct.request*, %struct.request** %8, align 8
  %32 = load %struct.ubd*, %struct.ubd** %7, align 8
  %33 = getelementptr inbounds %struct.ubd, %struct.ubd* %32, i32 0, i32 4
  %34 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %35 = call i64 @blk_rq_map_sg(%struct.request_queue* %30, %struct.request* %31, %struct.scatterlist* %34)
  %36 = load %struct.ubd*, %struct.ubd** %7, align 8
  %37 = getelementptr inbounds %struct.ubd, %struct.ubd* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %24, %10
  %39 = load %struct.ubd*, %struct.ubd** %7, align 8
  %40 = getelementptr inbounds %struct.ubd, %struct.ubd* %39, i32 0, i32 2
  %41 = load %struct.request*, %struct.request** %40, align 8
  store %struct.request* %41, %struct.request** %4, align 8
  %42 = load %struct.request*, %struct.request** %4, align 8
  %43 = call i64 @blk_rq_pos(%struct.request* %42)
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %122, %38
  %45 = load %struct.ubd*, %struct.ubd** %7, align 8
  %46 = getelementptr inbounds %struct.ubd, %struct.ubd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ubd*, %struct.ubd** %7, align 8
  %49 = getelementptr inbounds %struct.ubd, %struct.ubd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %127

52:                                               ; preds = %44
  %53 = load %struct.ubd*, %struct.ubd** %7, align 8
  %54 = getelementptr inbounds %struct.ubd, %struct.ubd* %53, i32 0, i32 4
  %55 = load %struct.scatterlist*, %struct.scatterlist** %54, align 8
  %56 = load %struct.ubd*, %struct.ubd** %7, align 8
  %57 = getelementptr inbounds %struct.ubd, %struct.ubd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %55, i64 %58
  store %struct.scatterlist* %59, %struct.scatterlist** %9, align 8
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.io_thread_req* @kmalloc(i32 4, i32 %60)
  store %struct.io_thread_req* %61, %struct.io_thread_req** %3, align 8
  %62 = load %struct.io_thread_req*, %struct.io_thread_req** %3, align 8
  %63 = icmp eq %struct.io_thread_req* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = load %struct.ubd*, %struct.ubd** %7, align 8
  %66 = getelementptr inbounds %struct.ubd, %struct.ubd* %65, i32 0, i32 3
  %67 = call i64 @list_empty(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.ubd*, %struct.ubd** %7, align 8
  %71 = getelementptr inbounds %struct.ubd, %struct.ubd* %70, i32 0, i32 3
  %72 = call i32 @list_add(i32* %71, i32* @restart)
  br label %73

73:                                               ; preds = %69, %64
  br label %132

74:                                               ; preds = %52
  %75 = load %struct.request*, %struct.request** %4, align 8
  %76 = load %struct.io_thread_req*, %struct.io_thread_req** %3, align 8
  %77 = load i64, i64* %5, align 8
  %78 = shl i64 %77, 9
  %79 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %80 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %83 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %86 = call i32 @sg_page(%struct.scatterlist* %85)
  %87 = call i32 @prepare_request(%struct.request* %75, %struct.io_thread_req* %76, i64 %78, i32 %81, i32 %84, i32 %86)
  %88 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %89 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 9
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %5, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %5, align 8
  %95 = load i32, i32* @thread_fd, align 4
  %96 = call i32 @os_write_file(i32 %95, %struct.io_thread_req** %3, i32 8)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %98, 8
  br i1 %99, label %100, label %122

100:                                              ; preds = %74
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %119

109:                                              ; preds = %100
  %110 = load %struct.ubd*, %struct.ubd** %7, align 8
  %111 = getelementptr inbounds %struct.ubd, %struct.ubd* %110, i32 0, i32 3
  %112 = call i64 @list_empty(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.ubd*, %struct.ubd** %7, align 8
  %116 = getelementptr inbounds %struct.ubd, %struct.ubd* %115, i32 0, i32 3
  %117 = call i32 @list_add(i32* %116, i32* @restart)
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %105
  %120 = load %struct.io_thread_req*, %struct.io_thread_req** %3, align 8
  %121 = call i32 @kfree(%struct.io_thread_req* %120)
  br label %132

122:                                              ; preds = %74
  %123 = load %struct.ubd*, %struct.ubd** %7, align 8
  %124 = getelementptr inbounds %struct.ubd, %struct.ubd* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %124, align 8
  br label %44

127:                                              ; preds = %44
  %128 = load %struct.ubd*, %struct.ubd** %7, align 8
  %129 = getelementptr inbounds %struct.ubd, %struct.ubd* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load %struct.ubd*, %struct.ubd** %7, align 8
  %131 = getelementptr inbounds %struct.ubd, %struct.ubd* %130, i32 0, i32 2
  store %struct.request* null, %struct.request** %131, align 8
  br label %10

132:                                              ; preds = %119, %73, %23
  ret void
}

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i64 @blk_rq_map_sg(%struct.request_queue*, %struct.request*, %struct.scatterlist*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local %struct.io_thread_req* @kmalloc(i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @prepare_request(%struct.request*, %struct.io_thread_req*, i64, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @os_write_file(i32, %struct.io_thread_req**, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @kfree(%struct.io_thread_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
