; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.deflate_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*)* @deflate_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deflate_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.deflate_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %4 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %5 = call %struct.deflate_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %4)
  store %struct.deflate_ctx* %5, %struct.deflate_ctx** %3, align 8
  %6 = load %struct.deflate_ctx*, %struct.deflate_ctx** %3, align 8
  %7 = call i32 @deflate_comp_exit(%struct.deflate_ctx* %6)
  %8 = load %struct.deflate_ctx*, %struct.deflate_ctx** %3, align 8
  %9 = call i32 @deflate_decomp_exit(%struct.deflate_ctx* %8)
  ret void
}

declare dso_local %struct.deflate_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @deflate_comp_exit(%struct.deflate_ctx*) #1

declare dso_local i32 @deflate_decomp_exit(%struct.deflate_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
