; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0297.c_stv0297_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0297.c_stv0297_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.stv0297_state* }
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_7__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.stv0297_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @stv0297_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0297_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.stv0297_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.stv0297_state*, %struct.stv0297_state** %17, align 8
  store %struct.stv0297_state* %18, %struct.stv0297_state** %6, align 8
  %19 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %26 [
    i32 131, label %24
    i32 129, label %24
    i32 128, label %24
    i32 132, label %25
    i32 130, label %25
  ]

24:                                               ; preds = %2, %2, %2
  store i32 100, i32* %10, align 4
  store i32 1000, i32* %11, align 4
  br label %29

25:                                               ; preds = %2, %2
  store i32 200, i32* %10, align 4
  store i32 500, i32* %11, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %354

29:                                               ; preds = %25, %24
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %34 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %40, 133
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 134, i32 133
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %39, %29
  store i32 -330, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  switch i32 %45, label %52 [
    i32 134, label %46
    i32 133, label %47
  ]

46:                                               ; preds = %44
  br label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %354

55:                                               ; preds = %47, %46
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %57 = call i32 @stv0297_init(%struct.dvb_frontend* %56)
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %61, align 8
  %63 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %55
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %68, align 8
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %71 = bitcast %struct.dvb_frontend* %70 to %struct.dvb_frontend.1*
  %72 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %73 = call i32 %69(%struct.dvb_frontend.1* %71, %struct.dvb_frontend_parameters* %72)
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %76, align 8
  %78 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %64
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %81 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %82, align 8
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %85 = bitcast %struct.dvb_frontend* %84 to %struct.dvb_frontend.0*
  %86 = call i32 %83(%struct.dvb_frontend.0* %85, i32 0)
  br label %87

87:                                               ; preds = %79, %64
  br label %88

88:                                               ; preds = %87, %55
  %89 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %90 = call i32 @stv0297_writereg(%struct.stv0297_state* %89, i32 130, i32 0)
  %91 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %92 = call i32 @stv0297_set_initialdemodfreq(%struct.stv0297_state* %91, i32 7250)
  %93 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %94 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %93, i32 67, i32 16, i32 0)
  %95 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %96 = call i32 @stv0297_writereg(%struct.stv0297_state* %95, i32 65, i32 0)
  %97 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %98 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %97, i32 66, i32 3, i32 1)
  %99 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %100 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %99, i32 54, i32 96, i32 0)
  %101 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %102 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %101, i32 54, i32 24, i32 0)
  %103 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %104 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %103, i32 113, i32 128, i32 128)
  %105 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %106 = call i32 @stv0297_writereg(%struct.stv0297_state* %105, i32 114, i32 0)
  %107 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %108 = call i32 @stv0297_writereg(%struct.stv0297_state* %107, i32 115, i32 0)
  %109 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %110 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %109, i32 116, i32 15, i32 0)
  %111 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %112 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %111, i32 67, i32 8, i32 0)
  %113 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %114 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %113, i32 113, i32 128, i32 0)
  %115 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %116 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %115, i32 90, i32 32, i32 32)
  %117 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %118 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %117, i32 91, i32 2, i32 2)
  %119 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %120 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %119, i32 91, i32 2, i32 0)
  %121 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %122 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %121, i32 91, i32 1, i32 0)
  %123 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %124 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %123, i32 90, i32 64, i32 64)
  %125 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %126 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %125, i32 106, i32 1, i32 0)
  %127 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %128 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %127, i32 129, i32 1, i32 1)
  %129 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %130 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %129, i32 129, i32 1, i32 0)
  %131 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %132 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %131, i32 131, i32 32, i32 32)
  %133 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %134 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %133, i32 131, i32 32, i32 0)
  %135 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %136 = call i32 @stv0297_readreg(%struct.stv0297_state* %135, i32 0)
  %137 = and i32 %136, 15
  store i32 %137, i32* %7, align 4
  %138 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %139 = call i32 @stv0297_readreg(%struct.stv0297_state* %138, i32 1)
  %140 = ashr i32 %139, 4
  store i32 %140, i32* %8, align 4
  %141 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %142 = call i32 @stv0297_readreg(%struct.stv0297_state* %141, i32 1)
  %143 = and i32 %142, 15
  store i32 %143, i32* %9, align 4
  %144 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %145 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %144, i32 132, i32 1, i32 1)
  %146 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %147 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %146, i32 132, i32 1, i32 0)
  %148 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %148, i32 0, i32 15, i32 %149)
  %151 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %152 = load i32, i32* %8, align 4
  %153 = shl i32 %152, 4
  %154 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %151, i32 1, i32 240, i32 %153)
  %155 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %155, i32 1, i32 15, i32 %156)
  %158 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %159 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %158, i32 135, i32 128, i32 0)
  %160 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %161 = call i32 @stv0297_writereg(%struct.stv0297_state* %160, i32 99, i32 0)
  %162 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %163 = call i32 @stv0297_writereg(%struct.stv0297_state* %162, i32 100, i32 0)
  %164 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %165 = call i32 @stv0297_writereg(%struct.stv0297_state* %164, i32 101, i32 0)
  %166 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %167 = call i32 @stv0297_writereg(%struct.stv0297_state* %166, i32 102, i32 0)
  %168 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %169 = call i32 @stv0297_writereg(%struct.stv0297_state* %168, i32 103, i32 0)
  %170 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %171 = call i32 @stv0297_writereg(%struct.stv0297_state* %170, i32 104, i32 0)
  %172 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %173 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %172, i32 105, i32 15, i32 0)
  %174 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %175 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %176 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @stv0297_set_qam(%struct.stv0297_state* %174, i32 %179)
  %181 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %182 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %183 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %186, 1000
  %188 = call i32 @stv0297_set_symbolrate(%struct.stv0297_state* %181, i32 %187)
  %189 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %192 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sdiv i32 %195, 1000
  %197 = call i32 @stv0297_set_sweeprate(%struct.stv0297_state* %189, i32 %190, i32 %196)
  %198 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @stv0297_set_carrieroffset(%struct.stv0297_state* %198, i32 %199)
  %201 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %202 = load i32, i32* %15, align 4
  %203 = call i32 @stv0297_set_inversion(%struct.stv0297_state* %201, i32 %202)
  %204 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %205 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 132
  br i1 %209, label %217, label %210

