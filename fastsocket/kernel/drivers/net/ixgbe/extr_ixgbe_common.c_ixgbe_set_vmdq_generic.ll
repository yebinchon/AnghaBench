; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_vmdq_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_set_vmdq_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_set_vmdq_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @hw_dbg(%struct.ixgbe_hw* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %23, 32
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @IXGBE_MPSAR_LO(i64 %27)
  %29 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %26, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @IXGBE_MPSAR_LO(i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %38, i64 %39)
  br label %58

41:                                               ; preds = %22
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @IXGBE_MPSAR_HI(i64 %43)
  %45 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %42, i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub nsw i64 %46, 32
  %48 = trunc i64 %47 to i32
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %8, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @IXGBE_MPSAR_HI(i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %53, i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %41, %25
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MPSAR_LO(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_MPSAR_HI(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
