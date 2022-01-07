; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_sa.c_get_dynamic_sa_offset_key_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_sa.c_get_dynamic_sa_offset_key_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_ctx = type { i64, i64, i64 }
%union.dynamic_sa_contents = type { i32 }
%struct.dynamic_sa_ctl = type { i32 }

@DIR_INBOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dynamic_sa_offset_key_field(%struct.crypto4xx_ctx* %0) #0 {
  %2 = alloca %struct.crypto4xx_ctx*, align 8
  %3 = alloca %union.dynamic_sa_contents, align 4
  store %struct.crypto4xx_ctx* %0, %struct.crypto4xx_ctx** %2, align 8
  %4 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DIR_INBOUND, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dynamic_sa_ctl*
  %14 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %union.dynamic_sa_contents* %3 to i32*
  store i32 %15, i32* %16, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dynamic_sa_ctl*
  %22 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.dynamic_sa_contents* %3 to i32*
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %17, %9
  ret i32 4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
