; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ax88796.c_ax_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.platform_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.net_device = type { i32, i64 }
%struct.ax_device = type { i32, i32*, i32*, i32*, i32*, %struct.TYPE_4__*, %struct.platform_device*, i32 }
%struct.resource = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ei_status = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no IRQ specified\0A\00", align 1
@IRQF_TRIGGER_MASK = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no MEM specified\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot reserve registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot ioremap area (%08llx,%08llx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot map reset register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ax_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ax_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = call %struct.net_device* @ax__alloc_ei_netdev(i32 64)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = icmp eq %struct.net_device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %309

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %16)
  store %struct.ax_device* %17, %struct.ax_device** %5, align 8
  %18 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %19 = call i32 @memset(%struct.ax_device* %18, i32 0, i32 64)
  %20 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %21 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %20, i32 0, i32 7
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %25 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %24, i32 0, i32 6
  store %struct.platform_device* %23, %struct.platform_device** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %31 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %30, i32 0, i32 5
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.net_device* %33)
  %35 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %36 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %35, i32 0, i32 5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 2), align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_IRQ, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 0)
  store %struct.resource* %42, %struct.resource** %6, align 8
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = icmp eq %struct.resource* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %15
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %305

49:                                               ; preds = %15
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %61 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* @IORESOURCE_MEM, align 4
  %64 = call %struct.resource* @platform_get_resource(%struct.platform_device* %62, i32 %63, i32 0)
  store %struct.resource* %64, %struct.resource** %6, align 8
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = icmp eq %struct.resource* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %49
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %305

73:                                               ; preds = %49
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %7, align 8
  %83 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %84 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %83, i32 0, i32 5
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %91 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %90, i32 0, i32 5
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 0), align 8
  br label %119

95:                                               ; preds = %73
  %96 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %97 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 0), align 8
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %115, %95
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 24
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i64, i64* %7, align 8
  %104 = udiv i64 %103, 24
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %104, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %110 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %99

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %89
  %120 = load %struct.resource*, %struct.resource** %6, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @request_mem_region(i32 %122, i64 %123, i32 %126)
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %130 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %129, i32 0, i32 2
  store i32* %128, i32** %130, align 8
  %131 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %132 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %119
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* @ENXIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %305

141:                                              ; preds = %119
  %142 = load %struct.resource*, %struct.resource** %6, align 8
  %143 = getelementptr inbounds %struct.resource, %struct.resource* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %7, align 8
  %146 = call i8* @ioremap(i32 %144, i64 %145)
  %147 = bitcast i8* %146 to i32*
  store i32* %147, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 1), align 8
  %148 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 1), align 8
  %149 = ptrtoint i32* %148 to i64
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 1), align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %168

154:                                              ; preds = %141
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load %struct.resource*, %struct.resource** %6, align 8
  %158 = getelementptr inbounds %struct.resource, %struct.resource* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.resource*, %struct.resource** %6, align 8
  %162 = getelementptr inbounds %struct.resource, %struct.resource* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %160, i64 %164)
  %166 = load i32, i32* @ENXIO, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %8, align 4
  br label %296

168:                                              ; preds = %141
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = load i32, i32* @IORESOURCE_MEM, align 4
  %171 = call %struct.resource* @platform_get_resource(%struct.platform_device* %169, i32 %170, i32 1)
  store %struct.resource* %171, %struct.resource** %6, align 8
  %172 = load %struct.resource*, %struct.resource** %6, align 8
  %173 = icmp eq %struct.resource* %172, null
  br i1 %173, label %174, label %205

174:                                              ; preds = %168
  %175 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %176 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %175, i32 0, i32 5
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %202, label %181

181:                                              ; preds = %174
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %198, %181
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %183, 32
  br i1 %184, label %185, label %201

185:                                              ; preds = %182
  %186 = load i64, i64* %7, align 8
  %187 = udiv i64 %186, 32
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = mul i64 %187, %189
  %191 = trunc i64 %190 to i32
  %192 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %193 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %191, i32* %197, align 4
  br label %198

