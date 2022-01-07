; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_clear_vmdq_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_clear_vmdq_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_clear_vmdq_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @hw_dbg(%struct.ixgbe_hw* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %22, i32* %4, align 4
  br label %111

23:                                               ; preds = %3
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @IXGBE_MPSAR_LO(i64 %25)
  %27 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %24, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @IXGBE_MPSAR_HI(i64 %29)
  %31 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %28, i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %110

38:                                               ; preds = %34, %23
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @IXGBE_CLEAR_VMDQ_ALL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @IXGBE_MPSAR_LO(i64 %47)
  %49 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %46, i32 %48, i64 0)
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @IXGBE_MPSAR_HI(i64 %55)
  %57 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %54, i32 %56, i64 0)
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %53, %50
  br label %90

59:                                               ; preds = %38
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %60, 32
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i64, i64* %7, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @IXGBE_MPSAR_LO(i64 %71)
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %72, i64 %73)
  br label %89

75:                                               ; preds = %59
  %76 = load i64, i64* %7, align 8
  %77 = sub nsw i64 %76, 32
  %78 = trunc i64 %77 to i32
  %79 = shl i32 1, %78
  %80 = xor i32 %79, -1
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = and i64 %82, %81
  store i64 %83, i64* %9, align 8
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @IXGBE_MPSAR_HI(i64 %85)
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %84, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %75, %62
  br label %90

90:                                               ; preds = %89, %58
  %91 = load i64, i64* %8, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32 (%struct.ixgbe_hw.0*, i64)*, i32 (%struct.ixgbe_hw.0*, i64)** %103, align 8
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %106 = bitcast %struct.ixgbe_hw* %105 to %struct.ixgbe_hw.0*
  %107 = load i64, i64* %6, align 8
  %108 = call i32 %104(%struct.ixgbe_hw.0* %106, i64 %107)
  br label %109

109:                                              ; preds = %99, %96, %93, %90
  br label %110

110:                                              ; preds = %109, %37
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_MPSAR_LO(i64) #1

declare dso_local i32 @IXGBE_MPSAR_HI(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
