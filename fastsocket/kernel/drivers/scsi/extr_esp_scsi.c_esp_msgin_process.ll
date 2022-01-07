; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_msgin_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_msgin_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32*, i32, i32*, i32, i32, %struct.esp_cmd_entry* }
%struct.esp_cmd_entry = type { i32, i32 }
%struct.esp_cmd_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ESP: Unexpected msgin identify\0A\00", align 1
@ESP_EVENT_FREE_BUS = common dso_local global i32 0, align 4
@ESP_FLAG_QUICKIRQ_CHECK = common dso_local global i32 0, align 4
@ESP_CMD_SATN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @esp_msgin_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_msgin_process(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca %struct.esp_cmd_priv*, align 8
  %8 = alloca %struct.esp_cmd_entry*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  %9 = load %struct.esp*, %struct.esp** %3, align 8
  %10 = getelementptr inbounds %struct.esp, %struct.esp* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.esp*, %struct.esp** %3, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %128

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %117 [
    i32 133, label %24
    i32 132, label %41
    i32 130, label %86
    i32 129, label %87
    i32 128, label %93
    i32 135, label %99
    i32 134, label %99
    i32 131, label %114
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %128

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.esp*, %struct.esp** %3, align 8
  %31 = getelementptr inbounds %struct.esp, %struct.esp* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 2
  %36 = icmp slt i32 %29, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %128

38:                                               ; preds = %28
  %39 = load %struct.esp*, %struct.esp** %3, align 8
  %40 = call i32 @esp_msgin_extended(%struct.esp* %39)
  store i32 0, i32* %2, align 4
  br label %128

41:                                               ; preds = %22
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %128

45:                                               ; preds = %41
  %46 = load %struct.esp*, %struct.esp** %3, align 8
  %47 = getelementptr inbounds %struct.esp, %struct.esp* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %118

53:                                               ; preds = %45
  %54 = load %struct.esp*, %struct.esp** %3, align 8
  %55 = getelementptr inbounds %struct.esp, %struct.esp* %54, i32 0, i32 5
  %56 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %55, align 8
  store %struct.esp_cmd_entry* %56, %struct.esp_cmd_entry** %6, align 8
  %57 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %58 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.esp_cmd_priv* @ESP_CMD_PRIV(i32 %59)
  store %struct.esp_cmd_priv* %60, %struct.esp_cmd_priv** %7, align 8
  %61 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %62 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %65 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sg_dma_len(i32 %66)
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %53
  %70 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %71 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %75 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %81

76:                                               ; preds = %53
  %77 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %78 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %83 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  store i32 0, i32* %2, align 4
  br label %128

86:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %128

87:                                               ; preds = %22
  %88 = load %struct.esp*, %struct.esp** %3, align 8
  %89 = load %struct.esp*, %struct.esp** %3, align 8
  %90 = getelementptr inbounds %struct.esp, %struct.esp* %89, i32 0, i32 5
  %91 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %90, align 8
  %92 = call i32 @esp_restore_pointers(%struct.esp* %88, %struct.esp_cmd_entry* %91)
  store i32 0, i32* %2, align 4
  br label %128

93:                                               ; preds = %22
  %94 = load %struct.esp*, %struct.esp** %3, align 8
  %95 = load %struct.esp*, %struct.esp** %3, align 8
  %96 = getelementptr inbounds %struct.esp, %struct.esp* %95, i32 0, i32 5
  %97 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %96, align 8
  %98 = call i32 @esp_save_pointers(%struct.esp* %94, %struct.esp_cmd_entry* %97)
  store i32 0, i32* %2, align 4
  br label %128

99:                                               ; preds = %22, %22
  %100 = load %struct.esp*, %struct.esp** %3, align 8
  %101 = getelementptr inbounds %struct.esp, %struct.esp* %100, i32 0, i32 5
  %102 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %101, align 8
  store %struct.esp_cmd_entry* %102, %struct.esp_cmd_entry** %8, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %8, align 8
  %105 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.esp*, %struct.esp** %3, align 8
  %107 = load i32, i32* @ESP_EVENT_FREE_BUS, align 4
  %108 = call i32 @esp_event(%struct.esp* %106, i32 %107)
  %109 = load i32, i32* @ESP_FLAG_QUICKIRQ_CHECK, align 4
  %110 = load %struct.esp*, %struct.esp** %3, align 8
  %111 = getelementptr inbounds %struct.esp, %struct.esp* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  store i32 0, i32* %2, align 4
  br label %128

114:                                              ; preds = %22
  %115 = load %struct.esp*, %struct.esp** %3, align 8
  %116 = call i32 @esp_msgin_reject(%struct.esp* %115)
  store i32 0, i32* %2, align 4
  br label %128

117:                                              ; preds = %22
  br label %118

118:                                              ; preds = %117, %52
  %119 = load %struct.esp*, %struct.esp** %3, align 8
  %120 = getelementptr inbounds %struct.esp, %struct.esp* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 131, i32* %122, align 4
  %123 = load %struct.esp*, %struct.esp** %3, align 8
  %124 = getelementptr inbounds %struct.esp, %struct.esp* %123, i32 0, i32 3
  store i32 1, i32* %124, align 8
  %125 = load %struct.esp*, %struct.esp** %3, align 8
  %126 = load i32, i32* @ESP_CMD_SATN, align 4
  %127 = call i32 @scsi_esp_cmd(%struct.esp* %125, i32 %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %118, %114, %99, %93, %87, %86, %81, %44, %38, %37, %27, %20
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @esp_msgin_extended(%struct.esp*) #1

declare dso_local %struct.esp_cmd_priv* @ESP_CMD_PRIV(i32) #1

declare dso_local i32 @sg_dma_len(i32) #1

declare dso_local i32 @esp_restore_pointers(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_save_pointers(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_event(%struct.esp*, i32) #1

declare dso_local i32 @esp_msgin_reject(%struct.esp*) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
