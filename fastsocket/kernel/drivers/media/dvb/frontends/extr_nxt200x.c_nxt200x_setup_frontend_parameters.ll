; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt200x_setup_frontend_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt200x_setup_frontend_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.nxt200x_state* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.nxt200x_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_frontend_parameters = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @nxt200x_setup_frontend_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt200x_setup_frontend_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.nxt200x_state*, align 8
  %7 = alloca [5 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.nxt200x_state*, %struct.nxt200x_state** %9, align 8
  store %struct.nxt200x_state* %10, %struct.nxt200x_state** %6, align 8
  %11 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %12 = call i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state* %11)
  %13 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %14 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 4, i32* %18, align 16
  %19 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %21 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %19, i32 20, i32* %20, i32 1)
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %22, align 16
  %23 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %25 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %23, i32 23, i32* %24, i32 1)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %64 [
    i32 129, label %32
    i32 130, label %32
    i32 128, label %48
  ]

32:                                               ; preds = %26, %26
  %33 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %34 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.dvb_frontend*, i32)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %41 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %43, align 8
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %46 = call i32 %44(%struct.dvb_frontend* %45, i32 1)
  br label %47

47:                                               ; preds = %39, %32
  br label %67

48:                                               ; preds = %26
  %49 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %50 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.dvb_frontend*, i32)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %57 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %59, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %62 = call i32 %60(%struct.dvb_frontend* %61, i32 0)
  br label %63

63:                                               ; preds = %55, %48
  br label %67

64:                                               ; preds = %26
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %335

67:                                               ; preds = %63, %47
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %69 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i32*, i32)** %78, align 8
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %81 = bitcast %struct.dvb_frontend* %80 to %struct.dvb_frontend.0*
  %82 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %84 = call i32 %79(%struct.dvb_frontend.0* %81, %struct.dvb_frontend_parameters* %82, i32* %83, i32 5)
  %85 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %86 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %87 = call i32 @nxt200x_writetuner(%struct.nxt200x_state* %85, i32* %86)
  br label %88

88:                                               ; preds = %74, %67
  %89 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %90 = call i32 @nxt200x_agc_reset(%struct.nxt200x_state* %89)
  %91 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %100 [
    i32 129, label %96
    i32 130, label %96
    i32 128, label %98
  ]

96:                                               ; preds = %88, %88
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 116, i32* %97, align 16
  br label %103

98:                                               ; preds = %88
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 112, i32* %99, align 16
  br label %103

100:                                              ; preds = %88
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %335

103:                                              ; preds = %98, %96
  %104 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %106 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %104, i32 66, i32* %105, i32 1)
  %107 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %108 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %114 [
    i32 132, label %110
    i32 131, label %112
  ]

110:                                              ; preds = %103
  %111 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 135, i32* %111, align 16
  br label %117

112:                                              ; preds = %103
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 7, i32* %113, align 16
  br label %117

114:                                              ; preds = %103
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %335

117:                                              ; preds = %112, %110
  %118 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %119 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %120 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %118, i32 87, i32* %119, i32 1)
  %121 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 16, i32* %121, align 16
  %122 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %124 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %134 [
    i32 132, label %126
    i32 131, label %130
  ]

126:                                              ; preds = %117
  %127 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %128 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %129 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %127, i32 88, i32* %128, i32 2)
  br label %137

130:                                              ; preds = %117
  %131 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %133 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %131, i32 88, i32* %132, i32 2)
  br label %137

134:                                              ; preds = %117
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %335

137:                                              ; preds = %130, %126
  %138 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %139 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %149 [
    i32 129, label %143
    i32 130, label %145
    i32 128, label %147
  ]

143:                                              ; preds = %137
  %144 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 104, i32* %144, align 16
  br label %152

145:                                              ; preds = %137
  %146 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 100, i32* %146, align 16
  br label %152

147:                                              ; preds = %137
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 96, i32* %148, align 16
  br label %152

149:                                              ; preds = %137
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %335

152:                                              ; preds = %147, %145, %143
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %153, align 4
  %154 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %155 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %165 [
    i32 132, label %157
    i32 131, label %161
  ]

157:                                              ; preds = %152
  %158 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %160 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %158, i32 92, i32* %159, i32 2)
  br label %168

161:                                              ; preds = %152
  %162 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %163 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %164 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %162, i32 92, i32* %163, i32 2)
  br label %168

165:                                              ; preds = %152
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %335

168:                                              ; preds = %161, %157
  %169 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 5, i32* %169, align 16
  %170 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %171 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %172 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %170, i32 67, i32* %171, i32 1)
  %173 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %174 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 131
  br i1 %176, label %177, label %183

177:                                              ; preds = %168
  %178 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %178, align 16
  %179 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %179, align 4
  %180 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %181 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %182 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %180, i32 70, i32* %181, i32 2)
  br label %183

183:                                              ; preds = %177, %168
  %184 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 128, i32* %184, align 16
  %185 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %185, align 4
  %186 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %187 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  switch i32 %188, label %197 [
    i32 132, label %189
    i32 131, label %193
  ]

