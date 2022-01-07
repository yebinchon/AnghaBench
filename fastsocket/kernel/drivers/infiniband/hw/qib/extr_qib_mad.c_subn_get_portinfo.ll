; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_portinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i64, i64, i64, i32, i32 }
%struct.ib_device = type { i32 }
%struct.qib_devdata = type { i32 (i32)*, i32 (i32)*, i32 (%struct.qib_pportdata*, i32)*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qib_ibport }
%struct.qib_ibport = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_port_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MTU_4096 = common dso_local global i8* null, align 8
@IB_MTU_2048 = common dso_local global i32 0, align 4
@IB_MTU_1024 = common dso_local global i32 0, align 4
@IB_MTU_512 = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@QIB_IB_CFG_VL_HIGH_CAP = common dso_local global i32 0, align 4
@QIB_IB_CFG_VL_LOW_CAP = common dso_local global i32 0, align 4
@qib_ibmtu = common dso_local global i8* null, align 8
@QIB_IB_CFG_OP_VLS = common dso_local global i32 0, align 4
@QIB_GUIDS_PER_PORT = common dso_local global i32 0, align 4
@IB_PORT_LINK_LATENCY_SUP = common dso_local global i32 0, align 4
@QIB_IB_CFG_LINKLATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_portinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_portinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.qib_pportdata*, align 8
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca %struct.ib_port_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %17 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_port_info*
  store %struct.ib_port_info* %19, %struct.ib_port_info** %10, align 8
  %20 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %21 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %14, align 4
  br label %59

28:                                               ; preds = %3
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %36 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %37 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %41 = call i32 @reply(%struct.ib_smp* %40)
  store i32 %41, i32* %12, align 4
  br label %337

42:                                               ; preds = %28
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %47, i32 %48)
  store %struct.qib_ibport* %49, %struct.qib_ibport** %9, align 8
  %50 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %51 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %52 = call i32 @check_mkey(%struct.qib_ibport* %50, %struct.ib_smp* %51, i32 0)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %56, i32* %12, align 4
  br label %337

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %26
  %60 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %61 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %60)
  store %struct.qib_devdata* %61, %struct.qib_devdata** %7, align 8
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 3
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %64, i64 %67
  store %struct.qib_pportdata* %68, %struct.qib_pportdata** %8, align 8
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %70 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %69, i32 0, i32 11
  store %struct.qib_ibport* %70, %struct.qib_ibport** %9, align 8
  %71 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %72 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memset(i64 %73, i32 0, i32 8)
  %75 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %76 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %59
  %81 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %82 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %85 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %90 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %99, label %93

93:                                               ; preds = %88, %80, %59
  %94 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %95 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %98 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %101 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %104 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %103, i32 0, i32 28
  store i32 %102, i32* %104, align 8
  %105 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %106 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @cpu_to_be16(i32 %107)
  %109 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %110 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %109, i32 0, i32 27
  store i8* %108, i8** %110, align 8
  %111 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %112 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_be16(i32 %113)
  %115 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %116 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %115, i32 0, i32 26
  store i8* %114, i8** %116, align 8
  %117 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %118 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @cpu_to_be32(i32 %119)
  %121 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %122 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %121, i32 0, i32 25
  store i32 %120, i32* %122, align 8
  %123 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %124 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @cpu_to_be16(i32 %125)
  %127 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %128 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %127, i32 0, i32 24
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %131 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %133 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %136 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %135, i32 0, i32 23
  store i32 %134, i32* %136, align 4
  %137 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %138 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %141 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %140, i32 0, i32 22
  store i32 %139, i32* %141, align 8
  %142 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %143 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %146 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %145, i32 0, i32 21
  store i32 %144, i32* %146, align 4
  %147 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %148 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %147, i32 0, i32 0
  %149 = load i32 (i32)*, i32 (i32)** %148, align 8
  %150 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %151 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 %149(i32 %152)
  store i32 %153, i32* %13, align 4
  %154 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %155 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %156, 4
  %158 = load i32, i32* %13, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %161 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %163 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %162, i32 0, i32 1
  %164 = load i32 (i32)*, i32 (i32)** %163, align 8
  %165 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %166 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %164(i32 %167)
  %169 = shl i32 %168, 4
  %170 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %171 = call i64 @get_linkdowndefaultstate(%struct.qib_pportdata* %170)
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 1, i32 2
  %175 = or i32 %169, %174
  %176 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %177 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  %178 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %179 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = shl i32 %180, 6
  %182 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %183 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %181, %184
  %186 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %187 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  %188 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %189 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = shl i32 %190, 4
  %192 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %193 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %191, %194
  %196 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %197 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 8
  %198 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %199 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  switch i32 %200, label %201 [
    i32 4096, label %202
    i32 2048, label %205
    i32 1024, label %207
    i32 512, label %209
    i32 256, label %211
  ]

201:                                              ; preds = %99
  br label %202

202:                                              ; preds = %99, %201
  %203 = load i8*, i8** @IB_MTU_4096, align 8
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %11, align 4
  br label %213

205:                                              ; preds = %99
  %206 = load i32, i32* @IB_MTU_2048, align 4
  store i32 %206, i32* %11, align 4
  br label %213

207:                                              ; preds = %99
  %208 = load i32, i32* @IB_MTU_1024, align 4
  store i32 %208, i32* %11, align 4
  br label %213

