; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_put_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_put_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32** }
%struct.cfq_queue = type { i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @cfq_put_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_put_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %5)
  store %struct.cfq_queue* %6, %struct.cfq_queue** %3, align 8
  %7 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %8 = icmp ne %struct.cfq_queue* %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %1
  %10 = load %struct.request*, %struct.request** %2, align 8
  %11 = call i32 @rq_data_dir(%struct.request* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %13 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %24 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.request*, %struct.request** %2, align 8
  %32 = call %struct.TYPE_2__* @RQ_CIC(%struct.request* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @put_io_context(i32 %34)
  %36 = load %struct.request*, %struct.request** %2, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.request*, %struct.request** %2, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.request*, %struct.request** %2, align 8
  %45 = call i32 @RQ_CFQG(%struct.request* %44)
  %46 = call i32 @cfq_put_cfqg(i32 %45)
  %47 = load %struct.request*, %struct.request** %2, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %52 = call i32 @cfq_put_queue(%struct.cfq_queue* %51)
  br label %53

53:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_io_context(i32) #1

declare dso_local %struct.TYPE_2__* @RQ_CIC(%struct.request*) #1

declare dso_local i32 @cfq_put_cfqg(i32) #1

declare dso_local i32 @RQ_CFQG(%struct.request*) #1

declare dso_local i32 @cfq_put_queue(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
