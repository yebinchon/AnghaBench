; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_alg_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_alg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_crypto_alg = type { %struct.device*, i32, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i64, i32, i32, i32 }
%struct.device = type { i32 }
%struct.talitos_alg_template = type { i32, %struct.crypto_alg }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@talitos_cra_init = common dso_local global i32 0, align 4
@TALITOS_CRA_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_crypto_alg* (%struct.device*, %struct.talitos_alg_template*)* @talitos_alg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_crypto_alg* @talitos_alg_alloc(%struct.device* %0, %struct.talitos_alg_template* %1) #0 {
  %3 = alloca %struct.talitos_crypto_alg*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.talitos_alg_template*, align 8
  %6 = alloca %struct.talitos_crypto_alg*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.talitos_alg_template* %1, %struct.talitos_alg_template** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.talitos_crypto_alg* @kzalloc(i32 48, i32 %8)
  store %struct.talitos_crypto_alg* %9, %struct.talitos_crypto_alg** %6, align 8
  %10 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %6, align 8
  %11 = icmp ne %struct.talitos_crypto_alg* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.talitos_crypto_alg* @ERR_PTR(i32 %14)
  store %struct.talitos_crypto_alg* %15, %struct.talitos_crypto_alg** %3, align 8
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %6, align 8
  %18 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %17, i32 0, i32 2
  store %struct.crypto_alg* %18, %struct.crypto_alg** %7, align 8
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %20 = load %struct.talitos_alg_template*, %struct.talitos_alg_template** %5, align 8
  %21 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %20, i32 0, i32 1
  %22 = bitcast %struct.crypto_alg* %19 to i8*
  %23 = bitcast %struct.crypto_alg* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 32, i1 false)
  %24 = load i32, i32* @THIS_MODULE, align 4
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %26 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @talitos_cra_init, align 4
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @TALITOS_CRA_PRIORITY, align 4
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %32 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %34 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %36 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load %struct.talitos_alg_template*, %struct.talitos_alg_template** %5, align 8
  %38 = getelementptr inbounds %struct.talitos_alg_template, %struct.talitos_alg_template* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %6, align 8
  %41 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %6, align 8
  %44 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %43, i32 0, i32 0
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %6, align 8
  store %struct.talitos_crypto_alg* %45, %struct.talitos_crypto_alg** %3, align 8
  br label %46

46:                                               ; preds = %16, %12
  %47 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %3, align 8
  ret %struct.talitos_crypto_alg* %47
}

declare dso_local %struct.talitos_crypto_alg* @kzalloc(i32, i32) #1

declare dso_local %struct.talitos_crypto_alg* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
