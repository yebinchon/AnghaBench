; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2o_device = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.i2o_controller* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2o_controller = type { i32 }
%struct.i2o_scsi_host = type { %struct.Scsi_Host*, %struct.i2o_device**, i32 }
%struct.Scsi_Host = type { i32, i64, i64 }
%struct.scsi_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"can not find parent of device %03x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"can not find channel of device %03x\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"SCSI device id (%d) >= max_id of I2O host (%d)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"SCSI device lun (%lu) >= max_lun of I2O host (%d)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"can not add SCSI device %03x\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"scsi\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"device added (TID: %03x) channel: %d, id: %d, lun: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @i2o_scsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_scsi_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2o_device*, align 8
  %5 = alloca %struct.i2o_controller*, align 8
  %6 = alloca %struct.i2o_scsi_host*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.i2o_device*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.i2o_device* @to_i2o_device(%struct.device* %15)
  store %struct.i2o_device* %16, %struct.i2o_device** %4, align 8
  %17 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %18 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %17, i32 0, i32 2
  %19 = load %struct.i2o_controller*, %struct.i2o_controller** %18, align 8
  store %struct.i2o_controller* %19, %struct.i2o_controller** %5, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %20 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %21 = call %struct.i2o_scsi_host* @i2o_scsi_get_host(%struct.i2o_controller* %20)
  store %struct.i2o_scsi_host* %21, %struct.i2o_scsi_host** %6, align 8
  %22 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %6, align 8
  %23 = icmp ne %struct.i2o_scsi_host* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %190

27:                                               ; preds = %1
  %28 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %6, align 8
  %29 = getelementptr inbounds %struct.i2o_scsi_host, %struct.i2o_scsi_host* %28, i32 0, i32 0
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %29, align 8
  store %struct.Scsi_Host* %30, %struct.Scsi_Host** %7, align 8
  %31 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %32 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %94 [
    i32 129, label %35
    i32 130, label %35
    i32 128, label %36
  ]

35:                                               ; preds = %27, %27
  br label %97

36:                                               ; preds = %27
  %37 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %38 = call i32 @i2o_parm_field_get(%struct.i2o_device* %37, i32 0, i32 3, i32* %10, i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %190

43:                                               ; preds = %36
  %44 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %45 = call i32 @i2o_parm_field_get(%struct.i2o_device* %44, i32 0, i32 4, i32* %11, i32 8)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %190

50:                                               ; preds = %43
  %51 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %52 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %53 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.i2o_device* @i2o_iop_find_device(%struct.i2o_controller* %51, i32 %55)
  store %struct.i2o_device* %56, %struct.i2o_device** %8, align 8
  %57 = load %struct.i2o_device*, %struct.i2o_device** %8, align 8
  %58 = icmp ne %struct.i2o_device* %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %61 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 (i8*, i64, ...) @osm_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %190

68:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %90, %68
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %6, align 8
  %72 = getelementptr inbounds %struct.i2o_scsi_host, %struct.i2o_scsi_host* %71, i32 0, i32 0
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %72, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %70, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %69
  %78 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %6, align 8
  %79 = getelementptr inbounds %struct.i2o_scsi_host, %struct.i2o_scsi_host* %78, i32 0, i32 1
  %80 = load %struct.i2o_device**, %struct.i2o_device*** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i2o_device*, %struct.i2o_device** %80, i64 %82
  %84 = load %struct.i2o_device*, %struct.i2o_device** %83, align 8
  %85 = load %struct.i2o_device*, %struct.i2o_device** %8, align 8
  %86 = icmp eq %struct.i2o_device* %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %77
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %69

93:                                               ; preds = %69
  br label %97

94:                                               ; preds = %27
  %95 = load i32, i32* @EFAULT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %190

97:                                               ; preds = %93, %35
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %102 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = call i32 (i8*, i64, ...) @osm_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  %107 = load i32, i32* @EFAULT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %190

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @le32_to_cpu(i32 %110)
  %112 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %113 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %111, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %109
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @le32_to_cpu(i32 %117)
  %119 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %120 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, i64, ...) @osm_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %118, i64 %121)
  %123 = load i32, i32* @EFAULT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %190

125:                                              ; preds = %109
  %126 = load i32, i32* %11, align 4
  %127 = call i64 @le64_to_cpu(i32 %126)
  %128 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %129 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp sge i64 %127, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %125
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @le64_to_cpu(i32 %133)
  %135 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %136 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (i8*, i64, ...) @osm_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %134, i64 %137)
  %139 = load i32, i32* @EFAULT, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %190

141:                                              ; preds = %125
  %142 = load %struct.i2o_scsi_host*, %struct.i2o_scsi_host** %6, align 8
  %143 = getelementptr inbounds %struct.i2o_scsi_host, %struct.i2o_scsi_host* %142, i32 0, i32 0
  %144 = load %struct.Scsi_Host*, %struct.Scsi_Host** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i64 @le32_to_cpu(i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = call i64 @le64_to_cpu(i32 %148)
  %150 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %151 = call %struct.scsi_device* @__scsi_add_device(%struct.Scsi_Host* %144, i32 %145, i64 %147, i64 %149, %struct.i2o_device* %150)
  store %struct.scsi_device* %151, %struct.scsi_device** %9, align 8
  %152 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %153 = call i64 @IS_ERR(%struct.scsi_device* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %141
  %156 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %157 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = call i32 (i8*, i64, ...) @osm_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %160)
  %162 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %163 = call i32 @PTR_ERR(%struct.scsi_device* %162)
  store i32 %163, i32* %2, align 4
  br label %190

164:                                              ; preds = %141
  %165 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %166 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %169 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = call i32 @sysfs_create_link(i32* %167, i32* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %186

175:                                              ; preds = %164
  %176 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %177 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i64 @le32_to_cpu(i32 %181)
  %183 = load i32, i32* %11, align 4
  %184 = call i64 @le64_to_cpu(i32 %183)
  %185 = call i32 @osm_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %179, i32 %180, i64 %182, i64 %184)
  store i32 0, i32* %2, align 4
  br label %190

186:                                              ; preds = %174
  %187 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %188 = call i32 @scsi_remove_device(%struct.scsi_device* %187)
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %186, %175, %155, %132, %116, %100, %94, %59, %47, %40, %24
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.i2o_device* @to_i2o_device(%struct.device*) #1

declare dso_local %struct.i2o_scsi_host* @i2o_scsi_get_host(%struct.i2o_controller*) #1

declare dso_local i32 @i2o_parm_field_get(%struct.i2o_device*, i32, i32, i32*, i32) #1

declare dso_local %struct.i2o_device* @i2o_iop_find_device(%struct.i2o_controller*, i32) #1

declare dso_local i32 @osm_warn(i8*, i64, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.scsi_device* @__scsi_add_device(%struct.Scsi_Host*, i32, i64, i64, %struct.i2o_device*) #1

declare dso_local i64 @IS_ERR(%struct.scsi_device*) #1

declare dso_local i32 @PTR_ERR(%struct.scsi_device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @osm_info(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
