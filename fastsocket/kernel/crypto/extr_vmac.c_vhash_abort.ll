; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vhash_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vhash_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmac_ctx = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmac_ctx*)* @vhash_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhash_abort(%struct.vmac_ctx* %0) #0 {
  %2 = alloca %struct.vmac_ctx*, align 8
  store %struct.vmac_ctx* %0, %struct.vmac_ctx** %2, align 8
  %3 = load %struct.vmac_ctx*, %struct.vmac_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vmac_ctx*, %struct.vmac_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.vmac_ctx*, %struct.vmac_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vmac_ctx*, %struct.vmac_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.vmac_ctx*, %struct.vmac_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.vmac_ctx, %struct.vmac_ctx* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
