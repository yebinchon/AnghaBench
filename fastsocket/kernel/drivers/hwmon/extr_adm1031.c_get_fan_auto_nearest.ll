; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_get_fan_auto_nearest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_get_fan_auto_nearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1031_data = type { i64*** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm1031_data*, i32, i64, i64, i64*)* @get_fan_auto_nearest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fan_auto_nearest(%struct.adm1031_data* %0, i32 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adm1031_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.adm1031_data* %0, %struct.adm1031_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %16 = load %struct.adm1031_data*, %struct.adm1031_data** %7, align 8
  %17 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %16, i32 0, i32 0
  %18 = load i64***, i64**** %17, align 8
  %19 = load i64**, i64*** %18, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @FAN_CHAN_FROM_REG(i64 %20)
  %22 = getelementptr inbounds i64*, i64** %19, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i64*, i64** %11, align 8
  store i64 0, i64* %34, align 8
  store i32 0, i32* %6, align 4
  br label %118

35:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %96, %35
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %99

39:                                               ; preds = %36
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.adm1031_data*, %struct.adm1031_data** %7, align 8
  %42 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %41, i32 0, i32 0
  %43 = load i64***, i64**** %42, align 8
  %44 = load i64**, i64*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %40, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %39
  %55 = load %struct.adm1031_data*, %struct.adm1031_data** %7, align 8
  %56 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %55, i32 0, i32 0
  %57 = load i64***, i64**** %56, align 8
  %58 = load i64**, i64*** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 0, i32 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %62, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %15, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %14, align 4
  br label %99

74:                                               ; preds = %54, %39
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.adm1031_data*, %struct.adm1031_data** %7, align 8
  %77 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %76, i32 0, i32 0
  %78 = load i64***, i64**** %77, align 8
  %79 = load i64**, i64*** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %75, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %92, %89, %74
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %36

99:                                               ; preds = %72, %36
  %100 = load i32, i32* %14, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %11, align 8
  store i64 %104, i64* %105, align 8
  br label %117

106:                                              ; preds = %99
  %107 = load i32, i32* %13, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %11, align 8
  store i64 %111, i64* %112, align 8
  br label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %118

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %102
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %113, %33
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i64 @FAN_CHAN_FROM_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
