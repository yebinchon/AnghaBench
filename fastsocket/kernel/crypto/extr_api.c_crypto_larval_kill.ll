; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_larval_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_larval_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }
%struct.crypto_larval = type { i32 }

@crypto_alg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_larval_kill(%struct.crypto_alg* %0) #0 {
  %2 = alloca %struct.crypto_alg*, align 8
  %3 = alloca %struct.crypto_larval*, align 8
  store %struct.crypto_alg* %0, %struct.crypto_alg** %2, align 8
  %4 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  %5 = bitcast %struct.crypto_alg* %4 to i8*
  %6 = bitcast i8* %5 to %struct.crypto_larval*
  store %struct.crypto_larval* %6, %struct.crypto_larval** %3, align 8
  %7 = call i32 @down_write(i32* @crypto_alg_sem)
  %8 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  %9 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %8, i32 0, i32 0
  %10 = call i32 @list_del(i32* %9)
  %11 = call i32 @up_write(i32* @crypto_alg_sem)
  %12 = load %struct.crypto_larval*, %struct.crypto_larval** %3, align 8
  %13 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %12, i32 0, i32 0
  %14 = call i32 @complete_all(i32* %13)
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  %16 = call i32 @crypto_alg_put(%struct.crypto_alg* %15)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @crypto_alg_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
