; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i32 }
%struct.talitos_edesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DESC_HDR_MODE0_ENCRYPT = common dso_local global i32 0, align 4
@ipsec_esp_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @aead_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.talitos_ctx*, align 8
  %6 = alloca %struct.talitos_edesc*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %7 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %8 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %7)
  store %struct.crypto_aead* %8, %struct.crypto_aead** %4, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %10 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.talitos_ctx* %10, %struct.talitos_ctx** %5, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %12 = call %struct.talitos_edesc* @aead_edesc_alloc(%struct.aead_request* %11, i32 0)
  store %struct.talitos_edesc* %12, %struct.talitos_edesc** %6, align 8
  %13 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %14 = call i64 @IS_ERR(%struct.talitos_edesc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.talitos_edesc* %17)
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.talitos_ctx*, %struct.talitos_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DESC_HDR_MODE0_ENCRYPT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %26 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.talitos_edesc*, %struct.talitos_edesc** %6, align 8
  %29 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %30 = load i32, i32* @ipsec_esp_encrypt_done, align 4
  %31 = call i32 @ipsec_esp(%struct.talitos_edesc* %28, %struct.aead_request* %29, i32* null, i32 0, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.talitos_edesc* @aead_edesc_alloc(%struct.aead_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.talitos_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.talitos_edesc*) #1

declare dso_local i32 @ipsec_esp(%struct.talitos_edesc*, %struct.aead_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
