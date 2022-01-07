; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_bh_tasklet_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_bh_tasklet_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.crypto4xx_core_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.ce_pd*, %struct.pd_uinfo* }
%struct.ce_pd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.pd_uinfo = type { i64 }

@PD_ENTRY_INUSE = common dso_local global i64 0, align 8
@PD_ENTRY_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @crypto4xx_bh_tasklet_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_bh_tasklet_cb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.crypto4xx_core_device*, align 8
  %5 = alloca %struct.pd_uinfo*, align 8
  %6 = alloca %struct.ce_pd*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.device*
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.crypto4xx_core_device* @dev_get_drvdata(%struct.device* %10)
  store %struct.crypto4xx_core_device* %11, %struct.crypto4xx_core_device** %4, align 8
  br label %12

12:                                               ; preds = %87, %1
  %13 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %14 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %19 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %12
  %25 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %26 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %32 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load %struct.pd_uinfo*, %struct.pd_uinfo** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %35, i64 %38
  store %struct.pd_uinfo* %39, %struct.pd_uinfo** %5, align 8
  %40 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %41 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.ce_pd*, %struct.ce_pd** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 16, %46
  %48 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %44, i64 %47
  store %struct.ce_pd* %48, %struct.ce_pd** %6, align 8
  %49 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %50 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PD_ENTRY_INUSE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %24
  %55 = load %struct.ce_pd*, %struct.ce_pd** %6, align 8
  %56 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load %struct.ce_pd*, %struct.ce_pd** %6, align 8
  %63 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %61
  %69 = load %struct.ce_pd*, %struct.ce_pd** %6, align 8
  %70 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %74 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @crypto4xx_pd_done(%struct.TYPE_7__* %75, i32 %76)
  %78 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %79 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @crypto4xx_put_pd_to_pdr(%struct.TYPE_7__* %80, i32 %81)
  %83 = load i64, i64* @PD_ENTRY_FREE, align 8
  %84 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %85 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %87

86:                                               ; preds = %61, %54, %24
  br label %88

87:                                               ; preds = %68
  br label %12

88:                                               ; preds = %86, %12
  ret void
}

declare dso_local %struct.crypto4xx_core_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @crypto4xx_pd_done(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @crypto4xx_put_pd_to_pdr(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
