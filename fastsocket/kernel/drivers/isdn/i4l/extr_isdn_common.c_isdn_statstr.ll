; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_statstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_statstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i8**, i32*, i32*, i8**, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@isdn_statstr.istatbuf = internal global [2048 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"idmap:\09\00", align 1
@ISDN_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@dev = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\0Achmap:\09\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\0Adrmap:\09\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0Ausage:\09\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0Aflags:\09\00", align 1
@ISDN_MAX_DRIVERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"? \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\0Aphone:\09\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @isdn_statstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @isdn_statstr() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %5
  store i8* %6, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %41, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @ISDN_MAX_CHANNELS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load i8*, i8** %1, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %35

22:                                               ; preds = %11
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8*, i8** %25, i64 %32
  %34 = load i8*, i8** %33, align 8
  br label %35

35:                                               ; preds = %22, %21
  %36 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %21 ], [ %34, %22 ]
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %39
  store i8* %40, i8** %1, align 8
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %7

44:                                               ; preds = %7
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %48
  store i8* %49, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %67, %44
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @ISDN_MAX_CHANNELS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i8*, i8** %1, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %65
  store i8* %66, i8** %1, align 8
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %50

70:                                               ; preds = %50
  %71 = load i8*, i8** %1, align 8
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %73 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %74
  store i8* %75, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %93, %70
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @ISDN_MAX_CHANNELS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i8*, i8** %1, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %88)
  %90 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %91
  store i8* %92, i8** %1, align 8
  br label %93

93:                                               ; preds = %80
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load i8*, i8** %1, align 8
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %99 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %100
  store i8* %101, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %119, %96
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @ISDN_MAX_CHANNELS, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load i8*, i8** %1, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %117
  store i8* %118, i8** %1, align 8
  br label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %2, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %2, align 4
  br label %102

122:                                              ; preds = %102
  %123 = load i8*, i8** %1, align 8
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %125 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %126
  store i8* %127, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %163, %122
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @ISDN_MAX_DRIVERS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %166

132:                                              ; preds = %128
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %134, align 8
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %135, i64 %137
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = icmp ne %struct.TYPE_3__* %139, null
  br i1 %140, label %141, label %156

141:                                              ; preds = %132
  %142 = load i8*, i8** %1, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %144, align 8
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %145, i64 %147
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, i8*, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  %153 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %154
  store i8* %155, i8** %1, align 8
  br label %162

156:                                              ; preds = %132
  %157 = load i8*, i8** %1, align 8
  %158 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %159 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %160
  store i8* %161, i8** %1, align 8
  br label %162

162:                                              ; preds = %156, %141
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  br label %128

166:                                              ; preds = %128
  %167 = load i8*, i8** %1, align 8
  %168 = call i32 (i8*, i8*, ...) @sprintf(i8* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %169 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %170
  store i8* %171, i8** %1, align 8
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %189, %166
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* @ISDN_MAX_CHANNELS, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %172
  %177 = load i8*, i8** %1, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = load i8**, i8*** %179, align 8
  %181 = load i32, i32* %2, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %184)
  %186 = call i32 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0))
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0), i64 %187
  store i8* %188, i8** %1, align 8
  br label %189

189:                                              ; preds = %176
  %190 = load i32, i32* %2, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %2, align 4
  br label %172

192:                                              ; preds = %172
  %193 = load i8*, i8** %1, align 8
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  ret i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @isdn_statstr.istatbuf, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
