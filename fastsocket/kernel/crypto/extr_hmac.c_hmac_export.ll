; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hmac.c_hmac_export.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hmac.c_hmac_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @hmac_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_export(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.shash_desc*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %7 = call %struct.shash_desc* @shash_desc_ctx(%struct.shash_desc* %6)
  store %struct.shash_desc* %7, %struct.shash_desc** %5, align 8
  %8 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %9 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %12 = and i32 %10, %11
  %13 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %14 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @crypto_shash_export(%struct.shash_desc* %15, i8* %16)
  ret i32 %17
}

declare dso_local %struct.shash_desc* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_export(%struct.shash_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
