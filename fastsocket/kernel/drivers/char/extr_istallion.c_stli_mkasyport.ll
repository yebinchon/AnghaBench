; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_mkasyport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_mkasyport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.stliport = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32* }

@CBAUD = common dso_local global i32 0, align 4
@B38400 = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_HI = common dso_local global i32 0, align 4
@ASYNC_SPD_VHI = common dso_local global i32 0, align 4
@ASYNC_SPD_SHI = common dso_local global i32 0, align 4
@ASYNC_SPD_WARP = common dso_local global i32 0, align 4
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@STL_MAXBAUD = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PT_STOP2 = common dso_local global i32 0, align 4
@PT_STOP1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PT_ODDPARITY = common dso_local global i32 0, align 4
@PT_EVENPARITY = common dso_local global i32 0, align 4
@PT_NOPARITY = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@F_IXON = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@F_IXANY = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@F_RTSFLOW = common dso_local global i32 0, align 4
@F_CTSFLOW = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@IGNPAR = common dso_local global i32 0, align 4
@FI_IGNRXERRS = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@FI_IGNBREAK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@FI_1MARKRXERRS = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@P_RXIMIN = common dso_local global i32 0, align 4
@P_RXITIME = common dso_local global i32 0, align 4
@P_RXTHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.stliport*, %struct.TYPE_6__*, %struct.ktermios*)* @stli_mkasyport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stli_mkasyport(%struct.tty_struct* %0, %struct.stliport* %1, %struct.TYPE_6__* %2, %struct.ktermios* %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.stliport*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.ktermios*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.stliport* %1, %struct.stliport** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.ktermios* %3, %struct.ktermios** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %10 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 72)
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = call i32 @tty_get_baud_rate(%struct.tty_struct* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CBAUD, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @B38400, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %4
  %23 = load %struct.stliport*, %struct.stliport** %6, align 8
  %24 = getelementptr inbounds %struct.stliport, %struct.stliport* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @ASYNC_SPD_HI, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 57600, i32* %33, align 8
  br label %93

34:                                               ; preds = %22
  %35 = load %struct.stliport*, %struct.stliport** %6, align 8
  %36 = getelementptr inbounds %struct.stliport, %struct.stliport* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @ASYNC_SPD_VHI, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 115200, i32* %45, align 8
  br label %92

46:                                               ; preds = %34
  %47 = load %struct.stliport*, %struct.stliport** %6, align 8
  %48 = getelementptr inbounds %struct.stliport, %struct.stliport* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @ASYNC_SPD_SHI, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 230400, i32* %57, align 8
  br label %91

58:                                               ; preds = %46
  %59 = load %struct.stliport*, %struct.stliport** %6, align 8
  %60 = getelementptr inbounds %struct.stliport, %struct.stliport* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @ASYNC_SPD_WARP, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 460800, i32* %69, align 8
  br label %90

70:                                               ; preds = %58
  %71 = load %struct.stliport*, %struct.stliport** %6, align 8
  %72 = getelementptr inbounds %struct.stliport, %struct.stliport* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load %struct.stliport*, %struct.stliport** %6, align 8
  %81 = getelementptr inbounds %struct.stliport, %struct.stliport* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.stliport*, %struct.stliport** %6, align 8
  %84 = getelementptr inbounds %struct.stliport, %struct.stliport* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %82, %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %79, %70
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %55
  br label %92

92:                                               ; preds = %91, %43
  br label %93

93:                                               ; preds = %92, %31
  br label %94

94:                                               ; preds = %93, %4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @STL_MAXBAUD, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @STL_MAXBAUD, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %111 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CSIZE, align 4
  %114 = and i32 %112, %113
  switch i32 %114, label %124 [
    i32 130, label %115
    i32 129, label %118
    i32 128, label %121
  ]

115:                                              ; preds = %104
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i32 5, i32* %117, align 8
  br label %127

118:                                              ; preds = %104
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  store i32 6, i32* %120, align 8
  br label %127

121:                                              ; preds = %104
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  store i32 7, i32* %123, align 8
  br label %127

124:                                              ; preds = %104
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  store i32 8, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %121, %118, %115
  %128 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %129 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CSTOPB, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* @PT_STOP2, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 14
  store i32 %135, i32* %137, align 8
  br label %142

138:                                              ; preds = %127
  %139 = load i32, i32* @PT_STOP1, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 14
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %144 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PARENB, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %142
  %150 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %151 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PARODD, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i32, i32* @PT_ODDPARITY, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 13
  store i32 %157, i32* %159, align 4
  br label %164

160:                                              ; preds = %149
  %161 = load i32, i32* @PT_EVENPARITY, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 13
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %156
  br label %169

165:                                              ; preds = %142
  %166 = load i32, i32* @PT_NOPARITY, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 13
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %171 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IXON, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %169
  %177 = load i32, i32* @F_IXON, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %183 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IXANY, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %176
  %189 = load i32, i32* @F_IXANY, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %176
  br label %195

195:                                              ; preds = %194, %169
  %196 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %197 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @CRTSCTS, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %195
  %203 = load i32, i32* @F_RTSFLOW, align 4
  %204 = load i32, i32* @F_CTSFLOW, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %202, %195
  %211 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %212 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @VSTART, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 12
  store i32 %216, i32* %218, align 8
  %219 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %220 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @VSTOP, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 11
  store i32 %224, i32* %226, align 4
  %227 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %228 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @VSTART, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 10
  store i32 %232, i32* %234, align 8
  %235 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %236 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i64, i64* @VSTOP, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 9
  store i32 %240, i32* %242, align 4
  %243 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %244 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @IGNPAR, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %210
  %250 = load i32, i32* @FI_IGNRXERRS, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %249, %210
  %256 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %257 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @IGNBRK, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = load i32, i32* @FI_IGNBREAK, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %262, %255
  %269 = load %struct.stliport*, %struct.stliport** %6, align 8
  %270 = getelementptr inbounds %struct.stliport, %struct.stliport* %269, i32 0, i32 2
  store i32 0, i32* %270, align 4
  %271 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %272 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @INPCK, align 4
  %275 = load i32, i32* @PARMRK, align 4
  %276 = or i32 %274, %275
  %277 = and i32 %273, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %268
  %280 = load i32, i32* @FI_1MARKRXERRS, align 4
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 8
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  br label %285

285:                                              ; preds = %279, %268
  %286 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %287 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @BRKINT, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %285
  %293 = load i32, i32* @BRKINT, align 4
  %294 = load %struct.stliport*, %struct.stliport** %6, align 8
  %295 = getelementptr inbounds %struct.stliport, %struct.stliport* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 4
  br label %298

298:                                              ; preds = %292, %285
  %299 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %300 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @CLOCAL, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %298
  %306 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %307 = xor i32 %306, -1
  %308 = load %struct.stliport*, %struct.stliport** %6, align 8
  %309 = getelementptr inbounds %struct.stliport, %struct.stliport* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, %307
  store i32 %312, i32* %310, align 4
  br label %320

313:                                              ; preds = %298
  %314 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %315 = load %struct.stliport*, %struct.stliport** %6, align 8
  %316 = getelementptr inbounds %struct.stliport, %struct.stliport* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %314
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %313, %305
  %321 = load %struct.stliport*, %struct.stliport** %6, align 8
  %322 = getelementptr inbounds %struct.stliport, %struct.stliport* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %323, 65535
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 4
  store i32 %324, i32* %326, align 8
  %327 = load %struct.stliport*, %struct.stliport** %6, align 8
  %328 = getelementptr inbounds %struct.stliport, %struct.stliport* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @P_RXIMIN, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i32 1, i32 0
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 5
  store i32 %334, i32* %336, align 4
  %337 = load %struct.stliport*, %struct.stliport** %6, align 8
  %338 = getelementptr inbounds %struct.stliport, %struct.stliport* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @P_RXITIME, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i32 1, i32 0
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 6
  store i32 %344, i32* %346, align 8
  %347 = load %struct.stliport*, %struct.stliport** %6, align 8
  %348 = getelementptr inbounds %struct.stliport, %struct.stliport* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @P_RXTHOLD, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  %353 = zext i1 %352 to i64
  %354 = select i1 %352, i32 1, i32 0
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 7
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  store i32 %354, i32* %358, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
