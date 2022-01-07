; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_alloc_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_alloc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i64, i32, i32 }
%struct.convert_context = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@kcryptd_async_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*, %struct.convert_context*)* @crypt_alloc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_alloc_req(%struct.crypt_config* %0, %struct.convert_context* %1) #0 {
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.convert_context*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  store %struct.convert_context* %1, %struct.convert_context** %4, align 8
  %5 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %6 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %11 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_NOIO, align 4
  %14 = call i64 @mempool_alloc(i32 %12, i32 %13)
  %15 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %16 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %19 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %22 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ablkcipher_request_set_tfm(i64 %20, i32 %23)
  %25 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %26 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %29 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @kcryptd_async_done, align 4
  %32 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %33 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %34 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dmreq_of_req(%struct.crypt_config* %32, i64 %35)
  %37 = call i32 @ablkcipher_request_set_callback(i64 %27, i32 %30, i32 %31, i32 %36)
  ret void
}

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(i64, i32) #1

declare dso_local i32 @ablkcipher_request_set_callback(i64, i32, i32, i32) #1

declare dso_local i32 @dmreq_of_req(%struct.crypt_config*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
