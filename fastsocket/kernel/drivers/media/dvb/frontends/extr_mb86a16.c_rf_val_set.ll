; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_rf_val_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_rf_val_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RF Setup - I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*, i32, i32, i8)* @rf_val_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rf_val_set(%struct.mb86a16_state* %0, i32 %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mb86a16_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca [5 x i8], align 1
  %15 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 37750
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i8 1, i8* %10, align 1
  br label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 18875
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8 2, i8* %10, align 1
  br label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 5500
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8 3, i8* %10, align 1
  br label %28

27:                                               ; preds = %23
  store i8 4, i8* %10, align 1
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 30500
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8 3, i8* %11, align 1
  br label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 9375
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8 1, i8* %11, align 1
  br label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 4625
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8 0, i8* %11, align 1
  br label %43

42:                                               ; preds = %38
  store i8 2, i8* %11, align 1
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 1060
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i8 0, i8* %12, align 1
  br label %90

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 1175
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i8 1, i8* %12, align 1
  br label %89

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 1305
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8 2, i8* %12, align 1
  br label %88

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 1435
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i8 3, i8* %12, align 1
  br label %87

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 1570
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i8 4, i8* %12, align 1
  br label %86

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 1715
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i8 5, i8* %12, align 1
  br label %85

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 1845
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i8 6, i8* %12, align 1
  br label %84

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 1980
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i8 7, i8* %12, align 1
  br label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 2080
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8 8, i8* %12, align 1
  br label %82

81:                                               ; preds = %77
  store i8 9, i8* %12, align 1
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %76
  br label %84

84:                                               ; preds = %83, %72
  br label %85

85:                                               ; preds = %84, %68
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87, %56
  br label %89

89:                                               ; preds = %88, %52
  br label %90

90:                                               ; preds = %89, %48
  %91 = load i32, i32* %7, align 4
  %92 = load i8, i8* %9, align 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 1, %93
  %95 = mul nsw i32 %91, %94
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %13, align 4
  %97 = load i8, i8* %10, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 3
  %100 = or i32 1, %99
  %101 = load i8, i8* %11, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 1
  %104 = or i32 %100, %103
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  store i8 %105, i8* %106, align 1
  %107 = load i8, i8* %9, align 1
  %108 = zext i8 %107 to i32
  %109 = shl i32 %108, 5
  %110 = load i32, i32* %13, align 4
  %111 = and i32 %110, 126976
  %112 = ashr i32 %111, 12
  %113 = or i32 %109, %112
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 1
  store i8 %114, i8* %115, align 1
  %116 = load i32, i32* %13, align 4
  %117 = and i32 %116, 4080
  %118 = ashr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 2
  store i8 %119, i8* %120, align 1
  %121 = load i32, i32* %13, align 4
  %122 = and i32 %121, 15
  %123 = shl i32 %122, 4
  %124 = load i8, i8* %12, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %123, %125
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 3
  store i8 %127, i8* %128, align 1
  %129 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %130 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = call i64 @mb86a16_write(%struct.mb86a16_state* %129, i32 33, i32 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %90
  store i32 0, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %90
  %137 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %138 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = call i64 @mb86a16_write(%struct.mb86a16_state* %137, i32 34, i32 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %143, %136
  %145 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %146 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 2
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = call i64 @mb86a16_write(%struct.mb86a16_state* %145, i32 35, i32 %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i32 0, i32* %15, align 4
  br label %152

152:                                              ; preds = %151, %144
  %153 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %154 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 3
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = call i64 @mb86a16_write(%struct.mb86a16_state* %153, i32 36, i32 %156)
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %159, %152
  %161 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %162 = call i64 @mb86a16_write(%struct.mb86a16_state* %161, i32 37, i32 1)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 0, i32* %15, align 4
  br label %165

165:                                              ; preds = %164, %160
  %166 = load i32, i32* %15, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* @verbose, align 4
  %170 = load i32, i32* @MB86A16_ERROR, align 4
  %171 = call i32 @dprintk(i32 %169, i32 %170, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* @EREMOTEIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %5, align 4
  br label %175

174:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %174, %168
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i64 @mb86a16_write(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
