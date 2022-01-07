; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_mac_anti_spoofing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_mac_anti_spoofing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_SPOOF_MACAS_MASK = common dso_local global i32 0, align 4
@IXGBE_PFVFSPOOF_REG_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_mac_anti_spoofing(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 3
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = srem i32 %13, 8
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %66

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @IXGBE_SPOOF_MACAS_MASK, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %22
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @IXGBE_PFVFSPOOF(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %33, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @IXGBE_PFVFSPOOF(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %63, %41
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IXGBE_PFVFSPOOF_REG_COUNT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @IXGBE_PFVFSPOOF(i32 %60)
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %59, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %54

66:                                               ; preds = %21, %54
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_PFVFSPOOF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
