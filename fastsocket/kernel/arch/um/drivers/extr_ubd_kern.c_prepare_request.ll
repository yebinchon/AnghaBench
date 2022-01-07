; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_prepare_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_prepare_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.gendisk* }
%struct.gendisk = type { %struct.ubd* }
%struct.ubd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i32 }
%struct.io_thread_req = type { i32, i64, i32, i32, i64, i32*, i32, i64, i64, i32*, %struct.request* }
%struct.page = type { i32 }

@READ = common dso_local global i64 0, align 8
@UBD_READ = common dso_local global i32 0, align 4
@UBD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.io_thread_req*, i64, i32, i32, %struct.page*)* @prepare_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_request(%struct.request* %0, %struct.io_thread_req* %1, i64 %2, i32 %3, i32 %4, %struct.page* %5) #0 {
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.io_thread_req*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.gendisk*, align 8
  %14 = alloca %struct.ubd*, align 8
  store %struct.request* %0, %struct.request** %7, align 8
  store %struct.io_thread_req* %1, %struct.io_thread_req** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.page* %5, %struct.page** %12, align 8
  %15 = load %struct.request*, %struct.request** %7, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0
  %17 = load %struct.gendisk*, %struct.gendisk** %16, align 8
  store %struct.gendisk* %17, %struct.gendisk** %13, align 8
  %18 = load %struct.gendisk*, %struct.gendisk** %13, align 8
  %19 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %18, i32 0, i32 0
  %20 = load %struct.ubd*, %struct.ubd** %19, align 8
  store %struct.ubd* %20, %struct.ubd** %14, align 8
  %21 = load %struct.request*, %struct.request** %7, align 8
  %22 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %23 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %22, i32 0, i32 10
  store %struct.request* %21, %struct.request** %23, align 8
  %24 = load %struct.ubd*, %struct.ubd** %14, align 8
  %25 = getelementptr inbounds %struct.ubd, %struct.ubd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = load %struct.ubd*, %struct.ubd** %14, align 8
  %31 = getelementptr inbounds %struct.ubd, %struct.ubd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  br label %38

34:                                               ; preds = %6
  %35 = load %struct.ubd*, %struct.ubd** %14, align 8
  %36 = getelementptr inbounds %struct.ubd, %struct.ubd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i32 [ %33, %29 ], [ %37, %34 ]
  %40 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %41 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %40, i32 0, i32 9
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.ubd*, %struct.ubd** %14, align 8
  %45 = getelementptr inbounds %struct.ubd, %struct.ubd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %48 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %47, i32 0, i32 9
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %52 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %55 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %58 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %60 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %59, i32 0, i32 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %62 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load %struct.request*, %struct.request** %7, align 8
  %64 = call i64 @rq_data_dir(%struct.request* %63)
  %65 = load i64, i64* @READ, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %38
  %68 = load i32, i32* @UBD_READ, align 4
  br label %71

69:                                               ; preds = %38
  %70 = load i32, i32* @UBD_WRITE, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %74 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %76 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.ubd*, %struct.ubd** %14, align 8
  %80 = getelementptr inbounds %struct.ubd, %struct.ubd* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %84 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %82, i32* %86, align 4
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = call i64 @page_address(%struct.page* %87)
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %93 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  %94 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %95 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %94, i32 0, i32 3
  store i32 512, i32* %95, align 4
  %96 = load %struct.ubd*, %struct.ubd** %14, align 8
  %97 = getelementptr inbounds %struct.ubd, %struct.ubd* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %71
  %102 = load %struct.io_thread_req*, %struct.io_thread_req** %8, align 8
  %103 = load %struct.ubd*, %struct.ubd** %14, align 8
  %104 = getelementptr inbounds %struct.ubd, %struct.ubd* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ubd*, %struct.ubd** %14, align 8
  %108 = getelementptr inbounds %struct.ubd, %struct.ubd* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ubd*, %struct.ubd** %14, align 8
  %112 = getelementptr inbounds %struct.ubd, %struct.ubd* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @cowify_req(%struct.io_thread_req* %102, i32 %106, i32 %110, i32 %114)
  br label %116

116:                                              ; preds = %101, %71
  ret void
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @cowify_req(%struct.io_thread_req*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