189:                                              ; preds = %183
  %190 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %191 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %192 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %190, i32 75, i32* %191, i32 2)
  br label %200

193:                                              ; preds = %183
  %194 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %195 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %196 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %194, i32 75, i32* %195, i32 2)
  br label %200

197:                                              ; preds = %183
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %3, align 4
  br label %335

200:                                              ; preds = %193, %189
  %201 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %201, align 16
  %202 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %203 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %204 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %202, i32 77, i32* %203, i32 1)
  %205 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 68, i32* %205, align 16
  %206 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %207 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %208 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %206, i32 85, i32* %207, i32 1)
  %209 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 4, i32* %209, align 16
  %210 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %211 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %212 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %210, i32 65, i32* %211, i32 1)
  %213 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %214 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 131
  br i1 %216, label %217, label %270

217:                                              ; preds = %200
  %218 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %220 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %218, i32 128, i32* %219, i32 1)
  %221 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 36, i32* %221, align 16
  %222 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %223 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %224 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %222, i32 128, i32* %223, i32 1)
  %225 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %226 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %227 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %225, i32 8, i32* %226, i32 1)
  %228 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 16, i32* %228, align 16
  %229 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %230 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %231 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %229, i32 8, i32* %230, i32 1)
  %232 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %233 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %234 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %232, i32 8, i32* %233, i32 1)
  %235 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %235, align 16
  %236 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %237 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %238 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %236, i32 8, i32* %237, i32 1)
  %239 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %240 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %241 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %239, i32 128, i32* %240, i32 1)
  %242 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 4, i32* %242, align 16
  %243 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %244 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %245 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %243, i32 128, i32* %244, i32 1)
  %246 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %246, align 16
  %247 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %248 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %249 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %247, i32 129, i32* %248, i32 1)
  %250 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 128, i32* %250, align 16
  %251 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %251, align 4
  %252 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %252, align 8
  %253 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %254 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %255 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %253, i32 130, i32* %254, i32 3)
  %256 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %257 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %258 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %256, i32 136, i32* %257, i32 1)
  %259 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 17, i32* %259, align 16
  %260 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %261 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %262 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %260, i32 136, i32* %261, i32 1)
  %263 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %264 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %265 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %263, i32 128, i32* %264, i32 1)
  %266 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 68, i32* %266, align 16
  %267 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %268 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %269 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %267, i32 128, i32* %268, i32 1)
  br label %270

270:                                              ; preds = %217, %200
  %271 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %272 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  switch i32 %275, label %282 [
    i32 129, label %276
    i32 130, label %278
    i32 128, label %280
  ]

276:                                              ; preds = %270
  %277 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 2, i32* %277, align 16
  br label %285

278:                                              ; preds = %270
  %279 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 3, i32* %279, align 16
  br label %285

280:                                              ; preds = %270
  %281 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %281, align 16
  br label %285

282:                                              ; preds = %270
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %3, align 4
  br label %335

285:                                              ; preds = %280, %278, %276
  %286 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %287 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %288 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %286, i32 48, i32* %287, i32 1)
  %289 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %289, align 16
  %290 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %291 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %292 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %290, i32 65, i32* %291, i32 1)
  %293 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 128, i32* %293, align 16
  %294 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %294, align 4
  %295 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %296 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  switch i32 %297, label %312 [
    i32 132, label %298
    i32 131, label %305
  ]

298:                                              ; preds = %285
  %299 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %300 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %301 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %299, i32 73, i32* %300, i32 2)
  %302 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %303 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %304 = call i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state* %302, i32 75, i32* %303, i32 2)
  br label %315

305:                                              ; preds = %285
  %306 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %307 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %308 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %306, i32 73, i32* %307, i32 2)
  %309 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %310 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %311 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %309, i32 75, i32* %310, i32 2)
  br label %315

312:                                              ; preds = %285
  %313 = load i32, i32* @EINVAL, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %3, align 4
  br label %335

315:                                              ; preds = %305, %298
  %316 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 4, i32* %316, align 16
  %317 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %318 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %319 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %317, i32 65, i32* %318, i32 1)
  %320 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %321 = call i32 @nxt200x_microcontroller_start(%struct.nxt200x_state* %320)
  %322 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %323 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 %324, 131
  br i1 %325, label %326, label %334

326:                                              ; preds = %315
  %327 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %328 = call i32 @nxt2004_microcontroller_init(%struct.nxt200x_state* %327)
  %329 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 240, i32* %329, align 16
  %330 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %330, align 4
  %331 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %332 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %333 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %331, i32 92, i32* %332, i32 2)
  br label %334

334:                                              ; preds = %326, %315
  store i32 0, i32* %3, align 4
  br label %335

335:                                              ; preds = %334, %312, %282, %197, %165, %149, %134, %114, %100, %64
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt200x_writebytes(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_writetuner(%struct.nxt200x_state*, i32*) #1

declare dso_local i32 @nxt200x_agc_reset(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt200x_writereg_multibyte(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_microcontroller_start(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt2004_microcontroller_init(%struct.nxt200x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
