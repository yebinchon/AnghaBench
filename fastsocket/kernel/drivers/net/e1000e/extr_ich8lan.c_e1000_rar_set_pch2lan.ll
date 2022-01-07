; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_rar_set_pch2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_rar_set_pch2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_RAH_AV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"SHRA[%d] might be locked by ME - FWSM=0x%8.8x\0A\00", align 1
@FWSM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to write receive address at index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i64*, i32)* @e1000_rar_set_pch2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_rar_set_pch2lan(%struct.e1000_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 8
  %19 = or i32 %13, %18
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 16
  %25 = or i32 %19, %24
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 3
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 24
  %31 = or i32 %25, %30
  store i32 %31, i32* %7, align 4
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 4
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64*, i64** %5, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 5
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 8
  %41 = or i32 %35, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %3
  %48 = load i32, i32* @E1000_RAH_AV, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @RAL(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ew32(i32 %56, i32 %57)
  %59 = call i32 (...) @e1e_flush()
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @RAH(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ew32(i32 %61, i32 %62)
  %64 = call i32 (...) @e1e_flush()
  br label %117

65:                                               ; preds = %51
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %113

72:                                               ; preds = %65
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %74 = call i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %73)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %114

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @SHRAL(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ew32(i32 %81, i32 %82)
  %84 = call i32 (...) @e1e_flush()
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @SHRAH(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ew32(i32 %87, i32 %88)
  %90 = call i32 (...) @e1e_flush()
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %92 = call i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw* %91)
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @SHRAL(i32 %94)
  %96 = call i32 @er32(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %78
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @SHRAH(i32 %101)
  %103 = call i32 @er32(i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %117

107:                                              ; preds = %99, %78
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* @FWSM, align 4
  %111 = call i32 @er32(i32 %110)
  %112 = call i32 (i8*, i32, ...) @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %107, %65
  br label %114

114:                                              ; preds = %113, %77
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i8*, i32, ...) @e_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %106, %54
  ret void
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @RAL(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @RAH(i32) #1

declare dso_local i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @SHRAL(i32) #1

declare dso_local i32 @SHRAH(i32) #1

declare dso_local i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
