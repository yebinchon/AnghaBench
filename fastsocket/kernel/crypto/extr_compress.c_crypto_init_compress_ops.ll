; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_compress.c_crypto_init_compress_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_compress.c_crypto_init_compress_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.compress_tfm }
%struct.compress_tfm = type { i32, i32 }

@crypto_compress = common dso_local global i32 0, align 4
@crypto_decompress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_compress_ops(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.compress_tfm*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %4 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %5 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %4, i32 0, i32 0
  store %struct.compress_tfm* %5, %struct.compress_tfm** %3, align 8
  %6 = load i32, i32* @crypto_compress, align 4
  %7 = load %struct.compress_tfm*, %struct.compress_tfm** %3, align 8
  %8 = getelementptr inbounds %struct.compress_tfm, %struct.compress_tfm* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @crypto_decompress, align 4
  %10 = load %struct.compress_tfm*, %struct.compress_tfm** %3, align 8
  %11 = getelementptr inbounds %struct.compress_tfm, %struct.compress_tfm* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
