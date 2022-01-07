; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_set_isp_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_set_isp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, i8*, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@DT_EXTENDED_IDS = common dso_local global i32 0, align 4
@DT_ISP2100 = common dso_local global i32 0, align 4
@RISC_START_ADDRESS_2100 = common dso_local global i8* null, align 8
@DT_ISP2200 = common dso_local global i32 0, align 4
@DT_ISP2300 = common dso_local global i32 0, align 4
@DT_ZIO_SUPPORTED = common dso_local global i32 0, align 4
@RISC_START_ADDRESS_2300 = common dso_local global i8* null, align 8
@DT_ISP2312 = common dso_local global i32 0, align 4
@DT_ISP2322 = common dso_local global i32 0, align 4
@DT_OEM_001 = common dso_local global i32 0, align 4
@DT_ISP6312 = common dso_local global i32 0, align 4
@DT_ISP6322 = common dso_local global i32 0, align 4
@DT_ISP2422 = common dso_local global i32 0, align 4
@DT_FWI2 = common dso_local global i32 0, align 4
@DT_IIDMA = common dso_local global i32 0, align 4
@RISC_START_ADDRESS_2400 = common dso_local global i8* null, align 8
@DT_ISP2432 = common dso_local global i32 0, align 4
@DT_ISP8432 = common dso_local global i32 0, align 4
@DT_ISP5422 = common dso_local global i32 0, align 4
@DT_ISP5432 = common dso_local global i32 0, align 4
@DT_ISP2532 = common dso_local global i32 0, align 4
@DT_ISP8001 = common dso_local global i32 0, align 4
@DT_ISP8021 = common dso_local global i32 0, align 4
@DT_ISP2031 = common dso_local global i32 0, align 4
@DT_T10_PI = common dso_local global i32 0, align 4
@DT_ISP8031 = common dso_local global i32 0, align 4
@DT_ISPFX00 = common dso_local global i32 0, align 4
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"device_type=0x%x port=%d fw_srisc_address=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla2x00_set_isp_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_set_isp_flags(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %3 = load i32, i32* @DT_EXTENDED_IDS, align 4
  %4 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %5 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %6, i32 0, i32 5
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %354 [
    i32 144, label %11
    i32 143, label %26
    i32 142, label %41
    i32 141, label %55
    i32 140, label %69
    i32 134, label %103
    i32 133, label %112
    i32 139, label %121
    i32 138, label %145
    i32 129, label %169
    i32 136, label %193
    i32 135, label %207
    i32 137, label %221
    i32 132, label %245
    i32 131, label %269
    i32 145, label %290
    i32 130, label %319
    i32 128, label %348
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @DT_ISP2100, align 4
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @DT_EXTENDED_IDS, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i8*, i8** @RISC_START_ADDRESS_2100, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  br label %354

26:                                               ; preds = %1
  %27 = load i32, i32* @DT_ISP2200, align 4
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @DT_EXTENDED_IDS, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** @RISC_START_ADDRESS_2100, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %354

41:                                               ; preds = %1
  %42 = load i32, i32* @DT_ISP2300, align 4
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %354

55:                                               ; preds = %1
  %56 = load i32, i32* @DT_ISP2312, align 4
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %354

69:                                               ; preds = %1
  %70 = load i32, i32* @DT_ISP2322, align 4
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 5
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 4136
  br i1 %85, label %86, label %99

86:                                               ; preds = %69
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 5
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 368
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @DT_OEM_001, align 4
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %96 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %86, %69
  %100 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  br label %354

103:                                              ; preds = %1
  %104 = load i32, i32* @DT_ISP6312, align 4
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %106 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %111 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %354

112:                                              ; preds = %1
  %113 = load i32, i32* @DT_ISP6322, align 4
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i8*, i8** @RISC_START_ADDRESS_2300, align 8
  %119 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %120 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %354

121:                                              ; preds = %1
  %122 = load i32, i32* @DT_ISP2422, align 4
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @DT_FWI2, align 4
  %133 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %134 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @DT_IIDMA, align 4
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  br label %354

145:                                              ; preds = %1
  %146 = load i32, i32* @DT_ISP2432, align 4
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %148 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %152 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %153 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @DT_FWI2, align 4
  %157 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %158 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* @DT_IIDMA, align 4
  %162 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %163 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %167 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %168 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  br label %354

169:                                              ; preds = %1
  %170 = load i32, i32* @DT_ISP8432, align 4
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %172 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %176 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %177 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* @DT_FWI2, align 4
  %181 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %182 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @DT_IIDMA, align 4
  %186 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %187 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %191 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %192 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  br label %354

193:                                              ; preds = %1
  %194 = load i32, i32* @DT_ISP5422, align 4
  %195 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %196 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* @DT_FWI2, align 4
  %200 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %201 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %205 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %206 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %205, i32 0, i32 2
  store i8* %204, i8** %206, align 8
  br label %354

207:                                              ; preds = %1
  %208 = load i32, i32* @DT_ISP5432, align 4
  %209 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %210 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* @DT_FWI2, align 4
  %214 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %215 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %219 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %220 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  br label %354

221:                                              ; preds = %1
  %222 = load i32, i32* @DT_ISP2532, align 4
  %223 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %224 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %228 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %229 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* @DT_FWI2, align 4
  %233 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %234 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* @DT_IIDMA, align 4
  %238 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %239 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %243 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %244 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  br label %354

245:                                              ; preds = %1
  %246 = load i32, i32* @DT_ISP8001, align 4
  %247 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %248 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %252 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %253 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* @DT_FWI2, align 4
  %257 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %258 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  %261 = load i32, i32* @DT_IIDMA, align 4
  %262 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %263 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %267 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %268 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %267, i32 0, i32 2
  store i8* %266, i8** %268, align 8
  br label %354

269:                                              ; preds = %1
  %270 = load i32, i32* @DT_ISP8021, align 4
  %271 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %272 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %276 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %277 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  %280 = load i32, i32* @DT_FWI2, align 4
  %281 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %282 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %286 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %287 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %286, i32 0, i32 2
  store i8* %285, i8** %287, align 8
  %288 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %289 = call i32 @qla82xx_init_flags(%struct.qla_hw_data* %288)
  br label %354

290:                                              ; preds = %1
  %291 = load i32, i32* @DT_ISP2031, align 4
  %292 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %293 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %297 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %298 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  %301 = load i32, i32* @DT_FWI2, align 4
  %302 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %303 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 4
  %306 = load i32, i32* @DT_IIDMA, align 4
  %307 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %308 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* @DT_T10_PI, align 4
  %312 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %313 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  %316 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %317 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %318 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %317, i32 0, i32 2
  store i8* %316, i8** %318, align 8
  br label %354

319:                                              ; preds = %1
  %320 = load i32, i32* @DT_ISP8031, align 4
  %321 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %322 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  %325 = load i32, i32* @DT_ZIO_SUPPORTED, align 4
  %326 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %327 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %325
  store i32 %329, i32* %327, align 4
  %330 = load i32, i32* @DT_FWI2, align 4
  %331 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %332 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load i32, i32* @DT_IIDMA, align 4
  %336 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %337 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 4
  %340 = load i32, i32* @DT_T10_PI, align 4
  %341 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %342 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = load i8*, i8** @RISC_START_ADDRESS_2400, align 8
  %346 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %347 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %346, i32 0, i32 2
  store i8* %345, i8** %347, align 8
  br label %354

348:                                              ; preds = %1
  %349 = load i32, i32* @DT_ISPFX00, align 4
  %350 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %351 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %349
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %1, %348, %319, %290, %269, %245, %221, %207, %193, %169, %145, %121, %112, %103, %99, %55, %41, %26, %11
  %355 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %356 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %368

358:                                              ; preds = %354
  %359 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %360 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 1
  %363 = icmp ne i32 %362, 0
  %364 = xor i1 %363, true
  %365 = zext i1 %364 to i32
  %366 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %367 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %366, i32 0, i32 0
  store i32 %365, i32* %367, align 8
  br label %376

368:                                              ; preds = %354
  %369 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %370 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %369, i32 0, i32 5
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %370, align 8
  %372 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %373 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %374 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %373, i32 0, i32 0
  %375 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %371, i32 %372, i32* %374)
  br label %376

376:                                              ; preds = %368, %358
  %377 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %378 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %376
  %383 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %384 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 0
  store i32 1, i32* %385, align 8
  br label %390

386:                                              ; preds = %376
  %387 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %388 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  store i32 0, i32* %389, align 8
  br label %390

390:                                              ; preds = %386, %382
  %391 = load i32, i32* @ql_dbg_init, align 4
  %392 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %393 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %392, i32 0, i32 5
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %393, align 8
  %395 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %396 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %399 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %403 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %402, i32 0, i32 2
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 @ql_dbg_pci(i32 %391, %struct.TYPE_5__* %394, i32 11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %397, i32 %401, i8* %404)
  ret void
}

declare dso_local i32 @qla82xx_init_flags(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @ql_dbg_pci(i32, %struct.TYPE_5__*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
