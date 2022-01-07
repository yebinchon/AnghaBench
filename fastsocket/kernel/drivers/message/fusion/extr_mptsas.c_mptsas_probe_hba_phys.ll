; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_probe_hba_phys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_probe_hba_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__*, i64, i32, i32, %struct.mptsas_portinfo* }
%struct.TYPE_10__ = type { i32 }
%struct.mptsas_portinfo = type { i32, i32, %struct.mptsas_portinfo*, %struct.TYPE_12__, %struct.TYPE_12__, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER = common dso_local global i32 0, align 4
@MPI_SAS_PHY_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @mptsas_probe_hba_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_probe_hba_phys(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.mptsas_portinfo*, align 8
  %5 = alloca %struct.mptsas_portinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mptsas_portinfo* @kzalloc(i32 88, i32 %10)
  store %struct.mptsas_portinfo* %11, %struct.mptsas_portinfo** %5, align 8
  %12 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %13 = icmp ne %struct.mptsas_portinfo* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %275

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %18 = call i32 @mptsas_sas_io_unit_pg0(%struct.TYPE_11__* %16, %struct.mptsas_portinfo* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %272

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 @mptsas_sas_io_unit_pg1(%struct.TYPE_11__* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 5
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 7
  %30 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %29, align 8
  store %struct.mptsas_portinfo* %30, %struct.mptsas_portinfo** %4, align 8
  %31 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %32 = icmp ne %struct.mptsas_portinfo* %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %22
  %34 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  store %struct.mptsas_portinfo* %34, %struct.mptsas_portinfo** %4, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 7
  store %struct.mptsas_portinfo* %34, %struct.mptsas_portinfo** %36, align 8
  %37 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %38 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %43 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %42, i32 0, i32 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 6
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  br label %110

47:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %100, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %51 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %103

54:                                               ; preds = %48
  %55 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %56 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %55, i32 0, i32 2
  %57 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %57, i64 %59
  %61 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %64 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %63, i32 0, i32 2
  %65 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %65, i64 %67
  %69 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %68, i32 0, i32 7
  store i32 %62, i32* %69, align 4
  %70 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %71 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %70, i32 0, i32 2
  %72 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %72, i64 %74
  %76 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %79 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %78, i32 0, i32 2
  %80 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %80, i64 %82
  %84 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %83, i32 0, i32 5
  store i64 %77, i64* %84, align 8
  %85 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %86 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %85, i32 0, i32 2
  %87 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %87, i64 %89
  %91 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %94 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %93, i32 0, i32 2
  %95 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %95, i64 %97
  %99 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %98, i32 0, i32 6
  store i32 %92, i32* %99, align 8
  br label %100

100:                                              ; preds = %54
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %48

103:                                              ; preds = %48
  %104 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %105 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %104, i32 0, i32 2
  %106 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %105, align 8
  %107 = call i32 @kfree(%struct.mptsas_portinfo* %106)
  %108 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %109 = call i32 @kfree(%struct.mptsas_portinfo* %108)
  store %struct.mptsas_portinfo* null, %struct.mptsas_portinfo** %5, align 8
  br label %110

110:                                              ; preds = %103, %33
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 5
  %113 = call i32 @mutex_unlock(i32* %112)
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %236, %110
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %117 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %239

120:                                              ; preds = %114
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %123 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %122, i32 0, i32 2
  %124 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %124, i64 %126
  %128 = load i32, i32* @MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER, align 4
  %129 = load i32, i32* @MPI_SAS_PHY_PGAD_FORM_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @mptsas_sas_phy_pg0(%struct.TYPE_11__* %121, %struct.mptsas_portinfo* %127, i32 %130, i32 %131)
  %133 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %134 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %133, i32 0, i32 2
  %135 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %135, i64 %137
  %139 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %142 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %141, i32 0, i32 2
  %143 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %143, i64 %145
  %147 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  store i64 %140, i64* %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %151 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %150, i32 0, i32 2
  %152 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %152, i64 %154
  %156 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %155, i32 0, i32 4
  %157 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_HANDLE, align 4
  %158 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_SHIFT, align 4
  %159 = shl i32 %157, %158
  %160 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %161 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %160, i32 0, i32 2
  %162 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %162, i64 %164
  %166 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @mptsas_sas_device_pg0(%struct.TYPE_11__* %149, %struct.TYPE_12__* %156, i32 %159, i64 %168)
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %120
  %175 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %176 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %175, i32 0, i32 2
  %177 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %177, i64 %179
  %181 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %174, %120
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %189 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %188, i32 0, i32 2
  %190 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %190, i64 %192
  %194 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %193, i32 0, i32 1
  store i32 %187, i32* %194, align 4
  %195 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %196 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %195, i32 0, i32 2
  %197 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %197, i64 %199
  %201 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  store i32 %187, i32* %202, align 8
  %203 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %204 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %203, i32 0, i32 2
  %205 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %205, i64 %207
  %209 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %235

213:                                              ; preds = %186
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %215 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %216 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %215, i32 0, i32 2
  %217 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %217, i64 %219
  %221 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %220, i32 0, i32 3
  %222 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_HANDLE, align 4
  %223 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %226 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %225, i32 0, i32 2
  %227 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %227, i64 %229
  %231 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @mptsas_sas_device_pg0(%struct.TYPE_11__* %214, %struct.TYPE_12__* %221, i32 %224, i64 %233)
  br label %235

235:                                              ; preds = %213, %186
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %114

239:                                              ; preds = %114
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %241 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %242 = call i32 @mptsas_setup_wide_ports(%struct.TYPE_11__* %240, %struct.mptsas_portinfo* %241)
  store i32 0, i32* %7, align 4
  br label %243

243:                                              ; preds = %264, %239
  %244 = load i32, i32* %7, align 4
  %245 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %246 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %271

249:                                              ; preds = %243
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %4, align 8
  %255 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %254, i32 0, i32 2
  %256 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.mptsas_portinfo, %struct.mptsas_portinfo* %256, i64 %258
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @mptsas_probe_one_phy(i32* %253, %struct.mptsas_portinfo* %259, i32 %262, i32 1)
  br label %264

264:                                              ; preds = %249
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  br label %243

271:                                              ; preds = %243
  store i32 0, i32* %2, align 4
  br label %277

272:                                              ; preds = %21
  %273 = load %struct.mptsas_portinfo*, %struct.mptsas_portinfo** %5, align 8
  %274 = call i32 @kfree(%struct.mptsas_portinfo* %273)
  br label %275

275:                                              ; preds = %272, %14
  %276 = load i32, i32* %6, align 4
  store i32 %276, i32* %2, align 4
  br label %277

277:                                              ; preds = %275, %271
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local %struct.mptsas_portinfo* @kzalloc(i32, i32) #1

declare dso_local i32 @mptsas_sas_io_unit_pg0(%struct.TYPE_11__*, %struct.mptsas_portinfo*) #1

declare dso_local i32 @mptsas_sas_io_unit_pg1(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mptsas_portinfo*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mptsas_sas_phy_pg0(%struct.TYPE_11__*, %struct.mptsas_portinfo*, i32, i32) #1

declare dso_local i32 @mptsas_sas_device_pg0(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @mptsas_setup_wide_ports(%struct.TYPE_11__*, %struct.mptsas_portinfo*) #1

declare dso_local i32 @mptsas_probe_one_phy(i32*, %struct.mptsas_portinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
