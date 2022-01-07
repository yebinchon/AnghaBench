; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_init_spawn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_init_spawn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_spawn = type { %struct.crypto_type* }
%struct.crypto_alg = type { i32 }
%struct.crypto_instance = type { i32 }
%struct.crypto_type = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_spawn2(%struct.crypto_spawn* %0, %struct.crypto_alg* %1, %struct.crypto_instance* %2, %struct.crypto_type* %3) #0 {
  %5 = alloca %struct.crypto_spawn*, align 8
  %6 = alloca %struct.crypto_alg*, align 8
  %7 = alloca %struct.crypto_instance*, align 8
  %8 = alloca %struct.crypto_type*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %5, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %6, align 8
  store %struct.crypto_instance* %2, %struct.crypto_instance** %7, align 8
  store %struct.crypto_type* %3, %struct.crypto_type** %8, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %13 = icmp ne %struct.crypto_type* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %16 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %19 = getelementptr inbounds %struct.crypto_type, %struct.crypto_type* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  %22 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %23 = getelementptr inbounds %struct.crypto_type, %struct.crypto_type* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %39

28:                                               ; preds = %14, %4
  %29 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %30 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %31 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %30, i32 0, i32 0
  store %struct.crypto_type* %29, %struct.crypto_type** %31, align 8
  %32 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %33 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %34 = load %struct.crypto_instance*, %struct.crypto_instance** %7, align 8
  %35 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %36 = getelementptr inbounds %struct.crypto_type, %struct.crypto_type* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @crypto_init_spawn(%struct.crypto_spawn* %32, %struct.crypto_alg* %33, %struct.crypto_instance* %34, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %28, %27
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @crypto_init_spawn(%struct.crypto_spawn*, %struct.crypto_alg*, %struct.crypto_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
