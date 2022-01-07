; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_sa.c_get_dynamic_sa_offset_iv_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_sa.c_get_dynamic_sa_offset_iv_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_ctx = type { i64, i64, i64 }
%union.dynamic_sa_contents = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dynamic_sa_ctl = type { i32 }

@DIR_INBOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dynamic_sa_offset_iv_field(%struct.crypto4xx_ctx* %0) #0 {
  %2 = alloca %struct.crypto4xx_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.dynamic_sa_contents, align 4
  store %struct.crypto4xx_ctx* %0, %struct.crypto4xx_ctx** %2, align 8
  %5 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DIR_INBOUND, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.dynamic_sa_ctl*
  %15 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %union.dynamic_sa_contents* %4 to i32*
  store i32 %16, i32* %17, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dynamic_sa_ctl*
  %23 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = bitcast %union.dynamic_sa_contents* %4 to i32*
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %10
  %27 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = bitcast %union.dynamic_sa_contents* %4 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = mul nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = add i64 4, %68
  %70 = trunc i64 %69 to i32
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
