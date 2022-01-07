; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_init_spawn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_init_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_spawn = type { %struct.crypto_alg*, i32, i32, %struct.crypto_instance* }
%struct.crypto_alg = type { i32 }
%struct.crypto_instance = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_spawn(%struct.crypto_spawn* %0, %struct.crypto_alg* %1, %struct.crypto_instance* %2, i32 %3) #0 {
  %5 = alloca %struct.crypto_spawn*, align 8
  %6 = alloca %struct.crypto_alg*, align 8
  %7 = alloca %struct.crypto_instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %5, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %6, align 8
  store %struct.crypto_instance* %2, %struct.crypto_instance** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @EAGAIN, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.crypto_instance*, %struct.crypto_instance** %7, align 8
  %13 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %14 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %13, i32 0, i32 3
  store %struct.crypto_instance* %12, %struct.crypto_instance** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %17 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = call i32 @down_write(i32* @crypto_alg_sem)
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %20 = call i32 @crypto_is_moribund(%struct.crypto_alg* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %24 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %23, i32 0, i32 1
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %26 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %25, i32 0, i32 0
  %27 = call i32 @list_add(i32* %24, i32* %26)
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %29 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %30 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %29, i32 0, i32 0
  store %struct.crypto_alg* %28, %struct.crypto_alg** %30, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %22, %4
  %32 = call i32 @up_write(i32* @crypto_alg_sem)
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @crypto_is_moribund(%struct.crypto_alg*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
