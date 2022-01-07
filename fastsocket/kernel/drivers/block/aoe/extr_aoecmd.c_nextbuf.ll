; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_nextbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_nextbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.aoedev = type { %struct.TYPE_2__, i32, %struct.request_queue* }
%struct.TYPE_2__ = type { %struct.buf*, %struct.request*, %struct.bio* }
%struct.request = type { i8*, %struct.bio* }
%struct.bio = type { %struct.bio* }
%struct.request_queue = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"aoe: nextbuf: unable to mempool_alloc!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (%struct.aoedev*)* @nextbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @nextbuf(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  %8 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %9 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %8, i32 0, i32 2
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %5, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %12 = icmp eq %struct.request_queue* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.buf* null, %struct.buf** %2, align 8
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %16 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.buf*, %struct.buf** %17, align 8
  %19 = icmp ne %struct.buf* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %22 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.buf*, %struct.buf** %23, align 8
  store %struct.buf* %24, %struct.buf** %2, align 8
  br label %93

25:                                               ; preds = %14
  %26 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %27 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.request*, %struct.request** %28, align 8
  store %struct.request* %29, %struct.request** %4, align 8
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = icmp eq %struct.request* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %34 = call %struct.request* @blk_peek_request(%struct.request_queue* %33)
  store %struct.request* %34, %struct.request** %4, align 8
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = icmp eq %struct.request* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store %struct.buf* null, %struct.buf** %2, align 8
  br label %93

38:                                               ; preds = %32
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = call i32 @blk_start_request(%struct.request* %39)
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %43 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.request* %41, %struct.request** %44, align 8
  %45 = load %struct.request*, %struct.request** %4, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 1
  %47 = load %struct.bio*, %struct.bio** %46, align 8
  %48 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %49 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store %struct.bio* %47, %struct.bio** %50, align 8
  %51 = load %struct.request*, %struct.request** %4, align 8
  %52 = call i64 @rqbiocnt(%struct.request* %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.request*, %struct.request** %4, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %38, %25
  %57 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %58 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.buf* @mempool_alloc(i32 %59, i32 %60)
  store %struct.buf* %61, %struct.buf** %6, align 8
  %62 = load %struct.buf*, %struct.buf** %6, align 8
  %63 = icmp eq %struct.buf* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.buf* null, %struct.buf** %2, align 8
  br label %93

66:                                               ; preds = %56
  %67 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %68 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load %struct.bio*, %struct.bio** %69, align 8
  store %struct.bio* %70, %struct.bio** %7, align 8
  %71 = load %struct.buf*, %struct.buf** %6, align 8
  %72 = load %struct.request*, %struct.request** %4, align 8
  %73 = load %struct.bio*, %struct.bio** %7, align 8
  %74 = call i32 @bufinit(%struct.buf* %71, %struct.request* %72, %struct.bio* %73)
  %75 = load %struct.bio*, %struct.bio** %7, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 0
  %77 = load %struct.bio*, %struct.bio** %76, align 8
  store %struct.bio* %77, %struct.bio** %7, align 8
  %78 = load %struct.bio*, %struct.bio** %7, align 8
  %79 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %80 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store %struct.bio* %78, %struct.bio** %81, align 8
  %82 = load %struct.bio*, %struct.bio** %7, align 8
  %83 = icmp eq %struct.bio* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %66
  %85 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %86 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store %struct.request* null, %struct.request** %87, align 8
  br label %88

88:                                               ; preds = %84, %66
  %89 = load %struct.buf*, %struct.buf** %6, align 8
  %90 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %91 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store %struct.buf* %89, %struct.buf** %92, align 8
  store %struct.buf* %89, %struct.buf** %2, align 8
  br label %93

93:                                               ; preds = %88, %64, %37, %20, %13
  %94 = load %struct.buf*, %struct.buf** %2, align 8
  ret %struct.buf* %94
}

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i64 @rqbiocnt(%struct.request*) #1

declare dso_local %struct.buf* @mempool_alloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @bufinit(%struct.buf*, %struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
