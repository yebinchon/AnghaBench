; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_put_gd_to_gdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_put_gd_to_gdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PPC4XX_LAST_GD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*)* @crypto4xx_put_gd_to_gdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_put_gd_to_gdr(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i64, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  %5 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %6 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %12 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %15 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %20 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  store i32 0, i32* %2, align 4
  br label %46

25:                                               ; preds = %1
  %26 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %27 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PPC4XX_LAST_GD, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %33 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  br label %39

36:                                               ; preds = %25
  %37 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %38 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %41 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
