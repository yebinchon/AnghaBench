; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_mbx.c_ixgbe_check_for_rst_pf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_mbx.c_ixgbe_check_for_rst_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IXGBE_ERR_MBX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbe_check_for_rst_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_check_for_rst_pf(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 32
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = srem i32 %13, 32
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i64, i64* @IXGBE_ERR_MBX, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %30 [
    i32 129, label %20
    i32 128, label %25
  ]

20:                                               ; preds = %2
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @IXGBE_VFLRE(i32 %22)
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @IXGBE_VFLREC(i32 %27)
  %29 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %26, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %25, %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  store i64 0, i64* %8, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @IXGBE_VFLREC(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 1, %41
  %43 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i32 %40, i32 %42)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %37, %31
  %51 = load i64, i64* %8, align 8
  ret i64 %51
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFLRE(i32) #1

declare dso_local i32 @IXGBE_VFLREC(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
