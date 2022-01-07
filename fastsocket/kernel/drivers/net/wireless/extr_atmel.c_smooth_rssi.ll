; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_smooth_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_smooth_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, i32)* @smooth_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smooth_rssi(%struct.atmel_private* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  store i32 42, i32* %6, align 4
  %12 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 128, label %15
  ]

15:                                               ; preds = %2
  store i32 63, i32* %6, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 100
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = srem i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  %31 = sdiv i32 %30, 2
  %32 = add nsw i32 %31, 1
  %33 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %46

37:                                               ; preds = %17
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = sdiv i32 %40, 2
  %42 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %27
  %47 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %48 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %57 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %55
  store i32 %61, i32* %59, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
