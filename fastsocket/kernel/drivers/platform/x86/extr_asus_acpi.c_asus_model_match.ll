; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus_acpi.c_asus_model_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus_acpi.c_asus_model_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@END_MODEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"L3D\00", align 1
@L3D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"L2E\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"L3H\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"L5D\00", align 1
@L3H = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"L3\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"L2B\00", align 1
@L3C = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"L8L\00", align 1
@L8L = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"L4R\00", align 1
@L4R = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"M6N\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"W3N\00", align 1
@M6N = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"M6R\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"A3G\00", align 1
@M6R = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"M2N\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"M3N\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"M5N\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"S1N\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"S5N\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"W1N\00", align 1
@xxN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"M1\00", align 1
@M1A = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"M2\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"L4E\00", align 1
@M2E = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"L2\00", align 1
@L2D = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"L8\00", align 1
@S1x = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"D1\00", align 1
@D1x = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@A1x = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@A2x = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [3 x i8] c"J1\00", align 1
@S2x = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [3 x i8] c"L5\00", align 1
@L5x = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"A4G\00", align 1
@A4G = common dso_local global i32 0, align 4
@W1N = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"W3V\00", align 1
@W3V = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"W5A\00", align 1
@W5A = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"R1F\00", align 1
@R1F = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [4 x i8] c"A4S\00", align 1
@A4S = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"F3Sa\00", align 1
@F3Sa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @asus_model_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_model_match(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @END_MODEL, align 4
  store i32 %7, i32* %2, align 4
  br label %202

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strncmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @L3D, align 4
  store i32 %13, i32* %2, align 4
  br label %202

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18, %14
  %27 = load i32, i32* @L3H, align 4
  store i32 %27, i32* %2, align 4
  br label %202

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @L3C, align 4
  store i32 %37, i32* %2, align 4
  br label %202

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @L8L, align 4
  store i32 %43, i32* %2, align 4
  br label %202

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @L4R, align 4
  store i32 %49, i32* %2, align 4
  br label %202

50:                                               ; preds = %44
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @M6N, align 4
  store i32 %59, i32* %2, align 4
  br label %202

60:                                               ; preds = %54
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %3, align 8
  %66 = call i64 @strncmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @M6R, align 4
  store i32 %69, i32* %2, align 4
  br label %202

70:                                               ; preds = %64
  %71 = load i8*, i8** %3, align 8
  %72 = call i64 @strncmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %3, align 8
  %76 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %3, align 8
  %80 = call i64 @strncmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 3)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 3)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %3, align 8
  %92 = call i64 @strncmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 3)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %3, align 8
  %96 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 3)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94, %90, %86, %82, %78, %74, %70
  %99 = load i32, i32* @xxN, align 4
  store i32 %99, i32* %2, align 4
  br label %202

100:                                              ; preds = %94
  %101 = load i8*, i8** %3, align 8
  %102 = call i64 @strncmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 2)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @M1A, align 4
  store i32 %105, i32* %2, align 4
  br label %202

106:                                              ; preds = %100
  %107 = load i8*, i8** %3, align 8
  %108 = call i64 @strncmp(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 2)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %3, align 8
  %112 = call i64 @strncmp(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 3)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %106
  %115 = load i32, i32* @M2E, align 4
  store i32 %115, i32* %2, align 4
  br label %202

116:                                              ; preds = %110
  %117 = load i8*, i8** %3, align 8
  %118 = call i64 @strncmp(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 2)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @L2D, align 4
  store i32 %121, i32* %2, align 4
  br label %202

122:                                              ; preds = %116
  %123 = load i8*, i8** %3, align 8
  %124 = call i64 @strncmp(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 2)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @S1x, align 4
  store i32 %127, i32* %2, align 4
  br label %202

128:                                              ; preds = %122
  %129 = load i8*, i8** %3, align 8
  %130 = call i64 @strncmp(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 2)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @D1x, align 4
  store i32 %133, i32* %2, align 4
  br label %202

134:                                              ; preds = %128
  %135 = load i8*, i8** %3, align 8
  %136 = call i64 @strncmp(i8* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i32 2)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @A1x, align 4
  store i32 %139, i32* %2, align 4
  br label %202

140:                                              ; preds = %134
  %141 = load i8*, i8** %3, align 8
  %142 = call i64 @strncmp(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 2)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @A2x, align 4
  store i32 %145, i32* %2, align 4
  br label %202

146:                                              ; preds = %140
  %147 = load i8*, i8** %3, align 8
  %148 = call i64 @strncmp(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i32 2)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* @S2x, align 4
  store i32 %151, i32* %2, align 4
  br label %202

152:                                              ; preds = %146
  %153 = load i8*, i8** %3, align 8
  %154 = call i64 @strncmp(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 2)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* @L5x, align 4
  store i32 %157, i32* %2, align 4
  br label %202

158:                                              ; preds = %152
  %159 = load i8*, i8** %3, align 8
  %160 = call i64 @strncmp(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 3)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @A4G, align 4
  store i32 %163, i32* %2, align 4
  br label %202

164:                                              ; preds = %158
  %165 = load i8*, i8** %3, align 8
  %166 = call i64 @strncmp(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 3)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @W1N, align 4
  store i32 %169, i32* %2, align 4
  br label %202

170:                                              ; preds = %164
  %171 = load i8*, i8** %3, align 8
  %172 = call i64 @strncmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 3)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @W3V, align 4
  store i32 %175, i32* %2, align 4
  br label %202

176:                                              ; preds = %170
  %177 = load i8*, i8** %3, align 8
  %178 = call i64 @strncmp(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i32 3)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @W5A, align 4
  store i32 %181, i32* %2, align 4
  br label %202

182:                                              ; preds = %176
  %183 = load i8*, i8** %3, align 8
  %184 = call i64 @strncmp(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i32 3)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* @R1F, align 4
  store i32 %187, i32* %2, align 4
  br label %202

188:                                              ; preds = %182
  %189 = load i8*, i8** %3, align 8
  %190 = call i64 @strncmp(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 3)
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* @A4S, align 4
  store i32 %193, i32* %2, align 4
  br label %202

194:                                              ; preds = %188
  %195 = load i8*, i8** %3, align 8
  %196 = call i64 @strncmp(i8* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 4)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @F3Sa, align 4
  store i32 %199, i32* %2, align 4
  br label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @END_MODEL, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %200, %198, %192, %186, %180, %174, %168, %162, %156, %150, %144, %138, %132, %126, %120, %114, %104, %98, %68, %58, %48, %42, %36, %26, %12, %6
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