198:                                              ; preds = %185
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %182

201:                                              ; preds = %182
  br label %202

202:                                              ; preds = %201, %174
  %203 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %204 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %203, i32 0, i32 4
  store i32* null, i32** %204, align 8
  br label %267

205:                                              ; preds = %168
  %206 = load %struct.resource*, %struct.resource** %6, align 8
  %207 = getelementptr inbounds %struct.resource, %struct.resource* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.resource*, %struct.resource** %6, align 8
  %210 = getelementptr inbounds %struct.resource, %struct.resource* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %208, %211
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %7, align 8
  %215 = load %struct.resource*, %struct.resource** %6, align 8
  %216 = getelementptr inbounds %struct.resource, %struct.resource* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i64, i64* %7, align 8
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i8* @request_mem_region(i32 %217, i64 %218, i32 %221)
  %223 = bitcast i8* %222 to i32*
  %224 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %225 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %224, i32 0, i32 3
  store i32* %223, i32** %225, align 8
  %226 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %227 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %205
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %232, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %234 = load i32, i32* @ENXIO, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %8, align 4
  br label %293

236:                                              ; preds = %205
  %237 = load %struct.resource*, %struct.resource** %6, align 8
  %238 = getelementptr inbounds %struct.resource, %struct.resource* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i64, i64* %7, align 8
  %241 = call i8* @ioremap(i32 %239, i64 %240)
  %242 = bitcast i8* %241 to i32*
  %243 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %244 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %243, i32 0, i32 4
  store i32* %242, i32** %244, align 8
  %245 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %246 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = icmp eq i32* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %236
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %251, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %253 = load i32, i32* @ENXIO, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %8, align 4
  br label %284

255:                                              ; preds = %236
  %256 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %257 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 1), align 8
  %260 = ptrtoint i32* %258 to i64
  %261 = ptrtoint i32* %259 to i64
  %262 = sub i64 %260, %261
  %263 = sdiv exact i64 %262, 4
  %264 = trunc i64 %263 to i32
  %265 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 0), align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 31
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %255, %202
  %268 = load %struct.net_device*, %struct.net_device** %4, align 8
  %269 = call i32 @ax_init_dev(%struct.net_device* %268, i32 1)
  store i32 %269, i32* %8, align 4
  %270 = load i32, i32* %8, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  store i32 0, i32* %2, align 4
  br label %309

273:                                              ; preds = %267
  %274 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %275 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %274, i32 0, i32 4
  %276 = load i32*, i32** %275, align 8
  %277 = icmp eq i32* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  br label %293

279:                                              ; preds = %273
  %280 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %281 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %280, i32 0, i32 4
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @iounmap(i32* %282)
  br label %284

284:                                              ; preds = %279, %249
  %285 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %286 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %285, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @release_resource(i32* %287)
  %289 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %290 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @kfree(i32* %291)
  br label %293

293:                                              ; preds = %284, %278, %230
  %294 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ei_status, i32 0, i32 1), align 8
  %295 = call i32 @iounmap(i32* %294)
  br label %296

296:                                              ; preds = %293, %154
  %297 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %298 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @release_resource(i32* %299)
  %301 = load %struct.ax_device*, %struct.ax_device** %5, align 8
  %302 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @kfree(i32* %303)
  br label %305

305:                                              ; preds = %296, %135, %67, %45
  %306 = load %struct.net_device*, %struct.net_device** %4, align 8
  %307 = call i32 @free_netdev(%struct.net_device* %306)
  %308 = load i32, i32* %8, align 4
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %305, %272, %12
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local %struct.net_device* @ax__alloc_ei_netdev(i32) #1

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ax_device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i8* @request_mem_region(i32, i64, i32) #1

declare dso_local i8* @ioremap(i32, i64) #1

declare dso_local i32 @ax_init_dev(%struct.net_device*, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
