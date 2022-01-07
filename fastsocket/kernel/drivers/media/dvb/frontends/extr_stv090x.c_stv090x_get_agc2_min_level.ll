; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_agc2_min_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_agc2_min_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AGC2REF = common dso_local global i32 0, align 4
@DMDCFGMD = common dso_local global i32 0, align 4
@SCAN_ENABLE_FIELD = common dso_local global i32 0, align 4
@CFR_AUTOSCAN_FIELD = common dso_local global i32 0, align 4
@SFRUP1 = common dso_local global i32 0, align 4
@SFRUP0 = common dso_local global i32 0, align 4
@SFRLOW1 = common dso_local global i32 0, align 4
@SFRLOW0 = common dso_local global i32 0, align 4
@DMDTOM = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@AGC2I1 = common dso_local global i32 0, align 4
@AGC2I0 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_get_agc2_min_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_agc2_min_level(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  store i32 65535, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %14 = load i32, i32* @AGC2REF, align 4
  %15 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %13, i32 %14, i32 56)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %168

18:                                               ; preds = %1
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %20 = load i32, i32* @DMDCFGMD, align 4
  %21 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SCAN_ENABLE_FIELD, align 4
  %24 = call i32 @STV090x_SETFIELD_Px(i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CFR_AUTOSCAN_FIELD, align 4
  %27 = call i32 @STV090x_SETFIELD_Px(i32 %25, i32 %26, i32 0)
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %29 = load i32, i32* @DMDCFGMD, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %28, i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %168

34:                                               ; preds = %18
  %35 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %36 = load i32, i32* @SFRUP1, align 4
  %37 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %35, i32 %36, i32 131)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %168

40:                                               ; preds = %34
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %42 = load i32, i32* @SFRUP0, align 4
  %43 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %41, i32 %42, i32 192)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %168

46:                                               ; preds = %40
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %48 = load i32, i32* @SFRLOW1, align 4
  %49 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %47, i32 %48, i32 130)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %168

52:                                               ; preds = %46
  %53 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %54 = load i32, i32* @SFRLOW0, align 4
  %55 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %53, i32 %54, i32 160)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %168

58:                                               ; preds = %52
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %60 = load i32, i32* @DMDTOM, align 4
  %61 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %59, i32 %60, i32 0)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %168

64:                                               ; preds = %58
  %65 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %66 = call i64 @stv090x_set_srate(%struct.stv090x_state* %65, i32 1000000)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %168

69:                                               ; preds = %64
  %70 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %71 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 1000000
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %69
  store i32 1, i32* %12, align 4
  %78 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %79 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 256
  %84 = sdiv i32 256000000, %83
  store i32 %84, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %163, %77
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %166

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %93, %96
  store i32 %97, i32* %6, align 4
  br label %104

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sub nsw i32 %99, %102
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %98, %92
  %105 = load i32, i32* %12, align 4
  %106 = mul nsw i32 %105, -1
  store i32 %106, i32* %12, align 4
  %107 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %108 = load i32, i32* @DMDISTATE, align 4
  %109 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %107, i32 %108, i32 92)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %168

112:                                              ; preds = %104
  %113 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %114 = load i32, i32* @CFRINIT1, align 4
  %115 = load i32, i32* %6, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %113, i32 %114, i32 %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %168

121:                                              ; preds = %112
  %122 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %123 = load i32, i32* @CFRINIT0, align 4
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %124, 255
  %126 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %122, i32 %123, i32 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %168

129:                                              ; preds = %121
  %130 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %131 = load i32, i32* @DMDISTATE, align 4
  %132 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %130, i32 %131, i32 88)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %168

135:                                              ; preds = %129
  %136 = call i32 @msleep(i32 10)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %151, %135
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 10
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %142 = load i32, i32* @AGC2I1, align 4
  %143 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %141, i32 %142)
  %144 = shl i32 %143, 8
  %145 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %146 = load i32, i32* @AGC2I0, align 4
  %147 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %145, i32 %146)
  %148 = or i32 %144, %147
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %137

154:                                              ; preds = %137
  %155 = load i32, i32* %5, align 4
  %156 = sdiv i32 %155, 10
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %160, %154
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %85

166:                                              ; preds = %85
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %171

168:                                              ; preds = %134, %128, %120, %111, %68, %63, %57, %51, %45, %39, %33, %17
  %169 = load i32, i32* @FE_ERROR, align 4
  %170 = call i32 @dprintk(i32 %169, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %171

171:                                              ; preds = %168, %166
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @stv090x_set_srate(%struct.stv090x_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
