; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-xc2028.c_dump_firm_type_and_int_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-xc2028.c_dump_firm_type_and_int_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BASE \00", align 1
@INIT1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"INIT1 \00", align 1
@F8MHZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"F8MHZ \00", align 1
@MTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"MTS \00", align 1
@D2620 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"D2620 \00", align 1
@D2633 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"D2633 \00", align 1
@DTV6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"DTV6 \00", align 1
@QAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"QAM \00", align 1
@DTV7 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"DTV7 \00", align 1
@DTV78 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"DTV78 \00", align 1
@DTV8 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"DTV8 \00", align 1
@FM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"FM \00", align 1
@INPUT1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"INPUT1 \00", align 1
@LCD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"LCD \00", align 1
@NOGD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"NOGD \00", align 1
@MONO = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"MONO \00", align 1
@ATSC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"ATSC \00", align 1
@IF = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"IF \00", align 1
@LG60 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"LG60 \00", align 1
@ATI638 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"ATI638 \00", align 1
@OREN538 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"OREN538 \00", align 1
@OREN36 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"OREN36 \00", align 1
@TOYOTA388 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"TOYOTA388 \00", align 1
@TOYOTA794 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"TOYOTA794 \00", align 1
@DIBCOM52 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"DIBCOM52 \00", align 1
@ZARLINK456 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"ZARLINK456 \00", align 1
@CHINA = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"CHINA \00", align 1
@F6MHZ = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"F6MHZ \00", align 1
@INPUT2 = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"INPUT2 \00", align 1
@SCODE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"SCODE \00", align 1
@HAS_IF = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [11 x i8] c"HAS_IF_%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_firm_type_and_int_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_firm_type_and_int_freq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @BASE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @INIT1, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @F8MHZ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @D2620, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @D2633, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @DTV6, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @QAM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @DTV7, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @DTV78, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @DTV8, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @FM, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @INPUT1, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @LCD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %95
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @NOGD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @MONO, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @ATSC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %116
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @IF, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %123
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @LG60, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %130
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* @ATI638, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %137
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @OREN538, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %144
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @OREN36, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %151
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* @TOYOTA388, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %158
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @TOYOTA794, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %165
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @DIBCOM52, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %172
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* @ZARLINK456, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %179
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @CHINA, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %186
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* @F6MHZ, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* @INPUT2, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %200
  %208 = load i32, i32* %3, align 4
  %209 = load i32, i32* @SCODE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %207
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* @HAS_IF, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load i32, i32* %4, align 4
  %221 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %219, %214
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
