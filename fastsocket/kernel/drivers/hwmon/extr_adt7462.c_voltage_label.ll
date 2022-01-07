; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_voltage_label.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_voltage_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7462_data = type { i32* }

@ADT7462_PIN7_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"+12V1\00", align 1
@ADT7462_PIN23 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Vccp1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"+2.5V\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"+1.8V\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"+1.5V\00", align 1
@ADT7462_PIN22_INPUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"+12V3\00", align 1
@ADT7462_PIN21_INPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"+5V\00", align 1
@ADT7462_DIODE3_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN19_INPUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"+0.9V\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"+1.25V\00", align 1
@ADT7462_DIODE1_INPUT = common dso_local global i32 0, align 4
@ADT7462_PIN13_INPUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"+3.3V\00", align 1
@ADT7462_PIN8_INPUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"+12V2\00", align 1
@ADT7462_PIN26 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"Vbatt\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"FSB_Vtt\00", align 1
@ADT7462_PIN25 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"+1.2V1\00", align 1
@ADT7462_PIN24 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"Vccp2\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"+1.5\00", align 1
@ADT7462_PIN28_SHIFT = common dso_local global i32 0, align 4
@ADT7462_PIN28_VOLT = common dso_local global i32 0, align 4
@ADT7462_VID_INPUT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"+1.5V ICH\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"+1.5V 3GPIO\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.adt7462_data*, i32)* @voltage_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @voltage_label(%struct.adt7462_data* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adt7462_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adt7462_data* %0, %struct.adt7462_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %194 [
    i32 0, label %7
    i32 1, label %18
    i32 2, label %31
    i32 3, label %42
    i32 4, label %53
    i32 5, label %74
    i32 6, label %95
    i32 7, label %106
    i32 8, label %117
    i32 9, label %128
    i32 10, label %139
    i32 11, label %152
    i32 12, label %173
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
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %195

17:                                               ; preds = %7
  br label %194

18:                                               ; preds = %2
  %19 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %20 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ADT7462_PIN23, align 4
  %25 = call i32 @MASK_AND_SHIFT(i32 %23, i32 %24)
  switch i32 %25, label %30 [
    i32 0, label %26
    i32 1, label %27
    i32 2, label %28
    i32 3, label %29
  ]

26:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %195

27:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %195

28:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %195

29:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %195

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %2, %30
  %32 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %33 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ADT7462_PIN22_INPUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %195

41:                                               ; preds = %31
  br label %194

42:                                               ; preds = %2
  %43 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %44 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ADT7462_PIN21_INPUT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %195

52:                                               ; preds = %42
  br label %194

53:                                               ; preds = %2
  %54 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %55 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ADT7462_DIODE3_INPUT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %53
  %63 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %64 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ADT7462_PIN19_INPUT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %195

72:                                               ; preds = %62
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %195

73:                                               ; preds = %53
  br label %194

74:                                               ; preds = %2
  %75 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %76 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ADT7462_DIODE1_INPUT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %74
  %84 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %85 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ADT7462_PIN19_INPUT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %195

93:                                               ; preds = %83
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %195

94:                                               ; preds = %74
  br label %194

95:                                               ; preds = %2
  %96 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %97 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ADT7462_PIN13_INPUT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %195

105:                                              ; preds = %95
  br label %194

106:                                              ; preds = %2
  %107 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %108 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ADT7462_PIN8_INPUT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %195

116:                                              ; preds = %106
  br label %194

117:                                              ; preds = %2
  %118 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %119 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ADT7462_PIN26, align 4
  %124 = call i32 @MASK_AND_SHIFT(i32 %122, i32 %123)
  switch i32 %124, label %127 [
    i32 0, label %125
    i32 1, label %126
  ]

125:                                              ; preds = %117
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %195

126:                                              ; preds = %117
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %195

127:                                              ; preds = %117
  br label %194

128:                                              ; preds = %2
  %129 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %130 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ADT7462_PIN25, align 4
  %135 = call i32 @MASK_AND_SHIFT(i32 %133, i32 %134)
  switch i32 %135, label %138 [
    i32 0, label %136
    i32 1, label %137
  ]

136:                                              ; preds = %128
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %195

137:                                              ; preds = %128
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %195

138:                                              ; preds = %128
  br label %194

139:                                              ; preds = %2
  %140 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %141 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ADT7462_PIN24, align 4
  %146 = call i32 @MASK_AND_SHIFT(i32 %144, i32 %145)
  switch i32 %146, label %151 [
    i32 0, label %147
    i32 1, label %148
    i32 2, label %149
    i32 3, label %150
  ]

147:                                              ; preds = %139
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %195

148:                                              ; preds = %139
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %195

149:                                              ; preds = %139
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %195

150:                                              ; preds = %139
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %195

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %2, %151
  %153 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %154 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ADT7462_PIN28_SHIFT, align 4
  %159 = ashr i32 %157, %158
  %160 = load i32, i32* @ADT7462_PIN28_VOLT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %152
  %163 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %164 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @ADT7462_VID_INPUT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %162
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %195

172:                                              ; preds = %162, %152
  br label %194

173:                                              ; preds = %2
  %174 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %175 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ADT7462_PIN28_SHIFT, align 4
  %180 = ashr i32 %178, %179
  %181 = load i32, i32* @ADT7462_PIN28_VOLT, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %173
  %184 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %185 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @ADT7462_VID_INPUT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %183
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %195

193:                                              ; preds = %183, %173
  br label %194

194:                                              ; preds = %2, %193, %172, %138, %127, %116, %105, %94, %73, %52, %41, %17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %195

195:                                              ; preds = %194, %192, %171, %150, %149, %148, %147, %137, %136, %126, %125, %115, %104, %93, %92, %72, %71, %51, %40, %29, %28, %27, %26, %16
  %196 = load i8*, i8** %3, align 8
  ret i8* %196
}

declare dso_local i32 @MASK_AND_SHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
