; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_virtfn_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_virtfn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_4__, i32, %struct.resource*, i32, i32, i32, %struct.pci_sriov* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.resource = type { i64, i64, i32, i32, i32 }
%struct.pci_sriov = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VIRTFN_ID_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_SRIOV_VF_DID = common dso_local global i64 0, align 8
@PCI_SRIOV_NUM_BARS = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"virtfn%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"physfn\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @virtfn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtfn_add(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca %struct.resource*, align 8
  %15 = alloca %struct.pci_sriov*, align 8
  %16 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @VIRTFN_ID_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 8
  %23 = load %struct.pci_sriov*, %struct.pci_sriov** %22, align 8
  store %struct.pci_sriov* %23, %struct.pci_sriov** %15, align 8
  %24 = call %struct.pci_dev* (...) @alloc_pci_dev()
  store %struct.pci_dev* %24, %struct.pci_dev** %13, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %277

30:                                               ; preds = %3
  %31 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %32 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @virtfn_bus(%struct.pci_dev* %41, i32 %42)
  %44 = call i32 @virtfn_add_bus(i32 %40, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %30
  %52 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %53 = call i32 @kfree_pci_dev(%struct.pci_dev* %52)
  %54 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %55 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %277

63:                                               ; preds = %30
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @virtfn_devfn(%struct.pci_dev* %64, i32 %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %76 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI_SRIOV_VF_DID, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 5
  %82 = call i32 @pci_read_config_word(%struct.pci_dev* %74, i64 %79, i32* %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %84 = call i32 @pci_setup_device(%struct.pci_dev* %83)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %182, %63
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @PCI_SRIOV_NUM_BARS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %185

96:                                               ; preds = %92
  %97 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 4
  %99 = load %struct.resource*, %struct.resource** %98, align 8
  %100 = load i32, i32* @PCI_IOV_RESOURCES, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %99, i64 %101
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %102, i64 %104
  store %struct.resource* %105, %struct.resource** %14, align 8
  %106 = load %struct.resource*, %struct.resource** %14, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %96
  br label %182

111:                                              ; preds = %96
  %112 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %113 = call i32 @pci_name(%struct.pci_dev* %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 4
  %116 = load %struct.resource*, %struct.resource** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %116, i64 %118
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 3
  store i32 %113, i32* %120, align 4
  %121 = load %struct.resource*, %struct.resource** %14, align 8
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 4
  %126 = load %struct.resource*, %struct.resource** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %126, i64 %128
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %129, i32 0, i32 2
  store i32 %123, i32* %130, align 8
  %131 = load %struct.resource*, %struct.resource** %14, align 8
  %132 = call i32 @resource_size(%struct.resource* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %135 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @do_div(i32 %133, i32 %136)
  %138 = load %struct.resource*, %struct.resource** %14, align 8
  %139 = getelementptr inbounds %struct.resource, %struct.resource* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %6, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %140, %144
  %146 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 4
  %148 = load %struct.resource*, %struct.resource** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %148, i64 %150
  %152 = getelementptr inbounds %struct.resource, %struct.resource* %151, i32 0, i32 0
  store i64 %145, i64* %152, align 8
  %153 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 4
  %155 = load %struct.resource*, %struct.resource** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.resource, %struct.resource* %155, i64 %157
  %159 = getelementptr inbounds %struct.resource, %struct.resource* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = sub nsw i64 %163, 1
  %165 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 4
  %167 = load %struct.resource*, %struct.resource** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.resource, %struct.resource* %167, i64 %169
  %171 = getelementptr inbounds %struct.resource, %struct.resource* %170, i32 0, i32 1
  store i64 %164, i64* %171, align 8
  %172 = load %struct.resource*, %struct.resource** %14, align 8
  %173 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %174 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %173, i32 0, i32 4
  %175 = load %struct.resource*, %struct.resource** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.resource, %struct.resource* %175, i64 %177
  %179 = call i32 @request_resource(%struct.resource* %172, %struct.resource* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @BUG_ON(i32 %180)
  br label %182

182:                                              ; preds = %111, %110
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %92

185:                                              ; preds = %92
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %190 = call i32 @__pci_reset_function(%struct.pci_dev* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %193 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @pci_device_add(%struct.pci_dev* %192, i32 %195)
  %197 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %198 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %197, i32 0, i32 0
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = call i32 @mutex_unlock(i32* %202)
  %204 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %205 = call i32 @pci_dev_get(%struct.pci_dev* %204)
  %206 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %207 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 8
  %208 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %209 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  %210 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %211 = call i32 @pci_bus_add_device(%struct.pci_dev* %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %191
  br label %250

215:                                              ; preds = %191
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %216)
  %218 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %219 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %222 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = call i32 @sysfs_create_link(i32* %220, i32* %223, i8* %20)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %215
  br label %250

228:                                              ; preds = %215
  %229 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %230 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %233 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = call i32 @sysfs_create_link(i32* %231, i32* %234, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %228
  br label %245

239:                                              ; preds = %228
  %240 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %241 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* @KOBJ_CHANGE, align 4
  %244 = call i32 @kobject_uevent(i32* %242, i32 %243)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %277

245:                                              ; preds = %238
  %246 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %247 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = call i32 @sysfs_remove_link(i32* %248, i8* %20)
  br label %250

250:                                              ; preds = %245, %227, %214
  %251 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %252 = call i32 @pci_dev_put(%struct.pci_dev* %251)
  %253 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %254 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %253, i32 0, i32 0
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = call i32 @mutex_lock(i32* %258)
  %260 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %261 = call i32 @pci_remove_bus_device(%struct.pci_dev* %260)
  %262 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %263 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %266 = load i32, i32* %6, align 4
  %267 = call i32 @virtfn_bus(%struct.pci_dev* %265, i32 %266)
  %268 = call i32 @virtfn_remove_bus(i32 %264, i32 %267)
  %269 = load %struct.pci_sriov*, %struct.pci_sriov** %15, align 8
  %270 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %269, i32 0, i32 0
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = call i32 @mutex_unlock(i32* %274)
  %276 = load i32, i32* %9, align 4
  store i32 %276, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %277

277:                                              ; preds = %250, %239, %51, %27
  %278 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %278)
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pci_dev* @alloc_pci_dev(...) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @virtfn_add_bus(i32, i32) #2

declare dso_local i32 @virtfn_bus(%struct.pci_dev*, i32) #2

declare dso_local i32 @kfree_pci_dev(%struct.pci_dev*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @virtfn_devfn(%struct.pci_dev*, i32) #2

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #2

declare dso_local i32 @pci_setup_device(%struct.pci_dev*) #2

declare dso_local i32 @pci_name(%struct.pci_dev*) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local i32 @do_div(i32, i32) #2

declare dso_local i32 @request_resource(%struct.resource*, %struct.resource*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @__pci_reset_function(%struct.pci_dev*) #2

declare dso_local i32 @pci_device_add(%struct.pci_dev*, i32) #2

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #2

declare dso_local i32 @pci_bus_add_device(%struct.pci_dev*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #2

declare dso_local i32 @kobject_uevent(i32*, i32) #2

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #2

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #2

declare dso_local i32 @pci_remove_bus_device(%struct.pci_dev*) #2

declare dso_local i32 @virtfn_remove_bus(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
