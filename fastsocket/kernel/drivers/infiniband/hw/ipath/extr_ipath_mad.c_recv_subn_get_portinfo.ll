; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_get_portinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_get_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i64, i64, i64, i32, i32 }
%struct.ib_device = type { i64 }
%struct.ipath_ibdev = type { i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 (%struct.ipath_devdata*, i32)*, i32, i32, i32 }
%struct.ib_port_info = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32*, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_LID_PERMISSIVE = common dso_local global i8* null, align 8
@ipath_cvt_physportstate = common dso_local global i32* null, align 8
@IB_MTU_4096 = common dso_local global i8* null, align 8
@IB_MTU_2048 = common dso_local global i8* null, align 8
@IB_MTU_1024 = common dso_local global i64 0, align 8
@IB_MTU_512 = common dso_local global i64 0, align 8
@IB_MTU_256 = common dso_local global i64 0, align 8
@ipath_mtu4096 = common dso_local global i64 0, align 8
@IB_PORT_LINK_LATENCY_SUP = common dso_local global i32 0, align 4
@IPATH_IB_CFG_LINKLATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i64)* @recv_subn_get_portinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_subn_get_portinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ipath_ibdev*, align 8
  %8 = alloca %struct.ipath_devdata*, align 8
  %9 = alloca %struct.ib_port_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %16 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ib_port_info*
  store %struct.ib_port_info* %18, %struct.ib_port_info** %9, align 8
  %19 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %20 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @be32_to_cpu(i32 %21)
  %23 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %24 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %29 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %30 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %34 = call i32 @reply(%struct.ib_smp* %33)
  store i32 %34, i32* %13, align 4
  br label %297

35:                                               ; preds = %3
  %36 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %37 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %36)
  store %struct.ipath_ibdev* %37, %struct.ipath_ibdev** %7, align 8
  %38 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %39 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %38, i32 0, i32 12
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %39, align 8
  store %struct.ipath_devdata* %40, %struct.ipath_devdata** %8, align 8
  %41 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %42 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memset(i64 %43, i32 0, i32 8)
  %45 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %46 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %63, label %50

50:                                               ; preds = %35
  %51 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %52 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %55 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %60 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58, %50, %35
  %64 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %65 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %68 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %71 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %74 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %73, i32 0, i32 26
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %76 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  %82 = call i8* @cpu_to_be16(i32 %81)
  br label %85

83:                                               ; preds = %69
  %84 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i8* [ %82, %80 ], [ %84, %83 ]
  %87 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %88 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %87, i32 0, i32 25
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %90 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_be16(i32 %91)
  %93 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %94 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %93, i32 0, i32 24
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %96 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cpu_to_be32(i32 %97)
  %99 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %100 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %99, i32 0, i32 23
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %102 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_be16(i32 %103)
  %105 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %106 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %105, i32 0, i32 22
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %109 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %111 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %114 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %113, i32 0, i32 21
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %116 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %119 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %118, i32 0, i32 20
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %121 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %124 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %123, i32 0, i32 19
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %126 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 4
  %129 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %130 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %132 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %11, align 8
  %134 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @ipath_ib_linkstate(%struct.ipath_devdata* %134, i64 %135)
  %137 = add nsw i32 %136, 1
  %138 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %139 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32*, i32** @ipath_cvt_physportstate, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %145 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = and i64 %143, %146
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 4
  %151 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %152 = call i64 @get_linkdowndefaultstate(%struct.ipath_devdata* %151)
  %153 = icmp ne i64 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 2
  %156 = or i32 %150, %155
  %157 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %158 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %160 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = shl i32 %161, 6
  %163 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %164 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %162, %165
  %167 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %168 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %170 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 4
  %173 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %174 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %172, %175
  %177 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %178 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 4
  %179 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %180 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %194 [
    i32 4096, label %182
    i32 2048, label %185
    i32 1024, label %188
    i32 512, label %190
    i32 256, label %192
  ]

182:                                              ; preds = %85
  %183 = load i8*, i8** @IB_MTU_4096, align 8
  %184 = ptrtoint i8* %183 to i64
  store i64 %184, i64* %12, align 8
  br label %197

185:                                              ; preds = %85
  %186 = load i8*, i8** @IB_MTU_2048, align 8
  %187 = ptrtoint i8* %186 to i64
  store i64 %187, i64* %12, align 8
  br label %197

188:                                              ; preds = %85
  %189 = load i64, i64* @IB_MTU_1024, align 8
  store i64 %189, i64* %12, align 8
  br label %197

190:                                              ; preds = %85
  %191 = load i64, i64* @IB_MTU_512, align 8
  store i64 %191, i64* %12, align 8
  br label %197

