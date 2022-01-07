; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.TYPE_2__*, %struct.dvb_net* }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_net = type { %struct.net_device**, i32* }
%struct.net_device = type { i32 }
%struct.dvb_net_if = type { i32, i32, i32 }
%struct.dvb_net_priv = type { i32, i32 }
%struct.__dvb_net_if_old = type { i32, i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@DVB_NET_DEVICES_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DVB_NET_FEEDTYPE_MPE = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i8*)* @dvb_net_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_do_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dvb_device*, align 8
  %11 = alloca %struct.dvb_net*, align 8
  %12 = alloca %struct.dvb_net_if*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.dvb_net_priv*, align 8
  %16 = alloca %struct.dvb_net_if*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.__dvb_net_if_old*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.net_device*, align 8
  %21 = alloca %struct.dvb_net_priv*, align 8
  %22 = alloca %struct.__dvb_net_if_old*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.dvb_device*, %struct.dvb_device** %24, align 8
  store %struct.dvb_device* %25, %struct.dvb_device** %10, align 8
  %26 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %27 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %26, i32 0, i32 1
  %28 = load %struct.dvb_net*, %struct.dvb_net** %27, align 8
  store %struct.dvb_net* %28, %struct.dvb_net** %11, align 8
  %29 = load %struct.file*, %struct.file** %7, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @O_ACCMODE, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @O_RDONLY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %245

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %241 [
    i32 132, label %41
    i32 131, label %84
    i32 130, label %129
    i32 129, label %160
    i32 128, label %201
  ]

