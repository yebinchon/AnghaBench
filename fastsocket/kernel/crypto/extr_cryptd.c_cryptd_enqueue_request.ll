; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptd_queue = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.cryptd_cpu_queue = type { i32, i32 }

@kcrypto_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptd_queue*, %struct.crypto_async_request*)* @cryptd_enqueue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptd_enqueue_request(%struct.cryptd_queue* %0, %struct.crypto_async_request* %1) #0 {
  %3 = alloca %struct.cryptd_queue*, align 8
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptd_cpu_queue*, align 8
  store %struct.cryptd_queue* %0, %struct.cryptd_queue** %3, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %4, align 8
  %8 = call i32 (...) @get_cpu()
  store i32 %8, i32* %5, align 4
  %9 = load %struct.cryptd_queue*, %struct.cryptd_queue** %3, align 8
  %10 = getelementptr inbounds %struct.cryptd_queue, %struct.cryptd_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.cryptd_cpu_queue* @per_cpu_ptr(i32 %11, i32 %12)
  store %struct.cryptd_cpu_queue* %13, %struct.cryptd_cpu_queue** %7, align 8
  %14 = load %struct.cryptd_cpu_queue*, %struct.cryptd_cpu_queue** %7, align 8
  %15 = getelementptr inbounds %struct.cryptd_cpu_queue, %struct.cryptd_cpu_queue* %14, i32 0, i32 1
  %16 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %17 = call i32 @crypto_enqueue_request(i32* %15, %struct.crypto_async_request* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @kcrypto_wq, align 4
  %20 = load %struct.cryptd_cpu_queue*, %struct.cryptd_cpu_queue** %7, align 8
  %21 = getelementptr inbounds %struct.cryptd_cpu_queue, %struct.cryptd_cpu_queue* %20, i32 0, i32 0
  %22 = call i32 @queue_work_on(i32 %18, i32 %19, i32* %21)
  %23 = call i32 (...) @put_cpu()
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.cryptd_cpu_queue* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
