; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_alloc_instance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_alloc_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { i32 }
%struct.crypto_alg = type { i32 }
%struct.crypto_spawn = type { i32 }

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_instance* @crypto_alloc_instance(i8* %0, %struct.crypto_alg* %1) #0 {
  %3 = alloca %struct.crypto_instance*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca %struct.crypto_instance*, align 8
  %7 = alloca %struct.crypto_spawn*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %11 = call %struct.crypto_instance* @crypto_alloc_instance2(i8* %9, %struct.crypto_alg* %10, i32 0)
  store %struct.crypto_instance* %11, %struct.crypto_instance** %6, align 8
  %12 = load %struct.crypto_instance*, %struct.crypto_instance** %6, align 8
  %13 = call i64 @IS_ERR(%struct.crypto_instance* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.crypto_instance*, %struct.crypto_instance** %6, align 8
  %18 = call %struct.crypto_spawn* @crypto_instance_ctx(%struct.crypto_instance* %17)
  store %struct.crypto_spawn* %18, %struct.crypto_spawn** %7, align 8
  %19 = load %struct.crypto_spawn*, %struct.crypto_spawn** %7, align 8
  %20 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %21 = load %struct.crypto_instance*, %struct.crypto_instance** %6, align 8
  %22 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %23 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @crypto_init_spawn(%struct.crypto_spawn* %19, %struct.crypto_alg* %20, %struct.crypto_instance* %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %31

29:                                               ; preds = %16
  %30 = load %struct.crypto_instance*, %struct.crypto_instance** %6, align 8
  store %struct.crypto_instance* %30, %struct.crypto_instance** %3, align 8
  br label %38

31:                                               ; preds = %28
  %32 = load %struct.crypto_instance*, %struct.crypto_instance** %6, align 8
  %33 = call i32 @kfree(%struct.crypto_instance* %32)
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.crypto_instance* @ERR_PTR(i32 %34)
  store %struct.crypto_instance* %35, %struct.crypto_instance** %6, align 8
  br label %36

36:                                               ; preds = %31, %15
  %37 = load %struct.crypto_instance*, %struct.crypto_instance** %6, align 8
  store %struct.crypto_instance* %37, %struct.crypto_instance** %3, align 8
  br label %38

38:                                               ; preds = %36, %29
  %39 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  ret %struct.crypto_instance* %39
}

declare dso_local %struct.crypto_instance* @crypto_alloc_instance2(i8*, %struct.crypto_alg*, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_spawn* @crypto_instance_ctx(%struct.crypto_instance*) #1

declare dso_local i32 @crypto_init_spawn(%struct.crypto_spawn*, %struct.crypto_alg*, %struct.crypto_instance*, i32) #1

declare dso_local i32 @kfree(%struct.crypto_instance*) #1

declare dso_local %struct.crypto_instance* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
