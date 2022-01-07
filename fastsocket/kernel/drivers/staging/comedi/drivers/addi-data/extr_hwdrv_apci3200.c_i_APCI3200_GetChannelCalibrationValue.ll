; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_GetChannelCalibrationValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_GetChannelCalibrationValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32*, i32* }
%struct.comedi_device = type { i64 }

@s_BoardInfos = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_GetChannelCalibrationValue(%struct.comedi_device* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_BoardInfos, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %60

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = icmp uge i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp ule i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %59

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp uge i32 %30, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp ule i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 %36, 2
  store i32 %37, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %58

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %7, align 4
  %40 = icmp uge i32 %39, 4
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp ule i32 %42, 5
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = sub i32 %45, 4
  store i32 %46, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %57

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %7, align 4
  %49 = icmp uge i32 %48, 6
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp ule i32 %51, 7
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = sub i32 %54, 6
  store i32 %55, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %50, %47
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %27
  br label %124

60:                                               ; preds = %5
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %60
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %123

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %122

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 5
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %121

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 7
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %120

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %88
  store i32 0, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %119

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 11
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %95
  store i32 1, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %118

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 12
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 13
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102
  store i32 0, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %117

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 14
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 15
  br i1 %114, label %115, label %116

115:                                              ; preds = %112, %109
  store i32 1, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %116

116:                                              ; preds = %115, %112
  br label %117

117:                                              ; preds = %116, %108
  br label %118

118:                                              ; preds = %117, %101
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %87
  br label %121

121:                                              ; preds = %120, %80
  br label %122

122:                                              ; preds = %121, %73
  br label %123

123:                                              ; preds = %122, %66
  br label %124

124:                                              ; preds = %123, %59
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_BoardInfos, align 8
  %126 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %8, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_BoardInfos, align 8
  %139 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_BoardInfos, align 8
  %156 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %157 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_BoardInfos, align 8
  %168 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %169 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i32, i32* %166, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %10, align 8
  store i32 %175, i32* %176, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
