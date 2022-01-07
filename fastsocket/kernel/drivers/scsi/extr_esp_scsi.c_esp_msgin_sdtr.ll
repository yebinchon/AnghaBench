; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_msgin_sdtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_msgin_sdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32*, i32, i32, i32, i32, i64, i32, i32* }
%struct.esp_target_data = type { i32, i32, i32 }

@ESP_TGT_NEGO_SYNC = common dso_local global i32 0, align 4
@ESP_FLAG_DISABLE_SYNC = common dso_local global i32 0, align 4
@FAS236 = common dso_local global i64 0, align 8
@MESSAGE_REJECT = common dso_local global i32 0, align 4
@ESP_CMD_SATN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_target_data*)* @esp_msgin_sdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_msgin_sdtr(%struct.esp* %0, %struct.esp_target_data* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_target_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.esp_target_data* %1, %struct.esp_target_data** %4, align 8
  %9 = load %struct.esp*, %struct.esp** %3, align 8
  %10 = getelementptr inbounds %struct.esp, %struct.esp* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.esp*, %struct.esp** %3, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %20 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %89

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 15
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %89

30:                                               ; preds = %26
  %31 = load %struct.esp*, %struct.esp** %3, align 8
  %32 = getelementptr inbounds %struct.esp, %struct.esp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ESP_FLAG_DISABLE_SYNC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.esp*, %struct.esp** %3, align 8
  %44 = getelementptr inbounds %struct.esp, %struct.esp* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %100

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.esp*, %struct.esp** %3, align 8
  %51 = getelementptr inbounds %struct.esp, %struct.esp* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %89

55:                                               ; preds = %48
  %56 = load %struct.esp*, %struct.esp** %3, align 8
  %57 = getelementptr inbounds %struct.esp, %struct.esp* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 1000
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 2
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @DIV_ROUND_UP(i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %55
  %67 = load %struct.esp*, %struct.esp** %3, align 8
  %68 = getelementptr inbounds %struct.esp, %struct.esp* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FAS236, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = icmp sge i32 %73, 50
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %66, %55
  br label %81

80:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load %struct.esp*, %struct.esp** %3, align 8
  %83 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @esp_setsync(%struct.esp* %82, %struct.esp_target_data* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  br label %123

89:                                               ; preds = %54, %29, %25
  %90 = load i32, i32* @MESSAGE_REJECT, align 4
  %91 = load %struct.esp*, %struct.esp** %3, align 8
  %92 = getelementptr inbounds %struct.esp, %struct.esp* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.esp*, %struct.esp** %3, align 8
  %96 = getelementptr inbounds %struct.esp, %struct.esp* %95, i32 0, i32 6
  store i32 1, i32* %96, align 8
  %97 = load %struct.esp*, %struct.esp** %3, align 8
  %98 = load i32, i32* @ESP_CMD_SATN, align 4
  %99 = call i32 @scsi_esp_cmd(%struct.esp* %97, i32 %98)
  br label %123

100:                                              ; preds = %47
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %103 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %106 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.esp*, %struct.esp** %3, align 8
  %108 = getelementptr inbounds %struct.esp, %struct.esp* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %112 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %115 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @spi_populate_sync_msg(i32* %110, i32 %113, i32 %116)
  %118 = load %struct.esp*, %struct.esp** %3, align 8
  %119 = getelementptr inbounds %struct.esp, %struct.esp* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load %struct.esp*, %struct.esp** %3, align 8
  %121 = load i32, i32* @ESP_CMD_SATN, align 4
  %122 = call i32 @scsi_esp_cmd(%struct.esp* %120, i32 %121)
  br label %123

123:                                              ; preds = %100, %89, %81
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @esp_setsync(%struct.esp*, %struct.esp_target_data*, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @spi_populate_sync_msg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
