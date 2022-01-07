; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i32, i64, %struct.bufdesc*, %struct.bufdesc*, i32**, i64, i64, %struct.bufdesc*, %struct.bufdesc*, %struct.bufdesc* }
%struct.bufdesc = type { i32, i64 }

@FEC_ECNTRL = common dso_local global i64 0, align 8
@FEC_IEVENT = common dso_local global i64 0, align 8
@FEC_GRP_HASH_TABLE_HIGH = common dso_local global i64 0, align 8
@FEC_GRP_HASH_TABLE_LOW = common dso_local global i64 0, align 8
@FEC_HASH_TABLE_HIGH = common dso_local global i64 0, align 8
@FEC_HASH_TABLE_LOW = common dso_local global i64 0, align 8
@PKT_MAXBLR_SIZE = common dso_local global i32 0, align 4
@FEC_R_BUFF_SIZE = common dso_local global i64 0, align 8
@FEC_R_DES_START = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@FEC_X_DES_START = common dso_local global i64 0, align 8
@TX_RING_MOD_MASK = common dso_local global i32 0, align 4
@BD_ENET_RX_EMPTY = common dso_local global i32 0, align 4
@BD_SC_WRAP = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@OPT_FRAME_SIZE = common dso_local global i32 0, align 4
@FEC_R_CNTRL = common dso_local global i64 0, align 8
@FEC_X_CNTRL = common dso_local global i64 0, align 8
@FEC_MII_SPEED = common dso_local global i64 0, align 8
@FEC_R_DES_ACTIVE = common dso_local global i64 0, align 8
@FEC_ENET_TXF = common dso_local global i32 0, align 4
@FEC_ENET_RXF = common dso_local global i32 0, align 4
@FEC_ENET_MII = common dso_local global i32 0, align 4
@FEC_IMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @fec_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_restart(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fec_enet_private*, align 8
  %6 = alloca %struct.bufdesc*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fec_enet_private* %9, %struct.fec_enet_private** %5, align 8
  %10 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %11 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FEC_ECNTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 1, i64 %14)
  %16 = call i32 @udelay(i32 10)
  %17 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %18 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FEC_IEVENT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 -4194304, i64 %21)
  %23 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %24 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FEC_GRP_HASH_TABLE_HIGH, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  %29 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %30 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FEC_GRP_HASH_TABLE_LOW, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FEC_HASH_TABLE_HIGH, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 0, i64 %39)
  %41 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %42 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FEC_HASH_TABLE_LOW, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load i32, i32* @PKT_MAXBLR_SIZE, align 4
  %48 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %49 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FEC_R_BUFF_SIZE, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %55 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %58 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FEC_R_DES_START, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %64 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* @RX_RING_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 16, %68
  %70 = add i64 %66, %69
  %71 = trunc i64 %70 to i32
  %72 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %73 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FEC_X_DES_START, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %79 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %78, i32 0, i32 4
  %80 = load %struct.bufdesc*, %struct.bufdesc** %79, align 8
  %81 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %82 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %81, i32 0, i32 10
  store %struct.bufdesc* %80, %struct.bufdesc** %82, align 8
  %83 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %84 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %83, i32 0, i32 11
  store %struct.bufdesc* %80, %struct.bufdesc** %84, align 8
  %85 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %86 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %85, i32 0, i32 5
  %87 = load %struct.bufdesc*, %struct.bufdesc** %86, align 8
  %88 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %89 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %88, i32 0, i32 9
  store %struct.bufdesc* %87, %struct.bufdesc** %89, align 8
  %90 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %91 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %90, i32 0, i32 7
  store i64 0, i64* %91, align 8
  %92 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %93 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %123, %2
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @TX_RING_MOD_MASK, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %94
  %99 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %100 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %99, i32 0, i32 6
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %122

107:                                              ; preds = %98
  %108 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %109 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %108, i32 0, i32 6
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @dev_kfree_skb_any(i32* %114)
  %116 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %117 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %116, i32 0, i32 6
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %107, %98
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %94

126:                                              ; preds = %94
  %127 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %128 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %127, i32 0, i32 5
  %129 = load %struct.bufdesc*, %struct.bufdesc** %128, align 8
  store %struct.bufdesc* %129, %struct.bufdesc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %140, %126
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @RX_RING_SIZE, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i32, i32* @BD_ENET_RX_EMPTY, align 4
  %136 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %137 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %139 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %138, i32 1
  store %struct.bufdesc* %139, %struct.bufdesc** %6, align 8
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %130

143:                                              ; preds = %130
  %144 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %145 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %144, i32 -1
  store %struct.bufdesc* %145, %struct.bufdesc** %6, align 8
  %146 = load i32, i32* @BD_SC_WRAP, align 4
  %147 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %148 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %152 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %151, i32 0, i32 4
  %153 = load %struct.bufdesc*, %struct.bufdesc** %152, align 8
  store %struct.bufdesc* %153, %struct.bufdesc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %165, %143
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @TX_RING_SIZE, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %160 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  %161 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %162 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %161, i32 0, i32 1
  store i64 0, i64* %162, align 8
  %163 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %164 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %163, i32 1
  store %struct.bufdesc* %164, %struct.bufdesc** %6, align 8
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %154

168:                                              ; preds = %154
  %169 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %170 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %169, i32 -1
  store %struct.bufdesc* %170, %struct.bufdesc** %6, align 8
  %171 = load i32, i32* @BD_SC_WRAP, align 4
  %172 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %173 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %168
  %179 = load i32, i32* @OPT_FRAME_SIZE, align 4
  %180 = or i32 %179, 4
  %181 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %182 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @FEC_R_CNTRL, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  %187 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %188 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @FEC_X_CNTRL, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 4, i64 %191)
  br label %208

193:                                              ; preds = %168
  %194 = load i32, i32* @OPT_FRAME_SIZE, align 4
  %195 = or i32 %194, 6
  %196 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %197 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @FEC_R_CNTRL, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel(i32 %195, i64 %200)
  %202 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %203 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @FEC_X_CNTRL, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @writel(i32 0, i64 %206)
  br label %208

208:                                              ; preds = %193, %178
  %209 = load i32, i32* %4, align 4
  %210 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %211 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %213 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %216 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @FEC_MII_SPEED, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @writel(i32 %214, i64 %219)
  %221 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %222 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @FEC_ECNTRL, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 2, i64 %225)
  %227 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %228 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @FEC_R_DES_ACTIVE, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @writel(i32 0, i64 %231)
  %233 = load i32, i32* @FEC_ENET_TXF, align 4
  %234 = load i32, i32* @FEC_ENET_RXF, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @FEC_ENET_MII, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %239 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @FEC_IMASK, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @writel(i32 %237, i64 %242)
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
