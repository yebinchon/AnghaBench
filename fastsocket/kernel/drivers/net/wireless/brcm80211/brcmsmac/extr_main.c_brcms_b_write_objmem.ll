; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_write_objmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_write_objmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@objdata = common dso_local global i32 0, align 4
@objaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32, i32, i32)* @brcms_b_write_objmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_write_objmem(%struct.brcms_hardware* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_hardware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcma_device*, align 8
  %10 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 0
  %13 = load %struct.bcma_device*, %struct.bcma_device** %12, align 8
  store %struct.bcma_device* %13, %struct.bcma_device** %9, align 8
  %14 = load i32, i32* @objdata, align 4
  %15 = call i32 @D11REGOFFS(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  %17 = load i32, i32* @objaddr, align 4
  %18 = call i32 @D11REGOFFS(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 2
  %22 = or i32 %19, %21
  %23 = call i32 @bcma_write32(%struct.bcma_device* %16, i32 %18, i32 %22)
  %24 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  %25 = load i32, i32* @objaddr, align 4
  %26 = call i32 @D11REGOFFS(i32 %25)
  %27 = call i32 @bcma_read32(%struct.bcma_device* %24, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %4
  %35 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bcma_wflush16(%struct.bcma_device* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @bcma_wflush16(%struct.bcma_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
