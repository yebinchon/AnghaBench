; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_spawn_tfm2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_spawn_tfm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_spawn = type { i32 }
%struct.crypto_alg = type opaque
%struct.crypto_tfm = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @crypto_spawn_tfm2(%struct.crypto_spawn* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.crypto_spawn*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.crypto_tfm*, align 8
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %3, align 8
  %6 = load %struct.crypto_spawn*, %struct.crypto_spawn** %3, align 8
  %7 = call i8* @crypto_spawn_alg(%struct.crypto_spawn* %6)
  %8 = bitcast i8* %7 to %struct.crypto_alg*
  store %struct.crypto_alg* %8, %struct.crypto_alg** %4, align 8
  %9 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %10 = bitcast %struct.crypto_alg* %9 to i8*
  %11 = call i64 @IS_ERR(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %15 = bitcast %struct.crypto_alg* %14 to i8*
  %16 = call i8* @ERR_CAST(i8* %15)
  store i8* %16, i8** %2, align 8
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %19 = bitcast %struct.crypto_alg* %18 to i8*
  %20 = load %struct.crypto_spawn*, %struct.crypto_spawn** %3, align 8
  %21 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @crypto_create_tfm(i8* %19, i32 %22)
  %24 = bitcast i8* %23 to %struct.crypto_tfm*
  store %struct.crypto_tfm* %24, %struct.crypto_tfm** %5, align 8
  %25 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %26 = bitcast %struct.crypto_tfm* %25 to i8*
  %27 = call i64 @IS_ERR(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %32 = bitcast %struct.crypto_tfm* %31 to i8*
  store i8* %32, i8** %2, align 8
  br label %39

33:                                               ; preds = %29
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %35 = bitcast %struct.crypto_alg* %34 to i8*
  %36 = call i32 @crypto_mod_put(i8* %35)
  %37 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %38 = bitcast %struct.crypto_tfm* %37 to i8*
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %33, %30, %13
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i8* @crypto_spawn_alg(%struct.crypto_spawn*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_CAST(i8*) #1

declare dso_local i8* @crypto_create_tfm(i8*, i32) #1

declare dso_local i32 @crypto_mod_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