192:                                              ; preds = %85
  %193 = load i64, i64* @IB_MTU_256, align 8
  store i64 %193, i64* %12, align 8
  br label %197

194:                                              ; preds = %85
  %195 = load i8*, i8** @IB_MTU_2048, align 8
  %196 = ptrtoint i8* %195 to i64
  store i64 %196, i64* %12, align 8
  br label %197

197:                                              ; preds = %194, %192, %190, %188, %185, %182
  %198 = load i64, i64* %12, align 8
  %199 = shl i64 %198, 4
  %200 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %201 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = or i64 %199, %202
  %204 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %205 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %204, i32 0, i32 6
  store i64 %203, i64* %205, align 8
  %206 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %207 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %206, i32 0, i32 7
  store i32 16, i32* %207, align 8
  %208 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %209 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %208, i32 0, i32 10
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %212 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %211, i32 0, i32 18
  store i32 %210, i32* %212, align 8
  %213 = load i64, i64* @ipath_mtu4096, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %197
  %216 = load i8*, i8** @IB_MTU_4096, align 8
  br label %219

217:                                              ; preds = %197
  %218 = load i8*, i8** @IB_MTU_2048, align 8
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i8* [ %216, %215 ], [ %218, %217 ]
  %221 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %222 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %221, i32 0, i32 17
  store i8* %220, i8** %222, align 8
  %223 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %224 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %223, i32 0, i32 8
  store i32 16, i32* %224, align 4
  %225 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %226 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = call i8* @cpu_to_be16(i32 %227)
  %229 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %230 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %229, i32 0, i32 16
  store i8* %228, i8** %230, align 8
  %231 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %232 = call i32 @ipath_get_cr_errpkey(%struct.ipath_devdata* %231)
  %233 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %234 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %232, %235
  %237 = and i32 %236, 65535
  %238 = call i8* @cpu_to_be16(i32 %237)
  %239 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %240 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %239, i32 0, i32 15
  store i8* %238, i8** %240, align 8
  %241 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %242 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = call i8* @cpu_to_be16(i32 %243)
  %245 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %246 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %245, i32 0, i32 14
  store i8* %244, i8** %246, align 8
  %247 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %248 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %247, i32 0, i32 9
  store i32 1, i32* %248, align 8
  %249 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %250 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %253 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %252, i32 0, i32 13
  store i32 %251, i32* %253, align 8
  %254 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %255 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %254, i32 0, i32 10
  store i32 3, i32* %255, align 4
  %256 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %257 = call i32 @get_phyerrthreshold(%struct.ipath_devdata* %256)
  %258 = shl i32 %257, 4
  %259 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %260 = call i32 @get_overrunthreshold(%struct.ipath_devdata* %259)
  %261 = or i32 %258, %260
  %262 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %263 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %262, i32 0, i32 11
  store i32 %261, i32* %263, align 8
  %264 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %265 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @IB_PORT_LINK_LATENCY_SUP, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %294

270:                                              ; preds = %219
  %271 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %272 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %271, i32 0, i32 8
  %273 = load i32 (%struct.ipath_devdata*, i32)*, i32 (%struct.ipath_devdata*, i32)** %272, align 8
  %274 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  %275 = load i32, i32* @IPATH_IB_CFG_LINKLATENCY, align 4
  %276 = call i32 %273(%struct.ipath_devdata* %274, i32 %275)
  store i32 %276, i32* %14, align 4
  %277 = load i32, i32* %14, align 4
  %278 = ashr i32 %277, 16
  %279 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %280 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %279, i32 0, i32 12
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  store i32 %278, i32* %282, align 4
  %283 = load i32, i32* %14, align 4
  %284 = ashr i32 %283, 8
  %285 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %286 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %285, i32 0, i32 12
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  store i32 %284, i32* %288, align 4
  %289 = load i32, i32* %14, align 4
  %290 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %291 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %290, i32 0, i32 12
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  store i32 %289, i32* %293, align 4
  br label %294

294:                                              ; preds = %270, %219
  %295 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %296 = call i32 @reply(%struct.ib_smp* %295)
  store i32 %296, i32* %13, align 4
  br label %297

297:                                              ; preds = %294, %27
  %298 = load i32, i32* %13, align 4
  ret i32 %298
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipath_ib_linkstate(%struct.ipath_devdata*, i64) #1

declare dso_local i64 @get_linkdowndefaultstate(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_get_cr_errpkey(%struct.ipath_devdata*) #1

declare dso_local i32 @get_phyerrthreshold(%struct.ipath_devdata*) #1

declare dso_local i32 @get_overrunthreshold(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
