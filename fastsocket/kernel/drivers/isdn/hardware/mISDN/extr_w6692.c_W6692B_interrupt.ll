; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692B_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692B_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, %struct.w6692_ch* }
%struct.w6692_ch = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@W_B_EXIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: B%d EXIR %02x\0A\00", align 1
@W_B_EXI_RME = common dso_local global i32 0, align 4
@W_B_STAR = common dso_local global i32 0, align 4
@W_B_STAR_RDOV = common dso_local global i32 0, align 4
@W_B_STAR_CRCE = common dso_local global i32 0, align 4
@W_B_STAR_RMB = common dso_local global i32 0, align 4
@FLG_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: B%d RDOV proto=%x\0A\00", align 1
@FLG_HDLC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: B%d CRC error\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: B%d message abort\0A\00", align 1
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RACK = common dso_local global i32 0, align 4
@W_B_CMDR_RRST = common dso_local global i32 0, align 4
@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@W_B_RBCL = common dso_local global i32 0, align 4
@W_B_FIFO_THRESH = common dso_local global i32 0, align 4
@W_B_EXI_RMR = common dso_local global i32 0, align 4
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@W_B_EXI_RDOV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: B%d RDOV IRQ proto=%x\0A\00", align 1
@W_B_EXI_XFR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: B%d star %02x\0A\00", align 1
@W_B_STAR_XDOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: B%d XDOW proto=%x\0A\00", align 1
@W_B_CMDR_XRST = common dso_local global i32 0, align 4
@W_B_EXI_XDUN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"%s: B%d XDUN proto=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*, i32)* @W6692B_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692B_interrupt(%struct.w6692_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.w6692_ch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %10 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %9, i32 0, i32 1
  %11 = load %struct.w6692_ch*, %struct.w6692_ch** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %11, i64 %13
  store %struct.w6692_ch* %14, %struct.w6692_ch** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %16 = load i32, i32* @W_B_EXIR, align 4
  %17 = call i32 @ReadW6692B(%struct.w6692_ch* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %19 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %22 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @W_B_EXI_RME, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %144

31:                                               ; preds = %2
  %32 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %33 = load i32, i32* @W_B_STAR, align 4
  %34 = call i32 @ReadW6692B(%struct.w6692_ch* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @W_B_STAR_RDOV, align 4
  %37 = load i32, i32* @W_B_STAR_CRCE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @W_B_STAR_RMB, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %125

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @W_B_STAR_RDOV, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load i32, i32* @FLG_ACTIVE, align 4
  %50 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %51 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = call i64 @test_bit(i32 %49, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %57 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %60 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %64 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %55, %48, %43
  %69 = load i32, i32* @FLG_HDLC, align 4
  %70 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %71 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = call i64 @test_bit(i32 %69, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @W_B_STAR_CRCE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %82 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %85 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @W_B_STAR_RMB, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %96 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %99 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %94, %89
  br label %104

104:                                              ; preds = %103, %68
  %105 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %106 = load i32, i32* @W_B_CMDR, align 4
  %107 = load i32, i32* @W_B_CMDR_RACK, align 4
  %108 = load i32, i32* @W_B_CMDR_RRST, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @W_B_CMDR_RACT, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @WriteW6692B(%struct.w6692_ch* %105, i32 %106, i32 %111)
  %113 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %114 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 7
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = icmp ne %struct.TYPE_3__* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %104
  %119 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %120 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 7
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = call i32 @skb_trim(%struct.TYPE_3__* %122, i32 0)
  br label %124

124:                                              ; preds = %118, %104
  br label %143

125:                                              ; preds = %31
  %126 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %127 = load i32, i32* @W_B_RBCL, align 4
  %128 = call i32 @ReadW6692B(%struct.w6692_ch* %126, i32 %127)
  %129 = load i32, i32* @W_B_FIFO_THRESH, align 4
  %130 = sub nsw i32 %129, 1
  %131 = and i32 %128, %130
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @W_B_FIFO_THRESH, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %125
  %137 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @W6692_empty_Bfifo(%struct.w6692_ch* %137, i32 %138)
  %140 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %141 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %140, i32 0, i32 0
  %142 = call i32 @recv_Bchannel(%struct.TYPE_4__* %141, i32 0)
  br label %143

143:                                              ; preds = %136, %124
  br label %144

144:                                              ; preds = %143, %2
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @W_B_EXI_RMR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %214

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @W_B_EXI_RME, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %156 = load i32, i32* @W_B_STAR, align 4
  %157 = call i32 @ReadW6692B(%struct.w6692_ch* %155, i32 %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @W_B_STAR_RDOV, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %158
  %164 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %165 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %168 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %172 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %170, i32 %174)
  %176 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %177 = load i32, i32* @W_B_CMDR, align 4
  %178 = load i32, i32* @W_B_CMDR_RACK, align 4
  %179 = load i32, i32* @W_B_CMDR_RRST, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @W_B_CMDR_RACT, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @WriteW6692B(%struct.w6692_ch* %176, i32 %177, i32 %182)
  br label %213

184:                                              ; preds = %158
  %185 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %186 = load i32, i32* @W_B_FIFO_THRESH, align 4
  %187 = call i32 @W6692_empty_Bfifo(%struct.w6692_ch* %185, i32 %186)
  %188 = load i32, i32* @FLG_TRANSPARENT, align 4
  %189 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %190 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = call i64 @test_bit(i32 %188, i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %184
  %195 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %196 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = icmp ne %struct.TYPE_3__* %198, null
  br i1 %199, label %200, label %212

200:                                              ; preds = %194
  %201 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %202 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 7
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %200
  %209 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %210 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %209, i32 0, i32 0
  %211 = call i32 @recv_Bchannel(%struct.TYPE_4__* %210, i32 0)
  br label %212

212:                                              ; preds = %208, %200, %194, %184
  br label %213

213:                                              ; preds = %212, %163
  br label %214

214:                                              ; preds = %213, %144
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @W_B_EXI_RDOV, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %246

219:                                              ; preds = %214
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @W_B_STAR_RDOV, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %245, label %224

224:                                              ; preds = %219
  %225 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %226 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %229 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %233 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %227, i32 %231, i32 %235)
  %237 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %238 = load i32, i32* @W_B_CMDR, align 4
  %239 = load i32, i32* @W_B_CMDR_RACK, align 4
  %240 = load i32, i32* @W_B_CMDR_RRST, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @W_B_CMDR_RACT, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @WriteW6692B(%struct.w6692_ch* %237, i32 %238, i32 %243)
  br label %245

245:                                              ; preds = %224, %219
  br label %246

246:                                              ; preds = %245, %214
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* @W_B_EXI_XFR, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %322

251:                                              ; preds = %246
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* @W_B_EXI_RME, align 4
  %254 = load i32, i32* @W_B_EXI_RMR, align 4
  %255 = or i32 %253, %254
  %256 = and i32 %252, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %251
  %259 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %260 = load i32, i32* @W_B_STAR, align 4
  %261 = call i32 @ReadW6692B(%struct.w6692_ch* %259, i32 %260)
  store i32 %261, i32* %8, align 4
  %262 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %263 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %266 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %264, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %258, %251
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @W_B_STAR_XDOW, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %313

276:                                              ; preds = %271
  %277 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %278 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %281 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %285 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %279, i32 %283, i32 %287)
  %289 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %290 = load i32, i32* @W_B_CMDR, align 4
  %291 = load i32, i32* @W_B_CMDR_XRST, align 4
  %292 = load i32, i32* @W_B_CMDR_RACT, align 4
  %293 = or i32 %291, %292
  %294 = call i32 @WriteW6692B(%struct.w6692_ch* %289, i32 %290, i32 %293)
  %295 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %296 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %276
  %301 = load i32, i32* @FLG_TRANSPARENT, align 4
  %302 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %303 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 2
  %305 = call i64 @test_bit(i32 %301, i32* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %300
  %308 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %309 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 1
  store i64 0, i64* %310, align 8
  br label %311

311:                                              ; preds = %307, %300
  br label %312

312:                                              ; preds = %311, %276
  br label %313

313:                                              ; preds = %312, %271
  %314 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %315 = call i32 @send_next(%struct.w6692_ch* %314)
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @W_B_EXI_XDUN, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  br label %366

321:                                              ; preds = %313
  br label %322

322:                                              ; preds = %321, %246
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @W_B_EXI_XDUN, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %366

327:                                              ; preds = %322
  %328 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %329 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %332 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %336 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %330, i32 %334, i32 %338)
  %340 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %341 = load i32, i32* @W_B_CMDR, align 4
  %342 = load i32, i32* @W_B_CMDR_XRST, align 4
  %343 = load i32, i32* @W_B_CMDR_RACT, align 4
  %344 = or i32 %342, %343
  %345 = call i32 @WriteW6692B(%struct.w6692_ch* %340, i32 %341, i32 %344)
  %346 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %347 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %327
  %352 = load i32, i32* @FLG_TRANSPARENT, align 4
  %353 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %354 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 2
  %356 = call i64 @test_bit(i32 %352, i32* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %351
  %359 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %360 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 1
  store i64 0, i64* %361, align 8
  br label %362

362:                                              ; preds = %358, %351
  br label %363

363:                                              ; preds = %362, %327
  %364 = load %struct.w6692_ch*, %struct.w6692_ch** %5, align 8
  %365 = call i32 @send_next(%struct.w6692_ch* %364)
  br label %366

366:                                              ; preds = %320, %363, %322
  ret void
}

declare dso_local i32 @ReadW6692B(%struct.w6692_ch*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WriteW6692B(%struct.w6692_ch*, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @W6692_empty_Bfifo(%struct.w6692_ch*, i32) #1

declare dso_local i32 @recv_Bchannel(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @send_next(%struct.w6692_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
