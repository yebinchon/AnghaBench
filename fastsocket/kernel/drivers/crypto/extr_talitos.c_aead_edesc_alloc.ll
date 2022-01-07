; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_aead_edesc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_aead_edesc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32 }
%struct.aead_request = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_edesc* (%struct.aead_request*, i32)* @aead_edesc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_edesc* @aead_edesc_alloc(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.talitos_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %8 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %7)
  store %struct.crypto_aead* %8, %struct.crypto_aead** %5, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.talitos_ctx* %10, %struct.talitos_ctx** %6, align 8
  %11 = load %struct.talitos_ctx*, %struct.talitos_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %21 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.talitos_ctx*, %struct.talitos_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.talitos_edesc* @talitos_edesc_alloc(i32 %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %26, i32 %30)
  ret %struct.talitos_edesc* %31
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.talitos_edesc* @talitos_edesc_alloc(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
