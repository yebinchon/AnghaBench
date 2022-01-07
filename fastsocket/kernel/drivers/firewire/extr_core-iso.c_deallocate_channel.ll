; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_deallocate_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_deallocate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_CHANNELS_AVAILABLE_HI = common dso_local global i64 0, align 8
@CSR_CHANNELS_AVAILABLE_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32, i32, i32, i32*)* @deallocate_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deallocate_channel(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 1, %16
  br label %22

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %19, 32
  %21 = shl i32 1, %20
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %17, %15 ], [ %21, %18 ]
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %28 = load i64, i64* @CSR_CHANNELS_AVAILABLE_HI, align 8
  %29 = add nsw i64 %27, %28
  br label %34

30:                                               ; preds = %22
  %31 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %32 = load i64, i64* @CSR_CHANNELS_AVAILABLE_LO, align 8
  %33 = add nsw i64 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  store i64 %35, i64* %12, align 8
  %36 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i64, i64* %12, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @manage_channel(%struct.fw_card* %36, i32 %37, i32 %38, i32 %39, i64 %40, i32 0, i32* %41)
  ret void
}

declare dso_local i32 @manage_channel(%struct.fw_card*, i32, i32, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
