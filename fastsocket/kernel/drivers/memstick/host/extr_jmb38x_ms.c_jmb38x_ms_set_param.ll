; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_set_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@HOST_CONTROL = common dso_local global i64 0, align 8
@CLOCK_CONTROL_40MHZ = common dso_local global i32 0, align 4
@MEMSTICK_POWER_ON = common dso_local global i32 0, align 4
@HOST_CONTROL_POWER_EN = common dso_local global i32 0, align 4
@HOST_CONTROL_CLOCK_EN = common dso_local global i32 0, align 4
@HOST_CONTROL_HW_OC_P = common dso_local global i32 0, align 4
@HOST_CONTROL_TDELAY_EN = common dso_local global i32 0, align 4
@PAD_PU_PD_ON_MS_SOCK1 = common dso_local global i32 0, align 4
@PAD_PU_PD_ON_MS_SOCK0 = common dso_local global i32 0, align 4
@PAD_PU_PD = common dso_local global i64 0, align 8
@PAD_OUTPUT_ENABLE_MS = common dso_local global i32 0, align 4
@PAD_OUTPUT_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"power on\0A\00", align 1
@MEMSTICK_POWER_OFF = common dso_local global i32 0, align 4
@PAD_PU_PD_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"power off\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HOST_CONTROL_IF_SHIFT = common dso_local global i32 0, align 4
@PCI_CTL_CLOCK_DLY_ADDR = common dso_local global i32 0, align 4
@PCI_CTL_CLOCK_DLY_MASK_B = common dso_local global i32 0, align 4
@PCI_CTL_CLOCK_DLY_MASK_A = common dso_local global i32 0, align 4
@MEMSTICK_SERIAL = common dso_local global i32 0, align 4
@HOST_CONTROL_FAST_CLK = common dso_local global i32 0, align 4
@HOST_CONTROL_REO = common dso_local global i32 0, align 4
@HOST_CONTROL_IF_SERIAL = common dso_local global i32 0, align 4
@HOST_CONTROL_REI = common dso_local global i32 0, align 4
@MEMSTICK_PAR4 = common dso_local global i32 0, align 4
@HOST_CONTROL_IF_PAR4 = common dso_local global i32 0, align 4
@MEMSTICK_PAR8 = common dso_local global i32 0, align 4
@HOST_CONTROL_IF_PAR8 = common dso_local global i32 0, align 4
@CLOCK_CONTROL_50MHZ = common dso_local global i32 0, align 4
@CLOCK_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_host*, i32, i32)* @jmb38x_ms_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_set_param(%struct.memstick_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.memstick_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jmb38x_ms_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.memstick_host*, %struct.memstick_host** %5, align 8
  %14 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %13)
  store %struct.jmb38x_ms_host* %14, %struct.jmb38x_ms_host** %8, align 8
  %15 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %16 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HOST_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @CLOCK_CONTROL_40MHZ, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %249 [
    i32 128, label %23
    i32 129, label %125
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MEMSTICK_POWER_ON, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %23
  %28 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %29 = call i32 @jmb38x_ms_reset(%struct.jmb38x_ms_host* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %4, align 4
  br label %250

34:                                               ; preds = %27
  store i32 7, i32* %9, align 4
  %35 = load i32, i32* @HOST_CONTROL_POWER_EN, align 4
  %36 = load i32, i32* @HOST_CONTROL_CLOCK_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HOST_CONTROL_HW_OC_P, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HOST_CONTROL_TDELAY_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %46 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HOST_CONTROL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %52 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %34
  %56 = load i32, i32* @PAD_PU_PD_ON_MS_SOCK1, align 4
  br label %59

57:                                               ; preds = %34
  %58 = load i32, i32* @PAD_PU_PD_ON_MS_SOCK0, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %62 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PAD_PU_PD, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load i32, i32* @PAD_OUTPUT_ENABLE_MS, align 4
  %68 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %69 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PAD_OUTPUT_ENABLE, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = call i32 @msleep(i32 10)
  %75 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %76 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @dev_dbg(i32* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %124

82:                                               ; preds = %23
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @MEMSTICK_POWER_OFF, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %82
  %87 = load i32, i32* @HOST_CONTROL_POWER_EN, align 4
  %88 = load i32, i32* @HOST_CONTROL_CLOCK_EN, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %95 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @HOST_CONTROL, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  %100 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %101 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PAD_OUTPUT_ENABLE, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 0, i64 %104)
  %106 = load i32, i32* @PAD_PU_PD_OFF, align 4
  %107 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %108 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PAD_PU_PD, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %114 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 @dev_dbg(i32* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %123

120:                                              ; preds = %82
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %250

123:                                              ; preds = %86
  br label %124

124:                                              ; preds = %123, %59
  br label %249

125:                                              ; preds = %3
  %126 = load i32, i32* @HOST_CONTROL_IF_SHIFT, align 4
  %127 = shl i32 3, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %132 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* @PCI_CTL_CLOCK_DLY_ADDR, align 4
  %137 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %135, i32 %136, i32* %11)
  %138 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %139 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %125
  %143 = load i32, i32* @PCI_CTL_CLOCK_DLY_MASK_B, align 4
  %144 = xor i32 %143, -1
  br label %148

145:                                              ; preds = %125
  %146 = load i32, i32* @PCI_CTL_CLOCK_DLY_MASK_A, align 4
  %147 = xor i32 %146, -1
  br label %148

148:                                              ; preds = %145, %142
  %149 = phi i32 [ %144, %142 ], [ %147, %145 ]
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @MEMSTICK_SERIAL, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %148
  %156 = load i32, i32* @HOST_CONTROL_FAST_CLK, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %9, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* @HOST_CONTROL_REO, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %9, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* @HOST_CONTROL_IF_SERIAL, align 4
  %165 = load i32, i32* @HOST_CONTROL_IF_SHIFT, align 4
  %166 = shl i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* @HOST_CONTROL_REI, align 4
  %170 = load i32, i32* %9, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* @CLOCK_CONTROL_40MHZ, align 4
  store i32 %172, i32* %10, align 4
  br label %226

173:                                              ; preds = %148
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @MEMSTICK_PAR4, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %201

177:                                              ; preds = %173
  %178 = load i32, i32* @HOST_CONTROL_FAST_CLK, align 4
  %179 = load i32, i32* @HOST_CONTROL_REO, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %9, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* @HOST_CONTROL_IF_PAR4, align 4
  %184 = load i32, i32* @HOST_CONTROL_IF_SHIFT, align 4
  %185 = shl i32 %183, %184
  %186 = load i32, i32* %9, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* @HOST_CONTROL_REI, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %9, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* @CLOCK_CONTROL_40MHZ, align 4
  store i32 %192, i32* %10, align 4
  %193 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %194 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 16384, i32 1024
  %199 = load i32, i32* %11, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %11, align 4
  br label %225

201:                                              ; preds = %173
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @MEMSTICK_PAR8, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %221

205:                                              ; preds = %201
  %206 = load i32, i32* @HOST_CONTROL_FAST_CLK, align 4
  %207 = load i32, i32* %9, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* @HOST_CONTROL_IF_PAR8, align 4
  %210 = load i32, i32* @HOST_CONTROL_IF_SHIFT, align 4
  %211 = shl i32 %209, %210
  %212 = load i32, i32* %9, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* @HOST_CONTROL_REI, align 4
  %215 = load i32, i32* @HOST_CONTROL_REO, align 4
  %216 = or i32 %214, %215
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %9, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* @CLOCK_CONTROL_50MHZ, align 4
  store i32 %220, i32* %10, align 4
  br label %224

221:                                              ; preds = %201
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %4, align 4
  br label %250

224:                                              ; preds = %205
  br label %225

225:                                              ; preds = %224, %177
  br label %226

226:                                              ; preds = %225, %155
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %229 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @HOST_CONTROL, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @writel(i32 %227, i64 %232)
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %236 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @CLOCK_CONTROL, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @writel(i32 %234, i64 %239)
  %241 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %242 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %241, i32 0, i32 0
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = load i32, i32* @PCI_CTL_CLOCK_DLY_ADDR, align 4
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %3, %226, %124
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %249, %221, %120, %32
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @jmb38x_ms_reset(%struct.jmb38x_ms_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
