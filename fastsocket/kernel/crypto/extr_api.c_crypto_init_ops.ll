; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_init_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_api.c_crypto_init_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.crypto_type* }
%struct.crypto_type = type { i32 (%struct.crypto_tfm.0*, i32, i32)* }
%struct.crypto_tfm.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32)* @crypto_init_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_ops(%struct.crypto_tfm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_type*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.crypto_type*, %struct.crypto_type** %12, align 8
  store %struct.crypto_type* %13, %struct.crypto_type** %8, align 8
  %14 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %15 = icmp ne %struct.crypto_type* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %18 = getelementptr inbounds %struct.crypto_type, %struct.crypto_type* %17, i32 0, i32 0
  %19 = load i32 (%struct.crypto_tfm.0*, i32, i32)*, i32 (%struct.crypto_tfm.0*, i32, i32)** %18, align 8
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %21 = bitcast %struct.crypto_tfm* %20 to %struct.crypto_tfm.0*
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 %19(%struct.crypto_tfm.0* %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %27 = call i32 @crypto_tfm_alg_type(%struct.crypto_tfm* %26)
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %25
  %29 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %30 = call i32 @crypto_init_cipher_ops(%struct.crypto_tfm* %29)
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %25
  %32 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %33 = call i32 @crypto_init_compress_ops(%struct.crypto_tfm* %32)
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = call i32 (...) @BUG()
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %31, %28, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @crypto_tfm_alg_type(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_init_cipher_ops(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_init_compress_ops(%struct.crypto_tfm*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
