; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_ablkcipher_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_ablkcipher_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.rtattr = type { i32 }

@seqiv_tmpl = common dso_local global i32 0, align 4
@seqiv_givencrypt_first = common dso_local global i32 0, align 4
@seqiv_init = common dso_local global i32 0, align 4
@skcipher_geniv_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_instance* (%struct.rtattr**)* @seqiv_ablkcipher_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_instance* @seqiv_ablkcipher_alloc(%struct.rtattr** %0) #0 {
  %2 = alloca %struct.rtattr**, align 8
  %3 = alloca %struct.crypto_instance*, align 8
  store %struct.rtattr** %0, %struct.rtattr*** %2, align 8
  %4 = load %struct.rtattr**, %struct.rtattr*** %2, align 8
  %5 = call %struct.crypto_instance* @skcipher_geniv_alloc(i32* @seqiv_tmpl, %struct.rtattr** %4, i32 0, i32 0)
  store %struct.crypto_instance* %5, %struct.crypto_instance** %3, align 8
  %6 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %7 = call i64 @IS_ERR(%struct.crypto_instance* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load i32, i32* @seqiv_givencrypt_first, align 4
  %12 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %13 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %11, i32* %15, align 8
  %16 = load i32, i32* @seqiv_init, align 4
  %17 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %18 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @skcipher_geniv_exit, align 4
  %21 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %22 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %25 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %30 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %28
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  br label %36

36:                                               ; preds = %10, %9
  %37 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  ret %struct.crypto_instance* %37
}

declare dso_local %struct.crypto_instance* @skcipher_geniv_alloc(i32*, %struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
