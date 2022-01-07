; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_host_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_host_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, %struct.ata_port**, i32 }
%struct.ata_port = type { i64, i32, %struct.TYPE_3__, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_host_template = type { i32 }

@ATA_HOST_STARTED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BUG: trying to register unstarted host\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ata_print_id = common dso_local global i32 0, align 4
@ATA_CBL_NONE = common dso_local global i64 0, align 8
@ATA_FLAG_SATA = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%cATA max %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DUMMY\0A\00", align 1
@async_port_probe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_host_register(%struct.ata_host* %0, %struct.scsi_host_template* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ata_port*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %4, align 8
  store %struct.scsi_host_template* %1, %struct.scsi_host_template** %5, align 8
  %11 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %12 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ATA_HOST_STARTED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %20 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_printk(i32 %18, i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %192

26:                                               ; preds = %2
  %27 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %28 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %48, %26
  %31 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %32 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %31, i32 0, i32 2
  %33 = load %struct.ata_port**, %struct.ata_port*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %33, i64 %35
  %37 = load %struct.ata_port*, %struct.ata_port** %36, align 8
  %38 = icmp ne %struct.ata_port* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %30
  %40 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %41 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %40, i32 0, i32 2
  %42 = load %struct.ata_port**, %struct.ata_port*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %42, i64 %44
  %46 = load %struct.ata_port*, %struct.ata_port** %45, align 8
  %47 = call i32 @kfree(%struct.ata_port* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %30

51:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %55 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = call i32 @atomic_inc_return(i32* @ata_print_id)
  %60 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %61 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %60, i32 0, i32 2
  %62 = load %struct.ata_port**, %struct.ata_port*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %62, i64 %64
  %66 = load %struct.ata_port*, %struct.ata_port** %65, align 8
  %67 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %66, i32 0, i32 7
  store i32 %59, i32* %67, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %73 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %74 = call i32 @ata_scsi_add_hosts(%struct.ata_host* %72, %struct.scsi_host_template* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %192

79:                                               ; preds = %71
  %80 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %81 = call i32 @ata_acpi_associate(%struct.ata_host* %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %167, %79
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %85 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %170

88:                                               ; preds = %82
  %89 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %90 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %89, i32 0, i32 2
  %91 = load %struct.ata_port**, %struct.ata_port*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %91, i64 %93
  %95 = load %struct.ata_port*, %struct.ata_port** %94, align 8
  store %struct.ata_port* %95, %struct.ata_port** %8, align 8
  %96 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %97 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ATA_CBL_NONE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %88
  %102 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %103 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ATA_FLAG_SATA, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i64, i64* @ATA_CBL_SATA, align 8
  %110 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %111 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %101, %88
  %113 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %114 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %113, i32 0, i32 2
  %115 = call i32 @sata_link_init_spd(%struct.TYPE_3__* %114)
  %116 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %117 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %116, i32 0, i32 6
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = icmp ne %struct.TYPE_3__* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %122 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %121, i32 0, i32 6
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = call i32 @sata_link_init_spd(%struct.TYPE_3__* %123)
  br label %125

125:                                              ; preds = %120, %112
  %126 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %127 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %130 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %133 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @ata_pack_xfermask(i32 %128, i32 %131, i32 %134)
  store i64 %135, i64* %9, align 8
  %136 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %137 = call i32 @ata_port_is_dummy(%struct.ata_port* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %125
  %140 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %141 = load i32, i32* @KERN_INFO, align 4
  %142 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %143 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ATA_FLAG_SATA, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 83, i32 80
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @ata_mode_string(i64 %150)
  %152 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %153 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.ata_port*, i32, i8*, ...) @ata_port_printk(%struct.ata_port* %140, i32 %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %151, i32 %156)
  %158 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %159 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = call i32 @ata_ehi_clear_desc(%struct.TYPE_4__* %160)
  br label %166

162:                                              ; preds = %125
  %163 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %164 = load i32, i32* @KERN_INFO, align 4
  %165 = call i32 (%struct.ata_port*, i32, i8*, ...) @ata_port_printk(%struct.ata_port* %163, i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %139
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %82

170:                                              ; preds = %82
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %188, %170
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %174 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %171
  %178 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %179 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %178, i32 0, i32 2
  %180 = load %struct.ata_port**, %struct.ata_port*** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %180, i64 %182
  %184 = load %struct.ata_port*, %struct.ata_port** %183, align 8
  store %struct.ata_port* %184, %struct.ata_port** %10, align 8
  %185 = load i32, i32* @async_port_probe, align 4
  %186 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %187 = call i32 @async_schedule(i32 %185, %struct.ata_port* %186)
  br label %188

188:                                              ; preds = %177
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %171

191:                                              ; preds = %171
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %77, %17
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @dev_printk(i32, i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.ata_port*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @ata_scsi_add_hosts(%struct.ata_host*, %struct.scsi_host_template*) #1

declare dso_local i32 @ata_acpi_associate(%struct.ata_host*) #1

declare dso_local i32 @sata_link_init_spd(%struct.TYPE_3__*) #1

declare dso_local i64 @ata_pack_xfermask(i32, i32, i32) #1

declare dso_local i32 @ata_port_is_dummy(%struct.ata_port*) #1

declare dso_local i32 @ata_port_printk(%struct.ata_port*, i32, i8*, ...) #1

declare dso_local i32 @ata_mode_string(i64) #1

declare dso_local i32 @ata_ehi_clear_desc(%struct.TYPE_4__*) #1

declare dso_local i32 @async_schedule(i32, %struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
