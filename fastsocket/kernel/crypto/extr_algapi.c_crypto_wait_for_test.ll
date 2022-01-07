; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_wait_for_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_wait_for_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_larval = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CRYPTO_MSG_ALG_REGISTER = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_larval*)* @crypto_wait_for_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_wait_for_test(%struct.crypto_larval* %0) #0 {
  %2 = alloca %struct.crypto_larval*, align 8
  %3 = alloca i32, align 4
  store %struct.crypto_larval* %0, %struct.crypto_larval** %2, align 8
  %4 = load i32, i32* @CRYPTO_MSG_ALG_REGISTER, align 4
  %5 = load %struct.crypto_larval*, %struct.crypto_larval** %2, align 8
  %6 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @crypto_probing_notify(i32 %4, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NOTIFY_STOP, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @NOTIFY_DONE, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %32

20:                                               ; preds = %12
  %21 = load %struct.crypto_larval*, %struct.crypto_larval** %2, align 8
  %22 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @crypto_alg_tested(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.crypto_larval*, %struct.crypto_larval** %2, align 8
  %28 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %27, i32 0, i32 1
  %29 = call i32 @wait_for_completion_interruptible(i32* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @WARN_ON(i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.crypto_larval*, %struct.crypto_larval** %2, align 8
  %34 = getelementptr inbounds %struct.crypto_larval, %struct.crypto_larval* %33, i32 0, i32 0
  %35 = call i32 @crypto_larval_kill(%struct.TYPE_2__* %34)
  ret void
}

declare dso_local i32 @crypto_probing_notify(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @crypto_alg_tested(i32, i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @crypto_larval_kill(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
