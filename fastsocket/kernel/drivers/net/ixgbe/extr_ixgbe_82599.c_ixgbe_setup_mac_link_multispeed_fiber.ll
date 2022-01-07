; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_multispeed_fiber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_multispeed_fiber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32*)*, i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber_fixed = common dso_local global i64 0, align 8
@IXGBE_ESDP_SDP5_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP5 = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_mac_link_multispeed_fiber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_mac_link_multispeed_fiber(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %16 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %19 = load i32, i32* @IXGBE_ESDP, align 4
  %20 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64 (%struct.ixgbe_hw.0*, i32*, i32*)*, i64 (%struct.ixgbe_hw.0*, i32*, i32*)** %24, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = bitcast %struct.ixgbe_hw* %26 to %struct.ixgbe_hw.0*
  %28 = call i64 %25(%struct.ixgbe_hw.0* %27, i32* %9, i32* %15)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %4, align 8
  br label %283

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %141

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %48, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %51 = bitcast %struct.ixgbe_hw* %50 to %struct.ixgbe_hw.1*
  %52 = call i64 %49(%struct.ixgbe_hw.1* %51, i32* %9, i32* %14, i32 0)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %4, align 8
  br label %283

57:                                               ; preds = %41
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %254

65:                                               ; preds = %61, %57
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ixgbe_media_type_fiber_fixed, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %74 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %75 = call i32 @ixgbe_set_fiber_fixed_speed(%struct.ixgbe_hw* %73, i32 %74)
  br label %88

76:                                               ; preds = %65
  %77 = load i32, i32* @IXGBE_ESDP_SDP5_DIR, align 4
  %78 = load i32, i32* @IXGBE_ESDP_SDP5, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %83 = load i32, i32* @IXGBE_ESDP, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %82, i32 %83, i32 %84)
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %87 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %86)
  br label %88

88:                                               ; preds = %76, %72
  %89 = call i32 @msleep(i32 40)
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %91 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %90, i32 %91, i32 %92)
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %4, align 8
  br label %283

98:                                               ; preds = %88
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %102, align 8
  %104 = icmp ne i32 (%struct.ixgbe_hw.2*)* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %109, align 8
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %112 = bitcast %struct.ixgbe_hw* %111 to %struct.ixgbe_hw.2*
  %113 = call i32 %110(%struct.ixgbe_hw.2* %112)
  br label %114

114:                                              ; preds = %105, %98
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %137, %114
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %140

118:                                              ; preds = %115
  %119 = call i32 @msleep(i32 100)
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %123, align 8
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %126 = bitcast %struct.ixgbe_hw* %125 to %struct.ixgbe_hw.1*
  %127 = call i64 %124(%struct.ixgbe_hw.1* %126, i32* %9, i32* %14, i32 0)
  store i64 %127, i64* %8, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i64, i64* %8, align 8
  store i64 %131, i64* %4, align 8
  br label %283

132:                                              ; preds = %118
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %254

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %115

140:                                              ; preds = %115
  br label %141

141:                                              ; preds = %140, %33
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %245

146:                                              ; preds = %141
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %152, %146
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %156 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %158, align 8
  %160 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %161 = bitcast %struct.ixgbe_hw* %160 to %struct.ixgbe_hw.1*
  %162 = call i64 %159(%struct.ixgbe_hw.1* %161, i32* %9, i32* %14, i32 0)
  store i64 %162, i64* %8, align 8
  %163 = load i64, i64* %8, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = load i64, i64* %8, align 8
  store i64 %166, i64* %4, align 8
  br label %283

167:                                              ; preds = %154
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %254

175:                                              ; preds = %171, %167
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %177 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @ixgbe_media_type_fiber_fixed, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %184 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %185 = call i32 @ixgbe_set_fiber_fixed_speed(%struct.ixgbe_hw* %183, i32 %184)
  br label %200

186:                                              ; preds = %175
  %187 = load i32, i32* @IXGBE_ESDP_SDP5, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %12, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* @IXGBE_ESDP_SDP5_DIR, align 4
  %192 = load i32, i32* %12, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %12, align 4
  %194 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %195 = load i32, i32* @IXGBE_ESDP, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %194, i32 %195, i32 %196)
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %199 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %198)
  br label %200

200:                                              ; preds = %186, %182
  %201 = call i32 @msleep(i32 40)
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %203 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %202, i32 %203, i32 %204)
  store i64 %205, i64* %8, align 8
  %206 = load i64, i64* %8, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %200
  %209 = load i64, i64* %8, align 8
  store i64 %209, i64* %4, align 8
  br label %283

210:                                              ; preds = %200
  %211 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %212 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 2
  %215 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %214, align 8
  %216 = icmp ne i32 (%struct.ixgbe_hw.2*)* %215, null
  br i1 %216, label %217, label %226

217:                                              ; preds = %210
  %218 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %219 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 2
  %222 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %221, align 8
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %224 = bitcast %struct.ixgbe_hw* %223 to %struct.ixgbe_hw.2*
  %225 = call i32 %222(%struct.ixgbe_hw.2* %224)
  br label %226

226:                                              ; preds = %217, %210
  %227 = call i32 @msleep(i32 100)
  %228 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %229 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %231, align 8
  %233 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %234 = bitcast %struct.ixgbe_hw* %233 to %struct.ixgbe_hw.1*
  %235 = call i64 %232(%struct.ixgbe_hw.1* %234, i32* %9, i32* %14, i32 0)
  store i64 %235, i64* %8, align 8
  %236 = load i64, i64* %8, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %226
  %239 = load i64, i64* %8, align 8
  store i64 %239, i64* %4, align 8
  br label %283

240:                                              ; preds = %226
  %241 = load i32, i32* %14, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %254

244:                                              ; preds = %240
  br label %245

245:                                              ; preds = %244, %141
  %246 = load i32, i32* %11, align 4
  %247 = icmp sgt i32 %246, 1
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i64 @ixgbe_setup_mac_link_multispeed_fiber(%struct.ixgbe_hw* %249, i32 %250, i32 %251)
  store i64 %252, i64* %8, align 8
  br label %253

253:                                              ; preds = %248, %245
  br label %254

254:                                              ; preds = %253, %243, %174, %135, %64
  %255 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %256 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  store i32 0, i32* %257, align 8
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %254
  %263 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %264 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %265 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %263
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %262, %254
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %269
  %275 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %276 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %277 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %275
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %274, %269
  %282 = load i64, i64* %8, align 8
  store i64 %282, i64* %4, align 8
  br label %283

283:                                              ; preds = %281, %238, %208, %165, %130, %96, %55, %31
  %284 = load i64, i64* %4, align 8
  ret i64 %284
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_set_fiber_fixed_speed(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
