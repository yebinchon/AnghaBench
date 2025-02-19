; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-h8300.c_hw_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-h8300.c_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_hw = type { i64, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }

@CONFIG_H8300_IDE_BASE = common dso_local global i64 0, align 8
@H8300_IDE_GAP = common dso_local global i32 0, align 4
@CONFIG_H8300_IDE_ALT = common dso_local global i32 0, align 4
@EXT_IRQ0 = common dso_local global i64 0, align 8
@CONFIG_H8300_IDE_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_hw*)* @hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_setup(%struct.ide_hw* %0) #0 {
  %2 = alloca %struct.ide_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ide_hw* %0, %struct.ide_hw** %2, align 8
  %4 = load %struct.ide_hw*, %struct.ide_hw** %2, align 8
  %5 = call i32 @memset(%struct.ide_hw* %4, i32 0, i32 24)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 7
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i64, i64* @CONFIG_H8300_IDE_BASE, align 8
  %11 = load i32, i32* @H8300_IDE_GAP, align 4
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %10, %14
  %16 = load %struct.ide_hw*, %struct.ide_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 %15, i64* %21, align 8
  br label %22

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load i32, i32* @CONFIG_H8300_IDE_ALT, align 4
  %27 = load %struct.ide_hw*, %struct.ide_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i64, i64* @EXT_IRQ0, align 8
  %31 = load i64, i64* @CONFIG_H8300_IDE_IRQ, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.ide_hw*, %struct.ide_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ide_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