209:                                              ; preds = %99
  %210 = load i32, i32* @IB_MTU_512, align 4
  store i32 %210, i32* %11, align 4
  br label %213

211:                                              ; preds = %99
  %212 = load i32, i32* @IB_MTU_256, align 4
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %211, %209, %207, %205, %202
  %214 = load i32, i32* %11, align 4
  %215 = shl i32 %214, 4
  %216 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %217 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %215, %218
  %220 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %221 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %220, i32 0, i32 6
  store i32 %219, i32* %221, align 4
  %222 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %223 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 4
  %226 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %227 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 8
  %228 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %229 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %232 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %231, i32 0, i32 20
  store i32 %230, i32* %232, align 8
  %233 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %234 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %233, i32 0, i32 2
  %235 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %234, align 8
  %236 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %237 = load i32, i32* @QIB_IB_CFG_VL_HIGH_CAP, align 4
  %238 = call i32 %235(%struct.qib_pportdata* %236, i32 %237)
  %239 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %240 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %239, i32 0, i32 8
  store i32 %238, i32* %240, align 4
  %241 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %242 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %241, i32 0, i32 2
  %243 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %242, align 8
  %244 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %245 = load i32, i32* @QIB_IB_CFG_VL_LOW_CAP, align 4
  %246 = call i32 %243(%struct.qib_pportdata* %244, i32 %245)
  %247 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %248 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %247, i32 0, i32 9
  store i32 %246, i32* %248, align 8
  %249 = load i8*, i8** @qib_ibmtu, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %213
  %252 = load i8*, i8** @qib_ibmtu, align 8
  br label %255

253:                                              ; preds = %213
  %254 = load i8*, i8** @IB_MTU_4096, align 8
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i8* [ %252, %251 ], [ %254, %253 ]
  %257 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %258 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %257, i32 0, i32 19
  store i8* %256, i8** %258, align 8
  %259 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %260 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %259, i32 0, i32 2
  %261 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %260, align 8
  %262 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %263 = load i32, i32* @QIB_IB_CFG_OP_VLS, align 4
  %264 = call i32 %261(%struct.qib_pportdata* %262, i32 %263)
  %265 = shl i32 %264, 4
  %266 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %267 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %266, i32 0, i32 10
  store i32 %265, i32* %267, align 4
  %268 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %269 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @cpu_to_be16(i32 %270)
  %272 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %273 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %272, i32 0, i32 18
  store i8* %271, i8** %273, align 8
  %274 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %275 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = call i8* @cpu_to_be16(i32 %276)
  %278 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %279 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %278, i32 0, i32 17
  store i8* %277, i8** %279, align 8
  %280 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %281 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 8
  %283 = call i8* @cpu_to_be16(i32 %282)
  %284 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %285 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %284, i32 0, i32 16
  store i8* %283, i8** %285, align 8
  %286 = load i32, i32* @QIB_GUIDS_PER_PORT, align 4
  %287 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %288 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %287, i32 0, i32 15
  store i32 %286, i32* %288, align 4
  %289 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %290 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %293 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %292, i32 0, i32 14
  store i32 %291, i32* %293, align 8
  %294 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %295 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %294, i32 0, i32 11
  store i32 3, i32* %295, align 8
  %296 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %297 = call i32 @get_phyerrthreshold(%struct.qib_pportdata* %296)
  %298 = shl i32 %297, 4
  %299 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %300 = call i32 @get_overrunthreshold(%struct.qib_pportdata* %299)
  %301 = or i32 %298, %300
  %302 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %303 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %302, i32 0, i32 12
  store i32 %301, i32* %303, align 4
  %304 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %305 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @IB_PORT_LINK_LATENCY_SUP, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %334

310:                                              ; preds = %255
  %311 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %312 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %311, i32 0, i32 2
  %313 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %312, align 8
  %314 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %315 = load i32, i32* @QIB_IB_CFG_LINKLATENCY, align 4
  %316 = call i32 %313(%struct.qib_pportdata* %314, i32 %315)
  store i32 %316, i32* %15, align 4
  %317 = load i32, i32* %15, align 4
  %318 = ashr i32 %317, 16
  %319 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %320 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %319, i32 0, i32 13
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  store i32 %318, i32* %322, align 4
  %323 = load i32, i32* %15, align 4
  %324 = ashr i32 %323, 8
  %325 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %326 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %325, i32 0, i32 13
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  store i32 %324, i32* %328, align 4
  %329 = load i32, i32* %15, align 4
  %330 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %331 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %330, i32 0, i32 13
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  store i32 %329, i32* %333, align 4
  br label %334

334:                                              ; preds = %310, %255
  %335 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %336 = call i32 @reply(%struct.ib_smp* %335)
  store i32 %336, i32* %12, align 4
  br label %337

337:                                              ; preds = %334, %55, %34
  %338 = load i32, i32* %12, align 4
  ret i32 %338
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @check_mkey(%struct.qib_ibport*, %struct.ib_smp*, i32) #1

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @get_linkdowndefaultstate(%struct.qib_pportdata*) #1

declare dso_local i32 @get_phyerrthreshold(%struct.qib_pportdata*) #1

declare dso_local i32 @get_overrunthreshold(%struct.qib_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
