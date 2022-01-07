; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_aead_complete2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_aead_complete2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_givcrypt_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_givcrypt_request*, i32)* @seqiv_aead_complete2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seqiv_aead_complete2(%struct.aead_givcrypt_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_givcrypt_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  store %struct.aead_givcrypt_request* %0, %struct.aead_givcrypt_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %8 = call %struct.aead_request* @aead_givcrypt_reqctx(%struct.aead_givcrypt_request* %7)
  store %struct.aead_request* %8, %struct.aead_request** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EINPROGRESS, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %31

18:                                               ; preds = %14
  %19 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %20 = call %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request* %19)
  store %struct.crypto_aead* %20, %struct.crypto_aead** %6, align 8
  %21 = load %struct.aead_givcrypt_request*, %struct.aead_givcrypt_request** %3, align 8
  %22 = getelementptr inbounds %struct.aead_givcrypt_request, %struct.aead_givcrypt_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %29 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %28)
  %30 = call i32 @memcpy(i32 %24, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %18, %17
  %32 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  br label %36

36:                                               ; preds = %31, %13
  ret void
}

declare dso_local %struct.aead_request* @aead_givcrypt_reqctx(%struct.aead_givcrypt_request*) #1

declare dso_local %struct.crypto_aead* @aead_givcrypt_reqtfm(%struct.aead_givcrypt_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
