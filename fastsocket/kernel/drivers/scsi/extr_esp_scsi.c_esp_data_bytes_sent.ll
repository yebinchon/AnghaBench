; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_data_bytes_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_data_bytes_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i64, i32, i32 }
%struct.esp_cmd_entry = type { i32 }
%struct.scsi_cmnd = type { i32 }

@ESP_FFLAGS = common dso_local global i32 0, align 4
@ESP_FF_FBYTES = common dso_local global i32 0, align 4
@ESP_CONFIG3_EWIDE = common dso_local global i32 0, align 4
@ESP_STAT_TCNT = common dso_local global i32 0, align 4
@ESP_TCLOW = common dso_local global i32 0, align 4
@ESP_TCMED = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@FAS_RLO = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_WRITE = common dso_local global i32 0, align 4
@ESP100 = common dso_local global i64 0, align 8
@ESP_STATUS = common dso_local global i32 0, align 4
@ESP_STAT_PMASK = common dso_local global i32 0, align 4
@ESP_DOP = common dso_local global i32 0, align 4
@ESP_FF_ONOTZERO = common dso_local global i32 0, align 4
@ESP_DIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*, %struct.esp_cmd_entry*, %struct.scsi_cmnd*)* @esp_data_bytes_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_data_bytes_sent(%struct.esp* %0, %struct.esp_cmd_entry* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.esp*, align 8
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %5, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  %14 = load i32, i32* @ESP_FFLAGS, align 4
  %15 = call i32 @esp_read8(i32 %14)
  %16 = load i32, i32* @ESP_FF_FBYTES, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.esp*, %struct.esp** %5, align 8
  %19 = getelementptr inbounds %struct.esp, %struct.esp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ESP_CONFIG3_EWIDE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %3
  store i32 0, i32* %9, align 4
  %28 = load %struct.esp*, %struct.esp** %5, align 8
  %29 = getelementptr inbounds %struct.esp, %struct.esp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ESP_STAT_TCNT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ESP_TCLOW, align 4
  %36 = call i32 @esp_read8(i32 %35)
  %37 = load i32, i32* @ESP_TCMED, align 4
  %38 = call i32 @esp_read8(i32 %37)
  %39 = shl i32 %38, 8
  %40 = or i32 %36, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.esp*, %struct.esp** %5, align 8
  %42 = getelementptr inbounds %struct.esp, %struct.esp* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FASHME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i32, i32* @FAS_RLO, align 4
  %48 = call i32 @esp_read8(i32 %47)
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %46, %34
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.esp*, %struct.esp** %5, align 8
  %55 = getelementptr inbounds %struct.esp, %struct.esp* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %61 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ESP_CMD_FLAG_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %53
  store i32 0, i32* %11, align 4
  %71 = load %struct.esp*, %struct.esp** %5, align 8
  %72 = getelementptr inbounds %struct.esp, %struct.esp* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  br label %122

76:                                               ; preds = %70
  %77 = load %struct.esp*, %struct.esp** %5, align 8
  %78 = getelementptr inbounds %struct.esp, %struct.esp* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ESP100, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load i32, i32* @ESP_STATUS, align 4
  %84 = call i32 @esp_read8(i32 %83)
  %85 = load %struct.esp*, %struct.esp** %5, align 8
  %86 = getelementptr inbounds %struct.esp, %struct.esp* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.esp*, %struct.esp** %5, align 8
  %88 = getelementptr inbounds %struct.esp, %struct.esp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ESP_STAT_PMASK, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* @ESP_FFLAGS, align 4
  %93 = call i32 @esp_read8(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @ESP_DOP, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @ESP_FF_ONOTZERO, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %97, %82
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @ESP_DIP, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @ESP_FF_FBYTES, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %97
  store i32 -1, i32* %4, align 4
  br label %130

112:                                              ; preds = %106, %102
  br label %113

113:                                              ; preds = %112, %76
  %114 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %115 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ESP_CMD_FLAG_WRITE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  store i32 1, i32* %11, align 4
  br label %121

121:                                              ; preds = %120, %113
  br label %122

122:                                              ; preds = %121, %75
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.esp*, %struct.esp** %5, align 8
  %127 = call i32 @esp_flush_fifo(%struct.esp* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %111
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_flush_fifo(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
