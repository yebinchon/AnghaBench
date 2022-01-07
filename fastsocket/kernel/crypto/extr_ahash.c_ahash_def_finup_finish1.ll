; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_def_finup_finish1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_def_finup_finish1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ahash_request*)* }

@ahash_def_finup_done2 = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @ahash_def_finup_finish1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_def_finup_finish1(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %26

8:                                                ; preds = %2
  %9 = load i32, i32* @ahash_def_finup_done2, align 4
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = call %struct.TYPE_4__* @crypto_ahash_reqtfm(%struct.ahash_request* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ahash_request*)*, i32 (%struct.ahash_request*)** %22, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %25 = call i32 %23(%struct.ahash_request* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %8, %7
  %27 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ahash_def_finup_finish2(%struct.ahash_request* %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_4__* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @ahash_def_finup_finish2(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
