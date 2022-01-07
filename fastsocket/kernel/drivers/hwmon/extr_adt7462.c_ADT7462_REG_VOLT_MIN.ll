; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_ADT7462_REG_VOLT_MIN.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_ADT7462_REG_VOLT_MIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7462_data = type { i32* }

@ADT7462_PIN7_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN22_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN21_INPUT = common dso_local global i32 0, align 4
@ADT7462_DIODE3_INPUT = common dso_local global i32 0, align 4
@ADT7462_DIODE1_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN13_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN8_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN26_VOLT_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN25_VOLT_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN28_SHIFT = common dso_local global i32 0, align 4
@ADT7462_PIN28_VOLT = common dso_local global i32 0, align 4
@ADT7462_VID_INPUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7462_data*, i32)* @ADT7462_REG_VOLT_MIN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ADT7462_REG_VOLT_MIN(%struct.adt7462_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adt7462_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adt7462_data* %0, %struct.adt7462_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %150 [
    i32 0, label %7
    i32 1, label %18
    i32 2, label %19
    i32 3, label %30
    i32 4, label %41
    i32 5, label %52
    i32 6, label %63
    i32 7, label %74
    i32 8, label %85
    i32 9, label %96
    i32 10, label %107
    i32 11, label %108
    i32 12, label %129
  ]

7:                                                ; preds = %2
  %8 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %9 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ADT7462_PIN7_INPUT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  store i32 109, i32* %3, align 4
  br label %153

17:                                               ; preds = %7
  br label %150

18:                                               ; preds = %2
  store i32 114, i32* %3, align 4
  br label %153

19:                                               ; preds = %2
  %20 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %21 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ADT7462_PIN22_INPUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 111, i32* %3, align 4
  br label %153

29:                                               ; preds = %19
  br label %150

30:                                               ; preds = %2
  %31 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %32 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ADT7462_PIN21_INPUT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 113, i32* %3, align 4
  br label %153

40:                                               ; preds = %30
  br label %150

41:                                               ; preds = %2
  %42 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %43 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ADT7462_DIODE3_INPUT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 71, i32* %3, align 4
  br label %153

51:                                               ; preds = %41
  br label %150

52:                                               ; preds = %2
  %53 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %54 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ADT7462_DIODE1_INPUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store i32 69, i32* %3, align 4
  br label %153

62:                                               ; preds = %52
  br label %150

63:                                               ; preds = %2
  %64 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %65 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ADT7462_PIN13_INPUT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  store i32 112, i32* %3, align 4
  br label %153

73:                                               ; preds = %63
  br label %150

74:                                               ; preds = %2
  %75 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %76 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ADT7462_PIN8_INPUT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  store i32 110, i32* %3, align 4
  br label %153

84:                                               ; preds = %74
  br label %150

85:                                               ; preds = %2
  %86 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %87 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ADT7462_PIN26_VOLT_INPUT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  store i32 117, i32* %3, align 4
  br label %153

95:                                               ; preds = %85
  br label %150

96:                                               ; preds = %2
  %97 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %98 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ADT7462_PIN25_VOLT_INPUT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store i32 116, i32* %3, align 4
  br label %153

106:                                              ; preds = %96
  br label %150

107:                                              ; preds = %2
  store i32 115, i32* %3, align 4
  br label %153

108:                                              ; preds = %2
  %109 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %110 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ADT7462_PIN28_SHIFT, align 4
  %115 = ashr i32 %113, %114
  %116 = load i32, i32* @ADT7462_PIN28_VOLT, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %108
  %119 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %120 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ADT7462_VID_INPUT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %118
  store i32 118, i32* %3, align 4
  br label %153

128:                                              ; preds = %118, %108
  br label %150

129:                                              ; preds = %2
  %130 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %131 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @ADT7462_PIN28_SHIFT, align 4
  %136 = ashr i32 %134, %135
  %137 = load i32, i32* @ADT7462_PIN28_VOLT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %129
  %140 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %141 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ADT7462_VID_INPUT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %139
  store i32 119, i32* %3, align 4
  br label %153

149:                                              ; preds = %139, %129
  br label %150

150:                                              ; preds = %2, %149, %128, %106, %95, %84, %73, %62, %51, %40, %29, %17
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %150, %148, %127, %107, %105, %94, %83, %72, %61, %50, %39, %28, %18, %16
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
