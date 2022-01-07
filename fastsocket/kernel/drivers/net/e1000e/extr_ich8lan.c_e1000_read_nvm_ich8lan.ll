; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_read_nvm_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_read_nvm_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.e1000_nvm_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"NVM read error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_read_nvm_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_read_nvm_ich8lan(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.e1000_nvm_info*, align 8
  %10 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  store %struct.e1000_nvm_info* %17, %struct.e1000_nvm_info** %9, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %20, %struct.e1000_dev_spec_ich8lan** %10, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %23 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %29 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub nsw i64 %30, %31
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %26, %4
  %38 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @E1000_ERR_NVM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %122

41:                                               ; preds = %34
  %42 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %43 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %44, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %47 = bitcast %struct.e1000_hw* %46 to %struct.e1000_hw.1*
  %48 = call i32 %45(%struct.e1000_hw.1* %47)
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %50 = call i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %49, i64* %13)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %55

55:                                               ; preds = %53, %41
  %56 = load i64, i64* %13, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %60 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  br label %63

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i64 [ %61, %58 ], [ 0, %62 ]
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %14, align 8
  br label %68

68:                                               ; preds = %111, %63
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %114

72:                                               ; preds = %68
  %73 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %74 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %14, align 8
  %78 = add nsw i64 %76, %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %72
  %84 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %10, align 8
  %85 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %14, align 8
  %89 = add nsw i64 %87, %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %92, i64* %95, align 8
  br label %110

96:                                               ; preds = %72
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %14, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @e1000_read_flash_word_ich8lan(%struct.e1000_hw* %97, i64 %100, i64* %15)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %114

105:                                              ; preds = %96
  %106 = load i64, i64* %15, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %83
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %14, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %14, align 8
  br label %68

114:                                              ; preds = %104, %68
  %115 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %9, align 8
  %116 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %117, align 8
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %120 = bitcast %struct.e1000_hw* %119 to %struct.e1000_hw.0*
  %121 = call i32 %118(%struct.e1000_hw.0* %120)
  br label %122

122:                                              ; preds = %114, %37
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %12, align 4
  ret i32 %129
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @e1000_read_flash_word_ich8lan(%struct.e1000_hw*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
