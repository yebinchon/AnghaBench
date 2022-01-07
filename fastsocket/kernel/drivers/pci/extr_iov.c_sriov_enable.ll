; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_sriov_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.resource*, %struct.pci_sriov* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.resource = type { i64 }
%struct.pci_sriov = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_SRIOV_INITIAL_VF = common dso_local global i64 0, align 8
@PCI_SRIOV_CAP_VFM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCI_SRIOV_NUM_VF = common dso_local global i64 0, align 8
@PCI_SRIOV_VF_OFFSET = common dso_local global i64 0, align 8
@PCI_SRIOV_VF_STRIDE = common dso_local global i64 0, align 8
@PCI_SRIOV_NUM_BARS = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"not enough MMIO resources for SR-IOV\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SR-IOV: bus number out of range\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"dep_link\00", align 1
@PCI_SRIOV_CTRL_VFE = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL_MSE = common dso_local global i32 0, align 4
@PCI_SRIOV_CTRL = common dso_local global i64 0, align 8
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @sriov_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sriov_enable(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 5
  %18 = load %struct.pci_sriov*, %struct.pci_sriov** %17, align 8
  store %struct.pci_sriov* %18, %struct.pci_sriov** %15, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %342

22:                                               ; preds = %2
  %23 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %24 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %342

30:                                               ; preds = %22
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %33 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCI_SRIOV_INITIAL_VF, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @pci_read_config_word(%struct.pci_dev* %31, i64 %36, i32* %12)
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %40 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %56, label %43

43:                                               ; preds = %30
  %44 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %45 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PCI_SRIOV_CAP_VFM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %53 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %30
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %342

59:                                               ; preds = %50, %43
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %65 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %79, label %68

68:                                               ; preds = %62
  %69 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %70 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PCI_SRIOV_CAP_VFM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %62, %59
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %342

82:                                               ; preds = %75, %68
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %85 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PCI_SRIOV_NUM_VF, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @pci_write_config_word(%struct.pci_dev* %83, i64 %88, i32 %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %93 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %92, i32 0, i32 9
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCI_SRIOV_VF_OFFSET, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @pci_read_config_word(%struct.pci_dev* %91, i64 %96, i32* %10)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %100 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PCI_SRIOV_VF_STRIDE, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @pci_read_config_word(%struct.pci_dev* %98, i64 %103, i32* %11)
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %82
  %108 = load i32, i32* %5, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110, %82
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %342

116:                                              ; preds = %110, %107
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %139, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @PCI_SRIOV_NUM_BARS, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %117
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 4
  %124 = load %struct.resource*, %struct.resource** %123, align 8
  %125 = load i32, i32* @PCI_IOV_RESOURCES, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.resource, %struct.resource* %124, i64 %126
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %127, i64 %129
  store %struct.resource* %130, %struct.resource** %13, align 8
  %131 = load %struct.resource*, %struct.resource** %13, align 8
  %132 = getelementptr inbounds %struct.resource, %struct.resource* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %121
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %135, %121
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %117

142:                                              ; preds = %117
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %145 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 1
  %151 = call i32 @dev_err(%struct.TYPE_4__* %150, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %342

154:                                              ; preds = %142
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %157 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %160 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sub nsw i32 %162, 1
  %164 = call i64 @virtfn_bus(%struct.pci_dev* %161, i32 %163)
  %165 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 3
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %164, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %154
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 1
  %174 = call i32 @dev_err(%struct.TYPE_4__* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %342

177:                                              ; preds = %154
  %178 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %179 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %180, %183
  br i1 %184, label %185, label %221

185:                                              ; preds = %177
  %186 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %187 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %186, i32 0, i32 3
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %190 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = call %struct.pci_dev* @pci_get_slot(%struct.TYPE_3__* %188, i64 %191)
  store %struct.pci_dev* %192, %struct.pci_dev** %14, align 8
  %193 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %194 = icmp ne %struct.pci_dev* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %185
  %196 = load i32, i32* @ENODEV, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %342

198:                                              ; preds = %185
  %199 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %200 = call i32 @pci_dev_put(%struct.pci_dev* %199)
  %201 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %202 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* @ENODEV, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %342

208:                                              ; preds = %198
  %209 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %210 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %213 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = call i32 @sysfs_create_link(i32* %211, i32* %214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %208
  %219 = load i32, i32* %6, align 4
  store i32 %219, i32* %3, align 4
  br label %342

220:                                              ; preds = %208
  br label %221

221:                                              ; preds = %220, %177
  %222 = load i32, i32* @PCI_SRIOV_CTRL_VFE, align 4
  %223 = load i32, i32* @PCI_SRIOV_CTRL_MSE, align 4
  %224 = or i32 %222, %223
  %225 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %226 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %230 = call i32 @pci_cfg_access_lock(%struct.pci_dev* %229)
  %231 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %232 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %233 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %232, i32 0, i32 9
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @PCI_SRIOV_CTRL, align 8
  %236 = add nsw i64 %234, %235
  %237 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %238 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @pci_write_config_word(%struct.pci_dev* %231, i64 %236, i32 %239)
  %241 = call i32 @msleep(i32 100)
  %242 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %243 = call i32 @pci_cfg_access_unlock(%struct.pci_dev* %242)
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %246 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %245, i32 0, i32 8
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* %12, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %221
  %251 = load i32, i32* %5, align 4
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %250, %221
  store i32 0, i32* %7, align 4
  br label %253

253:                                              ; preds = %265, %252
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %12, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %268

257:                                              ; preds = %253
  %258 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @virtfn_add(%struct.pci_dev* %258, i32 %259, i32 0)
  store i32 %260, i32* %6, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %292

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %7, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %7, align 4
  br label %253

268:                                              ; preds = %253
  %269 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %270 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @PCI_SRIOV_CAP_VFM, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %268
  %276 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %277 = load i32, i32* %5, align 4
  %278 = call i32 @sriov_enable_migration(%struct.pci_dev* %276, i32 %277)
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %275
  br label %292

282:                                              ; preds = %275
  br label %283

283:                                              ; preds = %282, %268
  %284 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %285 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i32, i32* @KOBJ_CHANGE, align 4
  %288 = call i32 @kobject_uevent(i32* %286, i32 %287)
  %289 = load i32, i32* %5, align 4
  %290 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %291 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  store i32 0, i32* %3, align 4
  br label %342

292:                                              ; preds = %281, %263
  store i32 0, i32* %8, align 4
  br label %293

293:                                              ; preds = %301, %292
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %299 = load i32, i32* %8, align 4
  %300 = call i32 @virtfn_remove(%struct.pci_dev* %298, i32 %299, i32 0)
  br label %301

301:                                              ; preds = %297
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %8, align 4
  br label %293

304:                                              ; preds = %293
  %305 = load i32, i32* @PCI_SRIOV_CTRL_VFE, align 4
  %306 = load i32, i32* @PCI_SRIOV_CTRL_MSE, align 4
  %307 = or i32 %305, %306
  %308 = xor i32 %307, -1
  %309 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %310 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %309, i32 0, i32 7
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, %308
  store i32 %312, i32* %310, align 8
  %313 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %314 = call i32 @pci_cfg_access_lock(%struct.pci_dev* %313)
  %315 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %316 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %317 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %316, i32 0, i32 9
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @PCI_SRIOV_CTRL, align 8
  %320 = add nsw i64 %318, %319
  %321 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %322 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %321, i32 0, i32 7
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @pci_write_config_word(%struct.pci_dev* %315, i64 %320, i32 %323)
  %325 = call i32 @ssleep(i32 1)
  %326 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %327 = call i32 @pci_cfg_access_unlock(%struct.pci_dev* %326)
  %328 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %329 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %328, i32 0, i32 6
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %332 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %330, %333
  br i1 %334, label %335, label %340

335:                                              ; preds = %304
  %336 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %337 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = call i32 @sysfs_remove_link(i32* %338, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %340

340:                                              ; preds = %335, %304
  %341 = load i32, i32* %6, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %340, %283, %218, %205, %195, %171, %148, %113, %79, %56, %27, %21
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @virtfn_bus(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @pci_cfg_access_lock(%struct.pci_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_cfg_access_unlock(%struct.pci_dev*) #1

declare dso_local i32 @virtfn_add(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @sriov_enable_migration(%struct.pci_dev*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @virtfn_remove(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