41:                                               ; preds = %39
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to %struct.dvb_net_if*
  store %struct.dvb_net_if* %43, %struct.dvb_net_if** %12, align 8
  %44 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %45 = call i32 @capable(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %245

50:                                               ; preds = %41
  %51 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %52 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @try_module_get(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @EPERM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %245

61:                                               ; preds = %50
  %62 = load %struct.dvb_net*, %struct.dvb_net** %11, align 8
  %63 = load %struct.dvb_net_if*, %struct.dvb_net_if** %12, align 8
  %64 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dvb_net_if*, %struct.dvb_net_if** %12, align 8
  %67 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dvb_net_add_if(%struct.dvb_net* %62, i32 %65, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %74 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @module_put(i32 %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %245

80:                                               ; preds = %61
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.dvb_net_if*, %struct.dvb_net_if** %12, align 8
  %83 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %244

84:                                               ; preds = %39
  %85 = load i8*, i8** %9, align 8
  %86 = bitcast i8* %85 to %struct.dvb_net_if*
  store %struct.dvb_net_if* %86, %struct.dvb_net_if** %16, align 8
  %87 = load %struct.dvb_net_if*, %struct.dvb_net_if** %16, align 8
  %88 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @DVB_NET_DEVICES_MAX, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %84
  %94 = load %struct.dvb_net*, %struct.dvb_net** %11, align 8
  %95 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.dvb_net_if*, %struct.dvb_net_if** %16, align 8
  %98 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %93, %84
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %245

107:                                              ; preds = %93
  %108 = load %struct.dvb_net*, %struct.dvb_net** %11, align 8
  %109 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %108, i32 0, i32 0
  %110 = load %struct.net_device**, %struct.net_device*** %109, align 8
  %111 = load %struct.dvb_net_if*, %struct.dvb_net_if** %16, align 8
  %112 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.net_device*, %struct.net_device** %110, i64 %114
  %116 = load %struct.net_device*, %struct.net_device** %115, align 8
  store %struct.net_device* %116, %struct.net_device** %14, align 8
  %117 = load %struct.net_device*, %struct.net_device** %14, align 8
  %118 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %117)
  store %struct.dvb_net_priv* %118, %struct.dvb_net_priv** %15, align 8
  %119 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %15, align 8
  %120 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dvb_net_if*, %struct.dvb_net_if** %16, align 8
  %123 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %15, align 8
  %125 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dvb_net_if*, %struct.dvb_net_if** %16, align 8
  %128 = getelementptr inbounds %struct.dvb_net_if, %struct.dvb_net_if* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %244

129:                                              ; preds = %39
  %130 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %131 = call i32 @capable(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @EPERM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %245

136:                                              ; preds = %129
  %137 = load i8*, i8** %9, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load i64, i64* @DVB_NET_DEVICES_MAX, align 8
  %140 = icmp uge i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %245

144:                                              ; preds = %136
  %145 = load %struct.dvb_net*, %struct.dvb_net** %11, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = ptrtoint i8* %146 to i64
  %148 = call i32 @dvb_net_remove_if(%struct.dvb_net* %145, i64 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %144
  %152 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %153 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @module_put(i32 %156)
  br label %158

158:                                              ; preds = %151, %144
  %159 = load i32, i32* %17, align 4
  store i32 %159, i32* %5, align 4
  br label %245

160:                                              ; preds = %39
  %161 = load i8*, i8** %9, align 8
  %162 = bitcast i8* %161 to %struct.__dvb_net_if_old*
  store %struct.__dvb_net_if_old* %162, %struct.__dvb_net_if_old** %18, align 8
  %163 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %164 = call i32 @capable(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* @EPERM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %245

169:                                              ; preds = %160
  %170 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %171 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @try_module_get(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %169
  %178 = load i32, i32* @EPERM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  br label %245

180:                                              ; preds = %169
  %181 = load %struct.dvb_net*, %struct.dvb_net** %11, align 8
  %182 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %18, align 8
  %183 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @DVB_NET_FEEDTYPE_MPE, align 4
  %186 = call i32 @dvb_net_add_if(%struct.dvb_net* %181, i32 %184, i32 %185)
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %180
  %190 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  %191 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %190, i32 0, i32 0
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @module_put(i32 %194)
  %196 = load i32, i32* %19, align 4
  store i32 %196, i32* %5, align 4
  br label %245

197:                                              ; preds = %180
  %198 = load i32, i32* %19, align 4
  %199 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %18, align 8
  %200 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  br label %244

201:                                              ; preds = %39
  %202 = load i8*, i8** %9, align 8
  %203 = bitcast i8* %202 to %struct.__dvb_net_if_old*
  store %struct.__dvb_net_if_old* %203, %struct.__dvb_net_if_old** %22, align 8
  %204 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %22, align 8
  %205 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* @DVB_NET_DEVICES_MAX, align 8
  %209 = icmp uge i64 %207, %208
  br i1 %209, label %221, label %210

210:                                              ; preds = %201
  %211 = load %struct.dvb_net*, %struct.dvb_net** %11, align 8
  %212 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %22, align 8
  %215 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %210, %201
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %5, align 4
  br label %245

224:                                              ; preds = %210
  %225 = load %struct.dvb_net*, %struct.dvb_net** %11, align 8
  %226 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %225, i32 0, i32 0
  %227 = load %struct.net_device**, %struct.net_device*** %226, align 8
  %228 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %22, align 8
  %229 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.net_device*, %struct.net_device** %227, i64 %231
  %233 = load %struct.net_device*, %struct.net_device** %232, align 8
  store %struct.net_device* %233, %struct.net_device** %20, align 8
  %234 = load %struct.net_device*, %struct.net_device** %20, align 8
  %235 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %234)
  store %struct.dvb_net_priv* %235, %struct.dvb_net_priv** %21, align 8
  %236 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %21, align 8
  %237 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.__dvb_net_if_old*, %struct.__dvb_net_if_old** %22, align 8
  %240 = getelementptr inbounds %struct.__dvb_net_if_old, %struct.__dvb_net_if_old* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  br label %244

241:                                              ; preds = %39
  %242 = load i32, i32* @ENOTTY, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %5, align 4
  br label %245

244:                                              ; preds = %224, %197, %107, %80
  store i32 0, i32* %5, align 4
  br label %245

245:                                              ; preds = %244, %241, %221, %189, %177, %166, %158, %141, %133, %104, %72, %58, %47, %36
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @dvb_net_add_if(%struct.dvb_net*, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local %struct.dvb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dvb_net_remove_if(%struct.dvb_net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
