; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.crypto_tfm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.crypto_tfm*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.hash_desc* %0) #0 {
  %2 = alloca %struct.hash_desc*, align 8
  %3 = alloca %struct.crypto_tfm*, align 8
  store %struct.hash_desc* %0, %struct.hash_desc** %2, align 8
  %4 = load %struct.hash_desc*, %struct.hash_desc** %2, align 8
  %5 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.crypto_tfm* @crypto_hash_tfm(i32 %6)
  store %struct.crypto_tfm* %7, %struct.crypto_tfm** %3, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.crypto_tfm*)*, i32 (%struct.crypto_tfm*)** %12, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %15 = call i32 %13(%struct.crypto_tfm* %14)
  ret i32 0
}

declare dso_local %struct.crypto_tfm* @crypto_hash_tfm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