210:                                              ; preds = %88
  %211 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %212 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 130
  br i1 %216, label %217, label %220

217:                                              ; preds = %210, %88
  %218 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %219 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %218, i32 136, i32 8, i32 0)
  br label %223

220:                                              ; preds = %210
  %221 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %222 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %221, i32 136, i32 8, i32 8)
  br label %223

223:                                              ; preds = %220, %217
  %224 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %225 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %224, i32 90, i32 32, i32 0)
  %226 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %227 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %226, i32 106, i32 1, i32 1)
  %228 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %229 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %228, i32 67, i32 64, i32 64)
  %230 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %231 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %230, i32 91, i32 48, i32 0)
  %232 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %233 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %232, i32 3, i32 12, i32 12)
  %234 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %235 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %234, i32 3, i32 3, i32 3)
  %236 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %237 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %236, i32 67, i32 16, i32 16)
  %238 = load i64, i64* @jiffies, align 8
  store i64 %238, i64* %13, align 8
  %239 = load i64, i64* @jiffies, align 8
  %240 = call i64 @msecs_to_jiffies(i32 2000)
  %241 = add i64 %239, %240
  store i64 %241, i64* %14, align 8
  br label %242

242:                                              ; preds = %254, %223
  %243 = load i64, i64* @jiffies, align 8
  %244 = load i64, i64* %14, align 8
  %245 = call i64 @time_before(i64 %243, i64 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %242
  %248 = call i32 @msleep(i32 10)
  %249 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %250 = call i32 @stv0297_readreg(%struct.stv0297_state* %249, i32 67)
  %251 = and i32 %250, 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  br label %255

254:                                              ; preds = %247
  br label %242

255:                                              ; preds = %253, %242
  %256 = load i64, i64* @jiffies, align 8
  %257 = load i64, i64* %14, align 8
  %258 = call i64 @time_after(i64 %256, i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %351

261:                                              ; preds = %255
  %262 = call i32 @msleep(i32 20)
  %263 = load i64, i64* @jiffies, align 8
  %264 = call i64 @msecs_to_jiffies(i32 500)
  %265 = add i64 %263, %264
  store i64 %265, i64* %14, align 8
  br label %266

266:                                              ; preds = %278, %261
  %267 = load i64, i64* @jiffies, align 8
  %268 = load i64, i64* %14, align 8
  %269 = call i64 @time_before(i64 %267, i64 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %266
  %272 = call i32 @msleep(i32 10)
  %273 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %274 = call i32 @stv0297_readreg(%struct.stv0297_state* %273, i32 130)
  %275 = and i32 %274, 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %271
  br label %279

278:                                              ; preds = %271
  br label %266

279:                                              ; preds = %277, %266
  %280 = load i64, i64* @jiffies, align 8
  %281 = load i64, i64* %14, align 8
  %282 = call i64 @time_after(i64 %280, i64 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  br label %351

285:                                              ; preds = %279
  %286 = load i64, i64* @jiffies, align 8
  %287 = load i32, i32* %10, align 4
  %288 = call i64 @msecs_to_jiffies(i32 %287)
  %289 = add i64 %286, %288
  store i64 %289, i64* %14, align 8
  br label %290

290:                                              ; preds = %302, %285
  %291 = load i64, i64* @jiffies, align 8
  %292 = load i64, i64* %14, align 8
  %293 = call i64 @time_before(i64 %291, i64 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %290
  %296 = call i32 @msleep(i32 10)
  %297 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %298 = call i32 @stv0297_readreg(%struct.stv0297_state* %297, i32 130)
  %299 = and i32 %298, 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  br label %303

302:                                              ; preds = %295
  br label %290

303:                                              ; preds = %301, %290
  %304 = load i64, i64* @jiffies, align 8
  %305 = load i64, i64* %14, align 8
  %306 = call i64 @time_after(i64 %304, i64 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %303
  br label %351

309:                                              ; preds = %303
  %310 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %311 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %310, i32 106, i32 1, i32 0)
  %312 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %313 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %312, i32 136, i32 8, i32 0)
  %314 = load i64, i64* @jiffies, align 8
  %315 = call i64 @msecs_to_jiffies(i32 20)
  %316 = add i64 %314, %315
  store i64 %316, i64* %14, align 8
  br label %317

317:                                              ; preds = %329, %309
  %318 = load i64, i64* @jiffies, align 8
  %319 = load i64, i64* %14, align 8
  %320 = call i64 @time_before(i64 %318, i64 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %317
  %323 = call i32 @msleep(i32 10)
  %324 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %325 = call i32 @stv0297_readreg(%struct.stv0297_state* %324, i32 223)
  %326 = and i32 %325, 128
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %322
  br label %330

329:                                              ; preds = %322
  br label %317

330:                                              ; preds = %328, %317
  %331 = load i64, i64* @jiffies, align 8
  %332 = load i64, i64* %14, align 8
  %333 = call i64 @time_after(i64 %331, i64 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  br label %351

336:                                              ; preds = %330
  %337 = call i32 @msleep(i32 100)
  %338 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %339 = call i32 @stv0297_readreg(%struct.stv0297_state* %338, i32 223)
  %340 = and i32 %339, 128
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %336
  br label %351

343:                                              ; preds = %336
  %344 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %345 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %344, i32 90, i32 64, i32 0)
  %346 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %347 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %350 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 8
  store i32 0, i32* %3, align 4
  br label %354

351:                                              ; preds = %342, %335, %308, %284, %260
  %352 = load %struct.stv0297_state*, %struct.stv0297_state** %6, align 8
  %353 = call i32 @stv0297_writereg_mask(%struct.stv0297_state* %352, i32 106, i32 1, i32 0)
  store i32 0, i32* %3, align 4
  br label %354

354:                                              ; preds = %351, %343, %52, %26
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

declare dso_local i32 @stv0297_init(%struct.dvb_frontend*) #1

declare dso_local i32 @stv0297_writereg(%struct.stv0297_state*, i32, i32) #1

declare dso_local i32 @stv0297_set_initialdemodfreq(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_writereg_mask(%struct.stv0297_state*, i32, i32, i32) #1

declare dso_local i32 @stv0297_readreg(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_set_qam(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_set_symbolrate(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_set_sweeprate(%struct.stv0297_state*, i32, i32) #1

declare dso_local i32 @stv0297_set_carrieroffset(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_set_inversion(%struct.stv0297_state*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
