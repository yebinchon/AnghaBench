; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_mv_cesa.c_mv_enc_aes_cbc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_mv_cesa.c_mv_enc_aes_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.mv_req_ctx = type { i64, i32 }

@COP_AES_CBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @mv_enc_aes_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_enc_aes_cbc(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.mv_req_ctx*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %4 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %5 = call %struct.mv_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %4)
  store %struct.mv_req_ctx* %5, %struct.mv_req_ctx** %3, align 8
  %6 = load i32, i32* @COP_AES_CBC, align 4
  %7 = load %struct.mv_req_ctx*, %struct.mv_req_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.mv_req_ctx, %struct.mv_req_ctx* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.mv_req_ctx*, %struct.mv_req_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.mv_req_ctx, %struct.mv_req_ctx* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %12 = call i32 @mv_handle_req(%struct.ablkcipher_request* %11)
  ret i32 %12
}

declare dso_local %struct.mv_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @mv_handle_req(%struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
