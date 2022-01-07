; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vmac_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.vmac_ctx_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @vmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmac_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca %struct.vmac_ctx_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %10 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %9, i32 0, i32 0
  %11 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  store %struct.crypto_shash* %11, %struct.crypto_shash** %5, align 8
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %13 = call %struct.vmac_ctx_t* @crypto_shash_ctx(%struct.crypto_shash* %12)
  store %struct.vmac_ctx_t* %13, %struct.vmac_ctx_t** %6, align 8
  %14 = bitcast [16 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 64, i1 false)
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %16 = load %struct.vmac_ctx_t*, %struct.vmac_ctx_t** %6, align 8
  %17 = call i32 @vmac(i32* null, i32 0, i32* %15, i32* null, %struct.vmac_ctx_t* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @memcpy(i32* %18, i32* %7, i32 4)
  %20 = call i32 @memset(i32* %7, i32 0, i32 4)
  %21 = load %struct.vmac_ctx_t*, %struct.vmac_ctx_t** %6, align 8
  %22 = getelementptr inbounds %struct.vmac_ctx_t, %struct.vmac_ctx_t* %21, i32 0, i32 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  ret i32 0
}

declare dso_local %struct.vmac_ctx_t* @crypto_shash_ctx(%struct.crypto_shash*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vmac(i32*, i32, i32*, i32*, %struct.vmac_ctx_t*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
