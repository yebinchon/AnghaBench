; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_set_vfta_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_set_vfta_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32)* @ixgbe_set_vfta_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_vfta_82598(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 4095
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @IXGBE_ERR_PARAM, align 4
  store i32 %17, i32* %5, align 4
  br label %74

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 5
  %21 = and i32 %20, 127
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 3
  %24 = and i32 %23, 3
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 7
  %27 = shl i32 %26, 2
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @IXGBE_VFTAVIND(i32 %29, i32 %30)
  %32 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %28, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 15, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @IXGBE_VFTAVIND(i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %43, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 31
  store i32 %50, i32* %11, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @IXGBE_VFTA(i32 %52)
  %54 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %51, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %18
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %68

62:                                               ; preds = %18
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @IXGBE_VFTA(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %69, i32 %71, i32 %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %16
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTAVIND(i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
