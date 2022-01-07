; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_md4.c_md4_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_md4.c_md4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md4_ctx = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @md4_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md4_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.md4_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %4 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %5 = call %struct.md4_ctx* @shash_desc_ctx(%struct.shash_desc* %4)
  store %struct.md4_ctx* %5, %struct.md4_ctx** %3, align 8
  %6 = load %struct.md4_ctx*, %struct.md4_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 1732584193, i32* %9, align 4
  %10 = load %struct.md4_ctx*, %struct.md4_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 -271733879, i32* %13, align 4
  %14 = load %struct.md4_ctx*, %struct.md4_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 -1732584194, i32* %17, align 4
  %18 = load %struct.md4_ctx*, %struct.md4_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 271733878, i32* %21, align 4
  %22 = load %struct.md4_ctx*, %struct.md4_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.md4_ctx, %struct.md4_ctx* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  ret i32 0
}

declare dso_local %struct.md4_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
