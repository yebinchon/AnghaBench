; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c___scm_alloc_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk.c___scm_alloc_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aob_rq_header = type { i64 }
%struct.scm_request = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@inactive_requests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__scm_alloc_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__scm_alloc_rq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aob_rq_header*, align 8
  %3 = alloca %struct.scm_request*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.aob_rq_header* @kzalloc(i32 32, i32 %4)
  store %struct.aob_rq_header* %5, %struct.aob_rq_header** %2, align 8
  %6 = load %struct.aob_rq_header*, %struct.aob_rq_header** %2, align 8
  %7 = icmp ne %struct.aob_rq_header* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %59

11:                                               ; preds = %0
  %12 = load %struct.aob_rq_header*, %struct.aob_rq_header** %2, align 8
  %13 = getelementptr inbounds %struct.aob_rq_header, %struct.aob_rq_header* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.scm_request*
  store %struct.scm_request* %16, %struct.scm_request** %3, align 8
  %17 = load i32, i32* @GFP_DMA, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %21 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @GFP_DMA, align 4
  %23 = call i64 @get_zeroed_page(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %26 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %28 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %11
  %32 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %33 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31, %11
  %37 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %38 = call i32 @__scm_free_rq(%struct.scm_request* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %1, align 4
  br label %59

41:                                               ; preds = %31
  %42 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %43 = call i64 @__scm_alloc_rq_cluster(%struct.scm_request* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %47 = call i32 @__scm_free_rq(%struct.scm_request* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %1, align 4
  br label %59

50:                                               ; preds = %41
  %51 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %52 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %51, i32 0, i32 0
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = call i32 @spin_lock_irq(i32* @list_lock)
  %55 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %56 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %55, i32 0, i32 0
  %57 = call i32 @list_add(i32* %56, i32* @inactive_requests)
  %58 = call i32 @spin_unlock_irq(i32* @list_lock)
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %50, %45, %36, %8
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local %struct.aob_rq_header* @kzalloc(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @__scm_free_rq(%struct.scm_request*) #1

declare dso_local i64 @__scm_alloc_rq_cluster(%struct.scm_request*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
