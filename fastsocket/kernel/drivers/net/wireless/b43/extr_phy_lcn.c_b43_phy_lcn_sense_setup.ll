; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_sense_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lcn.c_b43_phy_lcn_sense_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@__const.b43_phy_lcn_sense_setup.save_phy_regs = private unnamed_addr constant [14 x [2 x i32]] [[2 x i32] [i32 1283, i32 0], [2 x i32] [i32 1188, i32 0], [2 x i32] [i32 1232, i32 0], [2 x i32] [i32 1241, i32 0], [2 x i32] [i32 1242, i32 0], [2 x i32] [i32 1190, i32 0], [2 x i32] [i32 2360, i32 0], [2 x i32] [i32 2361, i32 0], [2 x i32] [i32 1240, i32 0], [2 x i32] [i32 1232, i32 0], [2 x i32] [i32 1239, i32 0], [2 x i32] [i32 1189, i32 0], [2 x i32] [i32 1037, i32 0], [2 x i32] [i32 1186, i32 0]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_lcn_sense_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_sense_setup(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x [2 x i32]], align 16
  %12 = alloca [14 x [2 x i32]], align 16
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = bitcast [6 x [2 x i32]]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 48, i1 false)
  %15 = bitcast i8* %14 to [6 x [2 x i32]]*
  %16 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i32 0, i32 0
  store i32 7, i32* %17, align 16
  %18 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %15, i32 0, i32 1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 0
  store i32 255, i32* %19, align 8
  %20 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %15, i32 0, i32 2
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 287, i32* %21, align 16
  %22 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %15, i32 0, i32 3
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i32 0, i32 0
  store i32 5, i32* %23, align 8
  %24 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %15, i32 0, i32 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i32 0, i32 0
  store i32 37, i32* %25, align 16
  %26 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %15, i32 0, i32 5
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i32 0, i32 0
  store i32 274, i32* %27, align 8
  %28 = bitcast [14 x [2 x i32]]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([14 x [2 x i32]]* @__const.b43_phy_lcn_sense_setup.save_phy_regs to i8*), i64 112, i1 false)
  %29 = call i32 @msleep(i32 1)
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %45, %2
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %11, i64 0, i64 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @b43_radio_read(%struct.b43_wldev* %34, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %11, i64 0, i64 %42
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 0, i64 1
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %30

48:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 14
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [14 x [2 x i32]], [14 x [2 x i32]]* %12, i64 0, i64 %55
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %56, i64 0, i64 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @b43_phy_read(%struct.b43_wldev* %53, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [14 x [2 x i32]], [14 x [2 x i32]]* %12, i64 0, i64 %61
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %62, i64 0, i64 1
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %69 = call i32 @b43_mac_suspend(%struct.b43_wldev* %68)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = call i32 @b43_radio_read(%struct.b43_wldev* %70, i32 1188)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %73 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %79 = call i32 @b43_radio_set(%struct.b43_wldev* %78, i32 7, i32 1)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = call i32 @b43_radio_set(%struct.b43_wldev* %80, i32 255, i32 16)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = call i32 @b43_radio_set(%struct.b43_wldev* %82, i32 287, i32 4)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %85 = call i32 @b43_phy_mask(%struct.b43_wldev* %84, i32 1283, i32 -2)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %87 = call i32 @b43_phy_mask(%struct.b43_wldev* %86, i32 1283, i32 -5)
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = call i32 @b43_phy_mask(%struct.b43_wldev* %88, i32 1188, i32 -16385)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %91 = call i32 @b43_phy_mask(%struct.b43_wldev* %90, i32 1188, i32 -32769)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = call i32 @b43_phy_mask(%struct.b43_wldev* %92, i32 1232, i32 -33)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %95 = call i32 @b43_phy_set(%struct.b43_wldev* %94, i32 1189, i32 255)
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %97 = call i32 @b43_phy_maskset(%struct.b43_wldev* %96, i32 1189, i32 -28673, i32 20480)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = call i32 @b43_phy_mask(%struct.b43_wldev* %98, i32 1189, i32 -1793)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %101 = call i32 @b43_phy_maskset(%struct.b43_wldev* %100, i32 1037, i32 -256, i32 64)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %103 = call i32 @b43_phy_maskset(%struct.b43_wldev* %102, i32 1037, i32 -1793, i32 1536)
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %105 = call i32 @b43_phy_maskset(%struct.b43_wldev* %104, i32 1186, i32 -256, i32 64)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %107 = call i32 @b43_phy_maskset(%struct.b43_wldev* %106, i32 1186, i32 -1793, i32 1536)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = call i32 @b43_phy_maskset(%struct.b43_wldev* %108, i32 1241, i32 -113, i32 32)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %111 = call i32 @b43_phy_maskset(%struct.b43_wldev* %110, i32 1241, i32 -1793, i32 768)
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %113 = call i32 @b43_phy_maskset(%struct.b43_wldev* %112, i32 1241, i32 -28673, i32 4096)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %115 = call i32 @b43_phy_mask(%struct.b43_wldev* %114, i32 1242, i32 -4097)
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %117 = call i32 @b43_phy_set(%struct.b43_wldev* %116, i32 1242, i32 8192)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %119 = call i32 @b43_phy_set(%struct.b43_wldev* %118, i32 1190, i32 32768)
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %121 = call i32 @b43_radio_write(%struct.b43_wldev* %120, i32 37, i32 12)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %123 = call i32 @b43_radio_set(%struct.b43_wldev* %122, i32 5, i32 8)
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %125 = call i32 @b43_phy_set(%struct.b43_wldev* %124, i32 2360, i32 4)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %127 = call i32 @b43_phy_set(%struct.b43_wldev* %126, i32 2361, i32 4)
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %129 = call i32 @b43_phy_set(%struct.b43_wldev* %128, i32 1188, i32 4096)
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %131 = call i32 @B43_LCNTAB16(i32 8, i32 6)
  %132 = call i32 @b43_lcntab_write(%struct.b43_wldev* %130, i32 %131, i32 1600)
  %133 = load i32, i32* %4, align 4
  switch i32 %133, label %146 [
    i32 129, label %134
    i32 128, label %141
  ]

134:                                              ; preds = %67
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %136 = call i32 @b43_phy_set(%struct.b43_wldev* %135, i32 1239, i32 8)
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %138 = call i32 @b43_phy_maskset(%struct.b43_wldev* %137, i32 1239, i32 -28673, i32 4096)
  store i32 8, i32* %5, align 4
  store i32 4, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %140 = call i32 @b43_radio_set(%struct.b43_wldev* %139, i32 130, i32 32)
  br label %146

141:                                              ; preds = %67
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %143 = call i32 @b43_phy_set(%struct.b43_wldev* %142, i32 1239, i32 8)
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %145 = call i32 @b43_phy_maskset(%struct.b43_wldev* %144, i32 1239, i32 -28673, i32 12288)
  store i32 7, i32* %5, align 4
  store i32 10, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %146

146:                                              ; preds = %67, %141, %134
  %147 = load i32, i32* %5, align 4
  %148 = shl i32 %147, 4
  %149 = or i32 512, %148
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %149, %150
  store i32 %151, i32* %8, align 4
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %153 = call i32 @b43_phy_set(%struct.b43_wldev* %152, i32 1240, i32 1)
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %155 = load i32, i32* %8, align 4
  %156 = shl i32 %155, 2
  %157 = call i32 @b43_phy_maskset(%struct.b43_wldev* %154, i32 1240, i32 -4093, i32 %156)
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %159 = call i32 @b43_phy_set(%struct.b43_wldev* %158, i32 1240, i32 2)
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = shl i32 %161, 12
  %163 = call i32 @b43_phy_maskset(%struct.b43_wldev* %160, i32 1240, i32 -28673, i32 %162)
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %165 = call i32 @b43_phy_set(%struct.b43_wldev* %164, i32 1232, i32 32)
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %167 = call i32 @b43_radio_write(%struct.b43_wldev* %166, i32 274, i32 6)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %169 = call i32 @b43_dummy_transmission(%struct.b43_wldev* %168, i32 1, i32 0)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %171 = call i32 @b43_phy_read(%struct.b43_wldev* %170, i32 1142)
  %172 = and i32 %171, 32768
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %146
  %175 = call i32 @udelay(i32 10)
  br label %176

176:                                              ; preds = %174, %146
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %193, %176
  %178 = load i32, i32* %10, align 4
  %179 = icmp slt i32 %178, 6
  br i1 %179, label %180, label %196

180:                                              ; preds = %177
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %11, i64 0, i64 %183
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %184, i64 0, i64 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* %11, i64 0, i64 %188
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %189, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @b43_radio_write(%struct.b43_wldev* %181, i32 %186, i32 %191)
  br label %193

193:                                              ; preds = %180
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  br label %177

196:                                              ; preds = %177
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %213, %196
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %198, 14
  br i1 %199, label %200, label %216

200:                                              ; preds = %197
  %201 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [14 x [2 x i32]], [14 x [2 x i32]]* %12, i64 0, i64 %203
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %204, i64 0, i64 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [14 x [2 x i32]], [14 x [2 x i32]]* %12, i64 0, i64 %208
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %209, i64 0, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @b43_phy_write(%struct.b43_wldev* %201, i32 %206, i32 %211)
  br label %213

213:                                              ; preds = %200
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %197

216:                                              ; preds = %197
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @b43_radio_write(%struct.b43_wldev* %217, i32 1188, i32 %218)
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %221 = call i32 @b43_mac_enable(%struct.b43_wldev* %220)
  %222 = call i32 @msleep(i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #2

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_lcntab_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @B43_LCNTAB16(i32, i32) #2

declare dso_local i32 @b43_dummy_transmission(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
