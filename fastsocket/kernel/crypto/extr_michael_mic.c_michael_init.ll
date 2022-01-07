; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_michael_mic.c_michael_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_michael_mic.c_michael_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.michael_mic_desc_ctx = type { i32, i32, i64 }
%struct.michael_mic_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @michael_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @michael_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.michael_mic_desc_ctx*, align 8
  %4 = alloca %struct.michael_mic_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %5 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %6 = call %struct.michael_mic_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %5)
  store %struct.michael_mic_desc_ctx* %6, %struct.michael_mic_desc_ctx** %3, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %8 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.michael_mic_ctx* @crypto_shash_ctx(i32 %9)
  store %struct.michael_mic_ctx* %10, %struct.michael_mic_ctx** %4, align 8
  %11 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.michael_mic_desc_ctx*, %struct.michael_mic_desc_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.michael_mic_desc_ctx, %struct.michael_mic_desc_ctx* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  ret i32 0
}

declare dso_local %struct.michael_mic_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.michael_mic_ctx* @crypto_shash_ctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
