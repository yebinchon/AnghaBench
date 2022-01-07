; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_autosearch_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_autosearch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@QAM_64 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_8 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"using list for autosearch : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_autosearch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_autosearch_start(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %8, align 8
  store %struct.dib8000_state* %9, %struct.dib8000_state** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %11 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %15 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %22 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 13, i32* %27, align 8
  br label %28

28:                                               ; preds = %20, %1
  %29 = load i32, i32* @QAM_64, align 4
  %30 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %31 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i32 %29, i32* %36, align 4
  %37 = load i32, i32* @FEC_2_3, align 4
  %38 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %39 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %37, i32* %44, align 8
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %46 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %53 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %28
  %59 = load i8*, i8** @TRANSMISSION_MODE_8K, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %62 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i64 %60, i64* %64, align 8
  %65 = load i8*, i8** @GUARD_INTERVAL_1_8, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %68 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i64 %66, i64* %70, align 8
  store i32 7, i32* %6, align 4
  %71 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %73 = call i32 @dib8000_read_word(%struct.dib8000_state* %72, i32 0)
  %74 = and i32 %73, 40959
  %75 = or i32 %74, 8192
  %76 = call i32 @dib8000_write_word(%struct.dib8000_state* %71, i32 0, i32 %75)
  br label %227

77:                                               ; preds = %28
  %78 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %79 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %77
  %86 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %87 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  store i32 7, i32* %6, align 4
  %94 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %95 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %96 = call i32 @dib8000_read_word(%struct.dib8000_state* %95, i32 0)
  %97 = and i32 %96, 40959
  %98 = or i32 %97, 8192
  %99 = call i32 @dib8000_write_word(%struct.dib8000_state* %94, i32 0, i32 %98)
  br label %101

100:                                              ; preds = %85
  store i32 3, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %93
  br label %119

102:                                              ; preds = %77
  %103 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %104 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  store i32 2, i32* %6, align 4
  %111 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %112 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %113 = call i32 @dib8000_read_word(%struct.dib8000_state* %112, i32 0)
  %114 = and i32 %113, 40959
  %115 = or i32 %114, 8192
  %116 = call i32 @dib8000_write_word(%struct.dib8000_state* %111, i32 0, i32 %115)
  br label %118

117:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %110
  br label %119

119:                                              ; preds = %118, %101
  %120 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %121 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load i8*, i8** @TRANSMISSION_MODE_8K, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %131 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i64 %129, i64* %133, align 8
  br label %134

134:                                              ; preds = %127, %119
  %135 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %136 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load i8*, i8** @GUARD_INTERVAL_1_8, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %146 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i64 %144, i64* %148, align 8
  br label %149

149:                                              ; preds = %142, %134
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = trunc i32 %153 to i8
  %155 = call i32 @dib8000_set_channel(%struct.dib8000_state* %152, i8 zeroext %154, i32 1)
  store i32 1, i32* %3, align 4
  %156 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %157 = call i32 @dib8000_write_word(%struct.dib8000_state* %156, i32 6, i32 4)
  %158 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %159 = call i32 @dib8000_write_word(%struct.dib8000_state* %158, i32 7, i32 8)
  %160 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %161 = call i32 @dib8000_write_word(%struct.dib8000_state* %160, i32 8, i32 4096)
  %162 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %163 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 50, %167
  %169 = load i32, i32* %3, align 4
  %170 = mul nsw i32 %168, %169
  store i32 %170, i32* %4, align 4
  %171 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %172 = load i32, i32* %4, align 4
  %173 = ashr i32 %172, 16
  %174 = and i32 %173, 65535
  %175 = call i32 @dib8000_write_word(%struct.dib8000_state* %171, i32 11, i32 %174)
  %176 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %177 = load i32, i32* %4, align 4
  %178 = and i32 %177, 65535
  %179 = call i32 @dib8000_write_word(%struct.dib8000_state* %176, i32 12, i32 %178)
  %180 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %181 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 100, %185
  %187 = load i32, i32* %3, align 4
  %188 = mul nsw i32 %186, %187
  store i32 %188, i32* %4, align 4
  %189 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %190 = load i32, i32* %4, align 4
  %191 = ashr i32 %190, 16
  %192 = and i32 %191, 65535
  %193 = call i32 @dib8000_write_word(%struct.dib8000_state* %189, i32 13, i32 %192)
  %194 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %195 = load i32, i32* %4, align 4
  %196 = and i32 %195, 65535
  %197 = call i32 @dib8000_write_word(%struct.dib8000_state* %194, i32 14, i32 %196)
  %198 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %199 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 1000, %203
  %205 = load i32, i32* %3, align 4
  %206 = mul nsw i32 %204, %205
  store i32 %206, i32* %4, align 4
  %207 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %208 = load i32, i32* %4, align 4
  %209 = ashr i32 %208, 16
  %210 = and i32 %209, 65535
  %211 = call i32 @dib8000_write_word(%struct.dib8000_state* %207, i32 15, i32 %210)
  %212 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %213 = load i32, i32* %4, align 4
  %214 = and i32 %213, 65535
  %215 = call i32 @dib8000_write_word(%struct.dib8000_state* %212, i32 16, i32 %214)
  %216 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %217 = call i32 @dib8000_read_word(%struct.dib8000_state* %216, i32 0)
  store i32 %217, i32* %4, align 4
  %218 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %219 = load i32, i32* %4, align 4
  %220 = or i32 32768, %219
  %221 = call i32 @dib8000_write_word(%struct.dib8000_state* %218, i32 0, i32 %220)
  %222 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %223 = call i32 @dib8000_read_word(%struct.dib8000_state* %222, i32 1284)
  %224 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %225 = load i32, i32* %4, align 4
  %226 = call i32 @dib8000_write_word(%struct.dib8000_state* %224, i32 0, i32 %225)
  br label %227

227:                                              ; preds = %149, %58
  ret i32 0
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib8000_set_channel(%struct.dib8000_state*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
