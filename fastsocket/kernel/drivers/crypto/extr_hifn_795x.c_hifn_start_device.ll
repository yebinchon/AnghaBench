; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_start_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_start_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*)* @hifn_start_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_start_device(%struct.hifn_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hifn_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %3, align 8
  %5 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %6 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %8 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %10 = call i32 @hifn_reset_dma(%struct.hifn_device* %9, i32 1)
  %11 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %12 = call i32 @hifn_enable_crypto(%struct.hifn_device* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %19 = call i32 @hifn_reset_puc(%struct.hifn_device* %18)
  %20 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %21 = call i32 @hifn_init_dma(%struct.hifn_device* %20)
  %22 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %23 = call i32 @hifn_init_registers(%struct.hifn_device* %22)
  %24 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %25 = call i32 @hifn_init_pubrng(%struct.hifn_device* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @hifn_reset_dma(%struct.hifn_device*, i32) #1

declare dso_local i32 @hifn_enable_crypto(%struct.hifn_device*) #1

declare dso_local i32 @hifn_reset_puc(%struct.hifn_device*) #1

declare dso_local i32 @hifn_init_dma(%struct.hifn_device*) #1

declare dso_local i32 @hifn_init_registers(%struct.hifn_device*) #1

declare dso_local i32 @hifn_init_pubrng(%struct.hifn_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
