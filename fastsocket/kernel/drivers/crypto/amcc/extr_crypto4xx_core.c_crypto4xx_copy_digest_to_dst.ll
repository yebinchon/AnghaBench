; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_copy_digest_to_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_copy_digest_to_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_uinfo = type { i64, i64 }
%struct.crypto4xx_ctx = type { i64 }
%struct.dynamic_sa_ctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sa_state_record = type { i32 }

@SA_HASH_ALG_SHA1 = common dso_local global i64 0, align 8
@SA_HASH_ALG_SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pd_uinfo*, %struct.crypto4xx_ctx*)* @crypto4xx_copy_digest_to_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_copy_digest_to_dst(%struct.pd_uinfo* %0, %struct.crypto4xx_ctx* %1) #0 {
  %3 = alloca %struct.pd_uinfo*, align 8
  %4 = alloca %struct.crypto4xx_ctx*, align 8
  %5 = alloca %struct.dynamic_sa_ctl*, align 8
  %6 = alloca %struct.sa_state_record*, align 8
  store %struct.pd_uinfo* %0, %struct.pd_uinfo** %3, align 8
  store %struct.crypto4xx_ctx* %1, %struct.crypto4xx_ctx** %4, align 8
  %7 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.dynamic_sa_ctl*
  store %struct.dynamic_sa_ctl* %10, %struct.dynamic_sa_ctl** %5, align 8
  %11 = load %struct.pd_uinfo*, %struct.pd_uinfo** %3, align 8
  %12 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.sa_state_record*
  store %struct.sa_state_record* %14, %struct.sa_state_record** %6, align 8
  %15 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %5, align 8
  %16 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SA_HASH_ALG_SHA1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.pd_uinfo*, %struct.pd_uinfo** %3, align 8
  %24 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.sa_state_record*, %struct.sa_state_record** %6, align 8
  %28 = getelementptr inbounds %struct.sa_state_record, %struct.sa_state_record* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SA_HASH_ALG_SHA1_DIGEST_SIZE, align 4
  %31 = call i32 @memcpy(i8* %26, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %2
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
