; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_free_ahash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_free_ahash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptd_ahash = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cryptd_free_ahash(%struct.cryptd_ahash* %0) #0 {
  %2 = alloca %struct.cryptd_ahash*, align 8
  store %struct.cryptd_ahash* %0, %struct.cryptd_ahash** %2, align 8
  %3 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %2, align 8
  %4 = getelementptr inbounds %struct.cryptd_ahash, %struct.cryptd_ahash* %3, i32 0, i32 0
  %5 = call i32 @crypto_free_ahash(i32* %4)
  ret void
}

declare dso_local i32 @crypto_free_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
