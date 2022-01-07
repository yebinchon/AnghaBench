; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_queue = type { i64, i64, i32, i32* }
%struct.crypto_async_request = type { i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_enqueue_request(%struct.crypto_queue* %0, %struct.crypto_async_request* %1) #0 {
  %3 = alloca %struct.crypto_queue*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto_queue* %0, %struct.crypto_queue** %3, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %4, align 8
  %6 = load i32, i32* @EINPROGRESS, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %12 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %22 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %51

28:                                               ; preds = %18
  %29 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %30 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %33 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %32, i32 0, i32 2
  %34 = icmp eq i32* %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %37 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %36, i32 0, i32 1
  %38 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %39 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  br label %40

40:                                               ; preds = %35, %28
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %43 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %47 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %46, i32 0, i32 1
  %48 = load %struct.crypto_queue*, %struct.crypto_queue** %3, align 8
  %49 = getelementptr inbounds %struct.crypto_queue, %struct.crypto_queue* %48, i32 0, i32 2
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %41, %27
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
