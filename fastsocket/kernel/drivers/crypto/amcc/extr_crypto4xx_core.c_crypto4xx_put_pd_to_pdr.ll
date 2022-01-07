; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_put_pd_to_pdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_put_pd_to_pdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pd_uinfo = type { i32 }

@PPC4XX_LAST_PD = common dso_local global i64 0, align 8
@PD_ENTRY_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*, i32)* @crypto4xx_put_pd_to_pdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_put_pd_to_pdr(%struct.crypto4xx_device* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pd_uinfo*, align 8
  %6 = alloca i64, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %8 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = add i64 %9, %12
  %14 = inttoptr i64 %13 to %struct.pd_uinfo*
  store %struct.pd_uinfo* %14, %struct.pd_uinfo** %5, align 8
  %15 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %22 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PPC4XX_LAST_PD, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %28 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %34

31:                                               ; preds = %2
  %32 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %33 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* @PD_ENTRY_FREE, align 4
  %36 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %37 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %39 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
