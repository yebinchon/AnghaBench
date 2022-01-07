; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_SendMultiIE.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_SendMultiIE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { i64 }

@NCR_FACILITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"NoM-IEParse \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"M-IEParse \00", align 1
@MAX_MULTI_IE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"[Ind0x%x]:IE=0x%x\00", align 1
@max_appl = common dso_local global i64 0, align 8
@application = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"Mlt_NCR_Ind\00", align 1
@_INFO_I = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"wS\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Mlt_Ovl_Ind\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Mlt_Std_Ind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32**, i32, i32, i32)* @SendMultiIE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SendMultiIE(%struct.TYPE_11__* %0, i32 %1, i32** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32** %2, i32*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %6
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NCR_FACILITY, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @dbug(i32 1, i32 %42)
  store i32 0, i32* %7, align 4
  br label %203

44:                                               ; preds = %38, %31, %26, %6
  %45 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @dbug(i32 1, i32 %45)
  store i64 0, i64* %14, align 8
  br label %47

47:                                               ; preds = %198, %44
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @MAX_MULTI_IE, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %201

51:                                               ; preds = %47
  %52 = load i32**, i32*** %10, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %16, align 8
  store i64 0, i64* %17, align 8
  %56 = load i32*, i32** %16, align 8
  store i32* %56, i32** %18, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %65, i32 %66)
  %68 = call i32 @dbug(i32 1, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %17, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %20, align 8
  br label %73

73:                                               ; preds = %61, %51
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NCR_FACILITY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %129

80:                                               ; preds = %73
  store i64 0, i64* %15, align 8
  br label %81

81:                                               ; preds = %125, %80
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* @max_appl, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %128

85:                                               ; preds = %81
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** @application, align 8
  %87 = load i64, i64* %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %87
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %19, align 8
  %89 = load i64, i64* %17, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %85
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %91
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %101, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %20, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %96
  store i32 1, i32* %21, align 4
  %113 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %114 = call i32 @dbug(i32 1, i32 %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** @application, align 8
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 %116
  %118 = load i32, i32* @_INFO_I, align 4
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 15
  %121 = load i64, i64* %17, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = call i32 @sendf(%struct.TYPE_12__* %117, i32 %118, i32 %120, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %121, i32* %122)
  br label %124

124:                                              ; preds = %112, %96, %91, %85
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %15, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %15, align 8
  br label %81

128:                                              ; preds = %81
  br label %197

129:                                              ; preds = %73
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = icmp ne %struct.TYPE_12__* %132, null
  br i1 %133, label %163, label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %17, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %163

137:                                              ; preds = %134
  store i64 0, i64* %15, align 8
  br label %138

138:                                              ; preds = %159, %137
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* @max_appl, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %144 = load i64, i64* %15, align 8
  %145 = call i64 @test_c_ind_mask_bit(%struct.TYPE_11__* %143, i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  store i32 1, i32* %21, align 4
  %148 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %149 = call i32 @dbug(i32 1, i32 %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** @application, align 8
  %151 = load i64, i64* %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %151
  %153 = load i32, i32* @_INFO_I, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i64, i64* %17, align 8
  %156 = load i32*, i32** %18, align 8
  %157 = call i32 @sendf(%struct.TYPE_12__* %152, i32 %153, i32 %154, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %155, i32* %156)
  br label %158

158:                                              ; preds = %147, %142
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %15, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %15, align 8
  br label %138

162:                                              ; preds = %138
  br label %196

163:                                              ; preds = %134, %129
  %164 = load i64, i64* %17, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %195

166:                                              ; preds = %163
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %171, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %20, align 8
  %182 = and i64 %180, %181
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %166
  store i32 1, i32* %21, align 4
  %185 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %186 = call i32 @dbug(i32 1, i32 %185)
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = load i32, i32* @_INFO_I, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i64, i64* %17, align 8
  %193 = load i32*, i32** %18, align 8
  %194 = call i32 @sendf(%struct.TYPE_12__* %189, i32 %190, i32 %191, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %192, i32* %193)
  br label %195

195:                                              ; preds = %184, %166, %163
  br label %196

196:                                              ; preds = %195, %162
  br label %197

197:                                              ; preds = %196, %128
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %14, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %14, align 8
  br label %47

201:                                              ; preds = %47
  %202 = load i32, i32* %21, align 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %201, %41
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @sendf(%struct.TYPE_12__*, i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i64 @test_c_ind_mask_bit(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
