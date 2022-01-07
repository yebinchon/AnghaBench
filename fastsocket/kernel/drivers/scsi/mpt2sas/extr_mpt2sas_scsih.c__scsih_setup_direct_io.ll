; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_setup_direct_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_setup_direct_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32 }
%struct.scsi_cmnd = type { i64* }
%struct._raid_device = type { i64, i64, i64, i64, i64, i32* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@READ_16 = common dso_local global i64 0, align 8
@READ_10 = common dso_local global i64 0, align 8
@WRITE_16 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT2SAS_ADAPTER*, %struct.scsi_cmnd*, %struct._raid_device*, %struct.TYPE_5__*, i32)* @_scsih_setup_direct_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_setup_direct_io(%struct.MPT2SAS_ADAPTER* %0, %struct.scsi_cmnd* %1, %struct._raid_device* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct._raid_device*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %6, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %7, align 8
  store %struct._raid_device* %2, %struct._raid_device** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32 %4, i32* %10, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %22, align 8
  %30 = load i64, i64* @READ_16, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* %22, align 8
  %34 = load i64, i64* @READ_10, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %22, align 8
  %38 = load i64, i64* @WRITE_16, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %22, align 8
  %42 = load i64, i64* @WRITE_10, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %224

44:                                               ; preds = %40, %36, %32, %5
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %20, align 8
  %49 = load i64, i64* %22, align 8
  %50 = load i64, i64* @READ_16, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %44
  %53 = load i64*, i64** %20, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %20, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %55, %58
  %60 = load i64*, i64** %20, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 4
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %59, %62
  %64 = load i64*, i64** %20, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 5
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %63, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %150, label %69

69:                                               ; preds = %52, %44
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %71 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %70)
  %72 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %73 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = ashr i64 %71, %74
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %22, align 8
  %77 = load i64, i64* @READ_16, align 8
  %78 = icmp slt i64 %76, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 2, i32 6
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %21, align 8
  %82 = load i64*, i64** %20, align 8
  %83 = load i64, i64* %21, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = bitcast i64* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @be32_to_cpu(i32 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %16, align 8
  %90 = add nsw i64 %88, %89
  %91 = sub nsw i64 %90, 1
  %92 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %93 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %91, %94
  br i1 %95, label %96, label %149

96:                                               ; preds = %69
  %97 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %98 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %17, align 8
  %100 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %101 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %18, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %17, align 8
  %105 = sub nsw i64 %104, 1
  %106 = and i64 %103, %105
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %16, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i64, i64* %17, align 8
  %111 = icmp sle i64 %109, %110
  br i1 %111, label %112, label %148

112:                                              ; preds = %96
  %113 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %114 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %19, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %18, align 8
  %118 = ashr i64 %116, %117
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %19, align 8
  %121 = sdiv i64 %119, %120
  store i64 %121, i64* %14, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %19, align 8
  %124 = srem i64 %122, %123
  store i64 %124, i64* %15, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %18, align 8
  %127 = shl i64 %125, %126
  %128 = load i64, i64* %13, align 8
  %129 = add nsw i64 %127, %128
  store i64 %129, i64* %12, align 8
  %130 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %131 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_le16(i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @cpu_to_be32(i64 %139)
  %141 = load i64*, i64** %20, align 8
  %142 = load i64, i64* %21, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = bitcast i64* %143 to i32*
  store i32 %140, i32* %144, align 4
  %145 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @_scsih_scsi_direct_io_set(%struct.MPT2SAS_ADAPTER* %145, i32 %146, i32 1)
  br label %148

148:                                              ; preds = %112, %96
  br label %149

149:                                              ; preds = %148, %69
  br label %223

150:                                              ; preds = %52
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %152 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %151)
  %153 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %154 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = ashr i64 %152, %155
  store i64 %156, i64* %16, align 8
  %157 = load i64*, i64** %20, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 2
  %159 = bitcast i64* %158 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @be64_to_cpu(i32 %160)
  store i64 %161, i64* %23, align 8
  %162 = load i64, i64* %23, align 8
  %163 = load i64, i64* %16, align 8
  %164 = add nsw i64 %162, %163
  %165 = sub nsw i64 %164, 1
  %166 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %167 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sle i64 %165, %168
  br i1 %169, label %170, label %222

170:                                              ; preds = %150
  %171 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %172 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %17, align 8
  %174 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %175 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %18, align 8
  %177 = load i64, i64* %23, align 8
  %178 = load i64, i64* %17, align 8
  %179 = sub nsw i64 %178, 1
  %180 = and i64 %177, %179
  store i64 %180, i64* %13, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %16, align 8
  %183 = add nsw i64 %181, %182
  %184 = load i64, i64* %17, align 8
  %185 = icmp sle i64 %183, %184
  br i1 %185, label %186, label %221

186:                                              ; preds = %170
  %187 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %188 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %19, align 8
  %190 = load i64, i64* %23, align 8
  %191 = load i64, i64* %18, align 8
  %192 = ashr i64 %190, %191
  store i64 %192, i64* %12, align 8
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* %19, align 8
  %195 = sdiv i64 %193, %194
  store i64 %195, i64* %14, align 8
  %196 = load i64, i64* %12, align 8
  %197 = load i64, i64* %19, align 8
  %198 = srem i64 %196, %197
  store i64 %198, i64* %15, align 8
  %199 = load i64, i64* %14, align 8
  %200 = load i64, i64* %18, align 8
  %201 = shl i64 %199, %200
  %202 = load i64, i64* %13, align 8
  %203 = add nsw i64 %201, %202
  store i64 %203, i64* %12, align 8
  %204 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %205 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %15, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @cpu_to_le16(i32 %209)
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  %213 = load i64, i64* %12, align 8
  %214 = call i32 @cpu_to_be64(i64 %213)
  %215 = load i64*, i64** %20, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 2
  %217 = bitcast i64* %216 to i32*
  store i32 %214, i32* %217, align 4
  %218 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @_scsih_scsi_direct_io_set(%struct.MPT2SAS_ADAPTER* %218, i32 %219, i32 1)
  br label %221

221:                                              ; preds = %186, %170
  br label %222

222:                                              ; preds = %221, %150
  br label %223

223:                                              ; preds = %222, %149
  br label %224

224:                                              ; preds = %223, %40
  ret void
}

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @_scsih_scsi_direct_io_set(%struct.MPT2SAS_ADAPTER*, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
