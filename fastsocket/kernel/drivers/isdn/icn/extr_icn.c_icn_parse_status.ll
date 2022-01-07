; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/icn/extr_icn.c_icn_parse_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/icn/extr_icn.c_icn_parse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i32, i8* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_16__, i32, i32* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i32, i32, i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i8*, i32, i32 }

@icn_stat_table = common dso_local global %struct.TYPE_20__* null, align 8
@ICN_FLAGS_B2ACTIVE = common dso_local global i32 0, align 4
@ICN_FLAGS_B1ACTIVE = common dso_local global i32 0, align 4
@ISDN_STAT_BHUP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"LEASED%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%c%c\00", align 1
@ISDN_STAT_DHUP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_21__*)* @icn_parse_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icn_parse_status(i8* %0, i32 %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** @icn_stat_table, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %7, align 8
  store i32 -1, i32* %8, align 4
  br label %15

15:                                               ; preds = %39, %3
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @strncmp(i8* %21, i8* %24, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %20
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %20
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 1
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %7, align 8
  br label %15

42:                                               ; preds = %31, %15
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %396

46:                                               ; preds = %42
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %390 [
    i32 11, label %54
    i32 1, label %119
    i32 2, label %143
    i32 3, label %174
    i32 4, label %236
    i32 5, label %264
    i32 6, label %271
    i32 7, label %280
    i32 8, label %308
  ]

54:                                               ; preds = %46
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 3
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @icn_free_queue(%struct.TYPE_21__* %59, i32 %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %54
  %74 = load i32, i32* @ICN_FLAGS_B2ACTIVE, align 4
  br label %77

75:                                               ; preds = %54
  %76 = load i32, i32* @ICN_FLAGS_B1ACTIVE, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = and i32 %70, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @ICN_FLAGS_B2ACTIVE, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @ICN_FLAGS_B1ACTIVE, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = xor i32 %89, -1
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = call i32 @memset(%struct.TYPE_19__* %11, i32 0, i32 56)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* %5, align 4
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = load i8*, i8** @ISDN_STAT_BHUP, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i8* %102, i8** %103, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 3
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %110, align 8
  %112 = call i32 %111(%struct.TYPE_19__* %10)
  br label %118

113:                                              ; preds = %77
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 3
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  br label %118

118:                                              ; preds = %113, %88
  br label %390

119:                                              ; preds = %46
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @spin_lock_irqsave(i32* %121, i64 %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @icn_free_queue(%struct.TYPE_21__* %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i32, i32* @ICN_FLAGS_B2ACTIVE, align 4
  br label %133

131:                                              ; preds = %119
  %132 = load i32, i32* @ICN_FLAGS_B1ACTIVE, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 3
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  br label %390

143:                                              ; preds = %46
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @ICN_FLAGS_B2ACTIVE, align 4
  br label %154

152:                                              ; preds = %143
  %153 = load i32, i32* @ICN_FLAGS_B1ACTIVE, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = xor i32 %155, -1
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @icn_free_queue(%struct.TYPE_21__* %161, i32 %162)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 0, i32* %169, align 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 3
  %172 = load i64, i64* %9, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  br label %390

174:                                              ; preds = %46
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 6
  store i8* %176, i8** %12, align 8
  %177 = load i8*, i8** %12, align 8
  %178 = call i8* @strchr(i8* %177, i8 signext 44)
  store i8* %178, i8** %13, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %13, align 8
  store i8 0, i8* %179, align 1
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 @strlcpy(i32 %184, i8* %185, i32 4)
  %187 = load i8*, i8** %13, align 8
  store i8* %187, i8** %12, align 8
  %188 = call i8* @strchr(i8* %187, i8 signext 44)
  store i8* %188, i8** %13, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %13, align 8
  store i8 0, i8* %189, align 1
  %191 = load i8*, i8** %12, align 8
  %192 = call i32 @strlen(i8* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %174
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  br label %205

198:                                              ; preds = %174
  %199 = load i8*, i8** %12, align 8
  %200 = call i8* @simple_strtoul(i8* %199, i32* null, i32 10)
  %201 = ptrtoint i8* %200 to i32
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  br label %205

205:                                              ; preds = %198, %194
  %206 = load i8*, i8** %13, align 8
  store i8* %206, i8** %12, align 8
  %207 = call i8* @strchr(i8* %206, i8 signext 44)
  store i8* %207, i8** %13, align 8
  %208 = load i8*, i8** %13, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %13, align 8
  store i8 0, i8* %208, align 1
  %210 = load i8*, i8** %12, align 8
  %211 = call i32 @strlen(i8* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 3
  store i8* null, i8** %216, align 8
  br label %223

217:                                              ; preds = %205
  %218 = load i8*, i8** %12, align 8
  %219 = call i8* @simple_strtoul(i8* %218, i32* null, i32 10)
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 3
  store i8* %219, i8** %222, align 8
  br label %223

223:                                              ; preds = %217, %213
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load i8*, i8** %13, align 8
  %229 = call i32 @strlcpy(i32 %227, i8* %228, i32 4)
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 2
  store i32 0, i32* %232, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 1
  store i32 0, i32* %235, align 4
  br label %390

236:                                              ; preds = %46
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @sprintf(i32 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %243)
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = add nsw i32 %249, 1
  %251 = call i32 @sprintf(i32 %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  store i32 7, i32* %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 3
  store i8* null, i8** %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 2
  store i32 0, i32* %260, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  store i32 0, i32* %263, align 4
  br label %390

264:                                              ; preds = %46
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i8*, i8** %4, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 3
  %270 = call i32 @strlcpy(i32 %267, i8* %269, i32 4)
  br label %390

271:                                              ; preds = %46
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i8*, i8** %4, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 7
  %277 = call i8* @simple_strtoul(i8* %276, i32* null, i32 16)
  %278 = ptrtoint i8* %277 to i32
  %279 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %274, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %278)
  br label %390

280:                                              ; preds = %46
  %281 = load i8*, i8** %4, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 3
  store i8* %282, i8** %4, align 8
  %283 = load i8*, i8** %4, align 8
  %284 = call i32 @strlen(i8* %283)
  %285 = icmp eq i32 %284, 4
  br i1 %285, label %286, label %300

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i8*, i8** %4, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 2
  %292 = load i8*, i8** %4, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = load i8*, i8** %4, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %289, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %291, i32 %294, i32 %298)
  br label %307

300:                                              ; preds = %280
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i8*, i8** %4, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 1
  %306 = call i32 @strlcpy(i32 %303, i8* %305, i32 4)
  br label %307

307:                                              ; preds = %300, %286
  br label %390

308:                                              ; preds = %46
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 3
  %311 = load i64, i64* %9, align 8
  %312 = call i32 @spin_lock_irqsave(i32* %310, i64 %311)
  %313 = load i32, i32* @ICN_FLAGS_B1ACTIVE, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %320 = call i32 @icn_free_queue(%struct.TYPE_21__* %319, i32 0)
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 4
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  store i32 0, i32* %324, align 4
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 3
  %327 = load i64, i64* %9, align 8
  %328 = call i32 @spin_unlock_irqrestore(i32* %326, i64 %327)
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 0, i32* %329, align 4
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %332, i32* %333, align 8
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %336, align 8
  %338 = call i32 %337(%struct.TYPE_19__* %10)
  %339 = load i8*, i8** @ISDN_STAT_DHUP, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i8* %339, i8** %340, align 8
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 0, i32* %341, align 4
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %344, i32* %345, align 8
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 0
  %349 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %348, align 8
  %350 = call i32 %349(%struct.TYPE_19__* %10)
  %351 = load i8*, i8** @ISDN_STAT_BHUP, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i8* %351, i8** %352, align 8
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 3
  %355 = load i64, i64* %9, align 8
  %356 = call i32 @spin_lock_irqsave(i32* %354, i64 %355)
  %357 = load i32, i32* @ICN_FLAGS_B2ACTIVE, align 4
  %358 = xor i32 %357, -1
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, %358
  store i32 %362, i32* %360, align 4
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %364 = call i32 @icn_free_queue(%struct.TYPE_21__* %363, i32 1)
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 4
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 1
  store i32 0, i32* %368, align 4
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 3
  %371 = load i64, i64* %9, align 8
  %372 = call i32 @spin_unlock_irqrestore(i32* %370, i64 %371)
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 1, i32* %373, align 4
  %374 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %376, i32* %377, align 8
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 0
  %381 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %380, align 8
  %382 = call i32 %381(%struct.TYPE_19__* %10)
  %383 = load i8*, i8** @ISDN_STAT_DHUP, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i8* %383, i8** %384, align 8
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 1, i32* %385, align 4
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %388, i32* %389, align 8
  br label %390

390:                                              ; preds = %46, %308, %307, %271, %264, %236, %223, %154, %133, %118
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 0
  %394 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %393, align 8
  %395 = call i32 %394(%struct.TYPE_19__* %10)
  br label %396

396:                                              ; preds = %390, %45
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @icn_free_queue(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
