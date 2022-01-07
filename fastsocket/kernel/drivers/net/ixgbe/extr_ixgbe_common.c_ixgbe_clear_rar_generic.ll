; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_clear_rar_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_clear_rar_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_clear_rar_generic(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @hw_dbg(%struct.ixgbe_hw* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @IXGBE_RAH(i64 %22)
  %24 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @IXGBE_RAH_AV, align 4
  %26 = or i32 65535, %25
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @IXGBE_RAL(i64 %32)
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %31, i32 %33, i64 0)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @IXGBE_RAH(i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %37, i64 %38)
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ixgbe_hw.0*, i64, i32)*, i32 (%struct.ixgbe_hw.0*, i64, i32)** %43, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = bitcast %struct.ixgbe_hw* %45 to %struct.ixgbe_hw.0*
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* @IXGBE_CLEAR_VMDQ_ALL, align 4
  %49 = call i32 %44(%struct.ixgbe_hw.0* %46, i64 %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %20, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RAH(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_RAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
