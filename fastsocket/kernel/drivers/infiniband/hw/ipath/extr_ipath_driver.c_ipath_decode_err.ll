; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_decode_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_decode_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

@INFINIPATH_E_PKTERRS = common dso_local global i32 0, align 4
@ipath_debug = common dso_local global i32 0, align 4
@__IPATH_ERRPKTDBG = common dso_local global i32 0, align 4
@INFINIPATH_E_REBP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EBP \00", align 1
@INFINIPATH_E_RVCRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"VCRC \00", align 1
@INFINIPATH_E_RICRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"CRC \00", align 1
@INFINIPATH_E_RSHORTPKTLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"rshortpktlen \00", align 1
@INFINIPATH_E_SDROPPEDDATAPKT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"sdroppeddatapkt \00", align 1
@INFINIPATH_E_SPKTLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"spktlen \00", align 1
@INFINIPATH_E_RHDRLEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"rhdrlen \00", align 1
@INFINIPATH_E_RBADTID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"rbadtid \00", align 1
@INFINIPATH_E_RBADVERSION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"rbadversion \00", align 1
@INFINIPATH_E_RHDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"rhdr \00", align 1
@INFINIPATH_E_SENDSPECIALTRIGGER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"sendspecialtrigger \00", align 1
@INFINIPATH_E_RLONGPKTLEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"rlongpktlen \00", align 1
@INFINIPATH_E_RMAXPKTLEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"rmaxpktlen \00", align 1
@INFINIPATH_E_RMINPKTLEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"rminpktlen \00", align 1
@INFINIPATH_E_SMINPKTLEN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"sminpktlen \00", align 1
@INFINIPATH_E_RFORMATERR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"rformaterr \00", align 1
@INFINIPATH_E_RUNSUPVL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"runsupvl \00", align 1
@INFINIPATH_E_RUNEXPCHAR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"runexpchar \00", align 1
@INFINIPATH_E_RIBFLOW = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"ribflow \00", align 1
@INFINIPATH_E_SUNDERRUN = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"sunderrun \00", align 1
@INFINIPATH_E_SPIOARMLAUNCH = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"spioarmlaunch \00", align 1
@INFINIPATH_E_SUNEXPERRPKTNUM = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"sunexperrpktnum \00", align 1
@INFINIPATH_E_SDROPPEDSMPPKT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"sdroppedsmppkt \00", align 1
@INFINIPATH_E_SMAXPKTLEN = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"smaxpktlen \00", align 1
@INFINIPATH_E_SUNSUPVL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"sunsupVL \00", align 1
@INFINIPATH_E_INVALIDADDR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"invalidaddr \00", align 1
@INFINIPATH_E_RRCVEGRFULL = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"rcvegrfull \00", align 1
@INFINIPATH_E_RRCVHDRFULL = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"rcvhdrfull \00", align 1
@INFINIPATH_E_IBSTATUSCHANGED = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"ibcstatuschg \00", align 1
@INFINIPATH_E_RIBLOSTLINK = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"riblostlink \00", align 1
@INFINIPATH_E_HARDWARE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"hardware \00", align 1
@INFINIPATH_E_RESET = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"reset \00", align 1
@INFINIPATH_E_SDMAERRS = common dso_local global i32 0, align 4
@INFINIPATH_E_INVALIDEEPCMD = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"invalideepromcmd \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_decode_err(%struct.ipath_devdata* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @INFINIPATH_E_PKTERRS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %106

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @INFINIPATH_E_PKTERRS, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* @ipath_debug, align 4
  %24 = load i32, i32* @__IPATH_ERRPKTDBG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @INFINIPATH_E_REBP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @strlcat(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @INFINIPATH_E_RVCRC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @strlcat(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @INFINIPATH_E_RICRC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @strlcat(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @INFINIPATH_E_RICRC, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @INFINIPATH_E_RSHORTPKTLEN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @strlcat(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @INFINIPATH_E_SDROPPEDDATAPKT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @strlcat(i8* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @INFINIPATH_E_SPKTLEN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @strlcat(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84, %22
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @INFINIPATH_E_RICRC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @INFINIPATH_E_RVCRC, align 4
  %93 = load i32, i32* @INFINIPATH_E_REBP, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @strlcat(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %97, %90, %85
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  br label %361

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @INFINIPATH_E_RHDRLEN, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @strlcat(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @INFINIPATH_E_RBADTID, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @strlcat(i8* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @INFINIPATH_E_RBADVERSION, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @strlcat(i8* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @INFINIPATH_E_RHDR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i8*, i8** %6, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @strlcat(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %138, %133
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @INFINIPATH_E_SENDSPECIALTRIGGER, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i8*, i8** %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @strlcat(i8* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %149)
  br label %151

151:                                              ; preds = %147, %142
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @INFINIPATH_E_RLONGPKTLEN, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @strlcat(i8* %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 %158)
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @INFINIPATH_E_RMAXPKTLEN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i8*, i8** %6, align 8
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @strlcat(i8* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 %167)
  br label %169

169:                                              ; preds = %165, %160
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @INFINIPATH_E_RMINPKTLEN, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i8*, i8** %6, align 8
  %176 = load i64, i64* %7, align 8
  %177 = call i32 @strlcat(i8* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 %176)
  br label %178

178:                                              ; preds = %174, %169
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @INFINIPATH_E_SMINPKTLEN, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i8*, i8** %6, align 8
  %185 = load i64, i64* %7, align 8
  %186 = call i32 @strlcat(i8* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i64 %185)
  br label %187

187:                                              ; preds = %183, %178
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @INFINIPATH_E_RFORMATERR, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i8*, i8** %6, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call i32 @strlcat(i8* %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i64 %194)
  br label %196

196:                                              ; preds = %192, %187
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @INFINIPATH_E_RUNSUPVL, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load i8*, i8** %6, align 8
  %203 = load i64, i64* %7, align 8
  %204 = call i32 @strlcat(i8* %202, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i64 %203)
  br label %205

205:                                              ; preds = %201, %196
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @INFINIPATH_E_RUNEXPCHAR, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i8*, i8** %6, align 8
  %212 = load i64, i64* %7, align 8
  %213 = call i32 @strlcat(i8* %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 %212)
  br label %214

214:                                              ; preds = %210, %205
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @INFINIPATH_E_RIBFLOW, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = load i8*, i8** %6, align 8
  %221 = load i64, i64* %7, align 8
  %222 = call i32 @strlcat(i8* %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i64 %221)
  br label %223

223:                                              ; preds = %219, %214
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @INFINIPATH_E_SUNDERRUN, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load i8*, i8** %6, align 8
  %230 = load i64, i64* %7, align 8
  %231 = call i32 @strlcat(i8* %229, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 %230)
  br label %232

232:                                              ; preds = %228, %223
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* @INFINIPATH_E_SPIOARMLAUNCH, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load i8*, i8** %6, align 8
  %239 = load i64, i64* %7, align 8
  %240 = call i32 @strlcat(i8* %238, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i64 %239)
  br label %241

241:                                              ; preds = %237, %232
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @INFINIPATH_E_SUNEXPERRPKTNUM, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i8*, i8** %6, align 8
  %248 = load i64, i64* %7, align 8
  %249 = call i32 @strlcat(i8* %247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i64 %248)
  br label %250

250:                                              ; preds = %246, %241
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @INFINIPATH_E_SDROPPEDSMPPKT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = load i8*, i8** %6, align 8
  %257 = load i64, i64* %7, align 8
  %258 = call i32 @strlcat(i8* %256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i64 %257)
  br label %259

259:                                              ; preds = %255, %250
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* @INFINIPATH_E_SMAXPKTLEN, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load i8*, i8** %6, align 8
  %266 = load i64, i64* %7, align 8
  %267 = call i32 @strlcat(i8* %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i64 %266)
  br label %268

268:                                              ; preds = %264, %259
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @INFINIPATH_E_SUNSUPVL, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load i8*, i8** %6, align 8
  %275 = load i64, i64* %7, align 8
  %276 = call i32 @strlcat(i8* %274, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i64 %275)
  br label %277

277:                                              ; preds = %273, %268
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @INFINIPATH_E_INVALIDADDR, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %277
  %283 = load i8*, i8** %6, align 8
  %284 = load i64, i64* %7, align 8
  %285 = call i32 @strlcat(i8* %283, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i64 %284)
  br label %286

286:                                              ; preds = %282, %277
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @INFINIPATH_E_RRCVEGRFULL, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %286
  %292 = load i8*, i8** %6, align 8
  %293 = load i64, i64* %7, align 8
  %294 = call i32 @strlcat(i8* %292, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i64 %293)
  br label %295

295:                                              ; preds = %291, %286
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* @INFINIPATH_E_RRCVHDRFULL, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %295
  %301 = load i8*, i8** %6, align 8
  %302 = load i64, i64* %7, align 8
  %303 = call i32 @strlcat(i8* %301, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i64 %302)
  br label %304

304:                                              ; preds = %300, %295
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @INFINIPATH_E_IBSTATUSCHANGED, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = load i8*, i8** %6, align 8
  %311 = load i64, i64* %7, align 8
  %312 = call i32 @strlcat(i8* %310, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i64 %311)
  br label %313

313:                                              ; preds = %309, %304
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* @INFINIPATH_E_RIBLOSTLINK, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = load i8*, i8** %6, align 8
  %320 = load i64, i64* %7, align 8
  %321 = call i32 @strlcat(i8* %319, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i64 %320)
  br label %322

322:                                              ; preds = %318, %313
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* @INFINIPATH_E_HARDWARE, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %322
  %328 = load i8*, i8** %6, align 8
  %329 = load i64, i64* %7, align 8
  %330 = call i32 @strlcat(i8* %328, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i64 %329)
  br label %331

331:                                              ; preds = %327, %322
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* @INFINIPATH_E_RESET, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %331
  %337 = load i8*, i8** %6, align 8
  %338 = load i64, i64* %7, align 8
  %339 = call i32 @strlcat(i8* %337, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i64 %338)
  br label %340

340:                                              ; preds = %336, %331
  %341 = load i32, i32* %8, align 4
  %342 = load i32, i32* @INFINIPATH_E_SDMAERRS, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %340
  %346 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %347 = load i32, i32* %8, align 4
  %348 = load i8*, i8** %6, align 8
  %349 = load i64, i64* %7, align 8
  %350 = call i32 @decode_sdma_errs(%struct.ipath_devdata* %346, i32 %347, i8* %348, i64 %349)
  br label %351

351:                                              ; preds = %345, %340
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* @INFINIPATH_E_INVALIDEEPCMD, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %351
  %357 = load i8*, i8** %6, align 8
  %358 = load i64, i64* %7, align 8
  %359 = call i32 @strlcat(i8* %357, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i64 %358)
  br label %360

360:                                              ; preds = %356, %351
  br label %361

361:                                              ; preds = %360, %104
  %362 = load i32, i32* %9, align 4
  ret i32 %362
}

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @decode_sdma_errs(%struct.ipath_devdata*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
