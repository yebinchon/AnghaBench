; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_rar_set_pch_lpt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_rar_set_pch_lpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_RAH_AV = common dso_local global i32 0, align 4
@FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_WLOCK_MAC_MASK = common dso_local global i32 0, align 4
@E1000_FWSM_WLOCK_MAC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to write receive address at index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i64*, i32)* @e1000_rar_set_pch_lpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_rar_set_pch_lpt(%struct.e1000_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %14, %19
  %21 = load i64*, i64** %5, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 16
  %26 = or i32 %20, %25
  %27 = load i64*, i64** %5, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 3
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 24
  %32 = or i32 %26, %31
  store i32 %32, i32* %7, align 4
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 4
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 8
  %42 = or i32 %36, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %3
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %3
  %49 = load i32, i32* @E1000_RAH_AV, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @RAL(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ew32(i32 %57, i32 %58)
  %60 = call i32 (...) @e1e_flush()
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @RAH(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ew32(i32 %62, i32 %63)
  %65 = call i32 (...) @e1e_flush()
  br label %132

66:                                               ; preds = %52
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %128

73:                                               ; preds = %66
  %74 = load i32, i32* @FWSM, align 4
  %75 = call i32 @er32(i32 %74)
  %76 = load i32, i32* @E1000_FWSM_WLOCK_MAC_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @E1000_FWSM_WLOCK_MAC_SHIFT, align 4
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %129

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %87, %84
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %93 = call i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %129

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @SHRAL_PCH_LPT(i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @ew32(i32 %100, i32 %101)
  %103 = call i32 (...) @e1e_flush()
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @SHRAH_PCH_LPT(i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @ew32(i32 %106, i32 %107)
  %109 = call i32 (...) @e1e_flush()
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %111 = call i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw* %110)
  %112 = load i32, i32* %6, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @SHRAL_PCH_LPT(i32 %113)
  %115 = call i32 @er32(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %97
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @SHRAH_PCH_LPT(i32 %120)
  %122 = call i32 @er32(i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %132

126:                                              ; preds = %118, %97
  br label %127

127:                                              ; preds = %126, %87
  br label %128

128:                                              ; preds = %127, %66
  br label %129

129:                                              ; preds = %128, %96, %83
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @e_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %125, %55
  ret void
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @RAL(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @RAH(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @SHRAL_PCH_LPT(i32) #1

declare dso_local i32 @SHRAH_PCH_LPT(i32) #1

declare dso_local i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
