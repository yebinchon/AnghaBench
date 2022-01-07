; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_query_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_smp = type { i64, i32 }
%struct.mthca_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_INFO = common dso_local global i32 0, align 4
@DEV_LIM_FLAG_ATOMIC = common dso_local global i32 0, align 4
@IB_ATOMIC_HCA = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@MTHCA_QP_PER_MGM = common dso_local global i32 0, align 4
@MTHCA_FLAG_SINAI_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*)* @mthca_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  %5 = alloca %struct.ib_smp*, align 8
  %6 = alloca %struct.ib_smp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mthca_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %4, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %5, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %12 = call %struct.mthca_dev* @to_mdev(%struct.ib_device* %11)
  store %struct.mthca_dev* %12, %struct.mthca_dev** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ib_smp* @kzalloc(i32 16, i32 %13)
  store %struct.ib_smp* %14, %struct.ib_smp** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ib_smp* @kmalloc(i32 16, i32 %15)
  store %struct.ib_smp* %16, %struct.ib_smp** %6, align 8
  %17 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %18 = icmp ne %struct.ib_smp* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %21 = icmp ne %struct.ib_smp* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  br label %267

23:                                               ; preds = %19
  %24 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %25 = call i32 @memset(%struct.ib_device_attr* %24, i32 0, i32 144)
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %27 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %30 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %29, i32 0, i32 27
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %32 = call i32 @init_query_mad(%struct.ib_smp* %31)
  %33 = load i32, i32* @IB_SMP_ATTR_NODE_INFO, align 4
  %34 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %35 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %37 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %38 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %39 = call i32 @mthca_MAD_IFC(%struct.mthca_dev* %36, i32 1, i32 1, i32 1, i32* null, i32* null, %struct.ib_smp* %37, %struct.ib_smp* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  br label %267

43:                                               ; preds = %23
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %48 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %47, i32 0, i32 26
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %50 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 36
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @be32_to_cpup(i32* %53)
  %55 = and i32 %54, 16777215
  %56 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %57 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %59 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 30
  %62 = inttoptr i64 %61 to i32*
  %63 = call i32 @be16_to_cpup(i32* %62)
  %64 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %65 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %64, i32 0, i32 25
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %67 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 32
  %70 = inttoptr i64 %69 to i32*
  %71 = call i32 @be32_to_cpup(i32* %70)
  %72 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %73 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %74, i32 0, i32 24
  %76 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %77 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 4
  %80 = call i32 @memcpy(i32* %75, i64 %79, i32 8)
  %81 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %82 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %81, i32 0, i32 2
  store i64 -1, i64* %82, align 8
  %83 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %84 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 21
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %88 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %87, i32 0, i32 23
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %90 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %94 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %92, %96
  %98 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %99 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %101 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 20
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %105 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %104, i32 0, i32 22
  store i32 %103, i32* %105, align 4
  %106 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %107 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 19
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %111 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %110, i32 0, i32 21
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %113 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 18
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %117 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 17
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %115, %119
  %121 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %122 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %121, i32 0, i32 20
  store i64 %120, i64* %122, align 8
  %123 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %124 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 16
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %128 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %127, i32 0, i32 19
  store i32 %126, i32* %128, align 8
  %129 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %130 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %134 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 15
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %132, %136
  %138 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %139 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %138, i32 0, i32 18
  store i64 %137, i64* %139, align 8
  %140 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %141 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 14
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %145 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 13
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %143, %147
  %149 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %150 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %149, i32 0, i32 17
  store i64 %148, i64* %150, align 8
  %151 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %152 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 1, %154
  %156 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %157 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 4
  %158 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %159 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %163 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %162, i32 0, i32 16
  store i32 %161, i32* %163, align 8
  %164 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %165 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %168 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %166, %169
  %171 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %172 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %174 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 11
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %178 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 10
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %176, %180
  %182 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %183 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %182, i32 0, i32 15
  store i64 %181, i64* %183, align 8
  %184 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %185 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %189 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %188, i32 0, i32 14
  store i32 %187, i32* %189, align 4
  %190 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %191 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %195 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %194, i32 0, i32 13
  store i32 %193, i32* %195, align 8
  %196 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %197 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %201 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %200, i32 0, i32 12
  store i32 %199, i32* %201, align 4
  %202 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %203 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @DEV_LIM_FLAG_ATOMIC, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %43
  %210 = load i32, i32* @IB_ATOMIC_HCA, align 4
  br label %213

211:                                              ; preds = %43
  %212 = load i32, i32* @IB_ATOMIC_NONE, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i32 [ %210, %209 ], [ %212, %211 ]
  %215 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %216 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %215, i32 0, i32 11
  store i32 %214, i32* %216, align 8
  %217 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %218 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %222 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %221, i32 0, i32 10
  store i32 %220, i32* %222, align 4
  %223 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %224 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %228 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %226, %230
  %232 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %233 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @MTHCA_QP_PER_MGM, align 4
  %235 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %236 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %235, i32 0, i32 7
  store i32 %234, i32* %236, align 8
  %237 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %238 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %241 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %239, %242
  %244 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %245 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %244, i32 0, i32 8
  store i32 %243, i32* %245, align 4
  %246 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %247 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @MTHCA_FLAG_SINAI_OPT, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %213
  %253 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %254 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %253, i32 0, i32 9
  store i32 255, i32* %254, align 8
  br label %266

255:                                              ; preds = %213
  %256 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %257 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @ilog2(i64 %259)
  %261 = sub nsw i32 32, %260
  %262 = shl i32 1, %261
  %263 = sub nsw i32 %262, 1
  %264 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %265 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %264, i32 0, i32 9
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %255, %252
  store i32 0, i32* %7, align 4
  br label %267

267:                                              ; preds = %266, %42, %22
  %268 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %269 = call i32 @kfree(%struct.ib_smp* %268)
  %270 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %271 = call i32 @kfree(%struct.ib_smp* %270)
  %272 = load i32, i32* %7, align 4
  ret i32 %272
}

declare dso_local %struct.mthca_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @mthca_MAD_IFC(%struct.mthca_dev*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
