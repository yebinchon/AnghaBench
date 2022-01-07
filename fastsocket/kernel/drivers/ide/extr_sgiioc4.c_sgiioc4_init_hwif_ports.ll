; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sgiioc4.c_sgiioc4_init_hwif_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sgiioc4.c_sgiioc4_init_hwif_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_hw = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_hw*, i64, i64, i64)* @sgiioc4_init_hwif_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgiioc4_init_hwif_ports(%struct.ide_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ide_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ide_hw* %0, %struct.ide_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %27, %4
  %13 = load i32, i32* %10, align 4
  %14 = icmp sle i32 %13, 7
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %16, %19
  %21 = load %struct.ide_hw*, %struct.ide_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 %20, i64* %26, align 8
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.ide_hw*, %struct.ide_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.ide_hw*, %struct.ide_hw** %5, align 8
  %37 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
