; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_get_revision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i32, i64, i32, i32 }

@ESP_CONFIG1_PENABLE = common dso_local global i32 0, align 4
@ESP_CONFIG2_SCSI2ENAB = common dso_local global i32 0, align 4
@ESP_CONFIG2_REGPARITY = common dso_local global i32 0, align 4
@ESP_CFG2 = common dso_local global i32 0, align 4
@ESP_CONFIG2_MAGIC = common dso_local global i32 0, align 4
@ESP100 = common dso_local global i32 0, align 4
@ESP_CFG3 = common dso_local global i32 0, align 4
@ESP100A = common dso_local global i32 0, align 4
@ESP_CCF_F5 = common dso_local global i64 0, align 8
@FAST = common dso_local global i32 0, align 4
@SYNC_DEFP_FAST = common dso_local global i32 0, align 4
@ESP236 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_get_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_get_revision(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %4 = load i32, i32* @ESP_CONFIG1_PENABLE, align 4
  %5 = load %struct.esp*, %struct.esp** %2, align 8
  %6 = getelementptr inbounds %struct.esp, %struct.esp* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 7
  %9 = or i32 %4, %8
  %10 = load %struct.esp*, %struct.esp** %2, align 8
  %11 = getelementptr inbounds %struct.esp, %struct.esp* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ESP_CONFIG2_SCSI2ENAB, align 4
  %13 = load i32, i32* @ESP_CONFIG2_REGPARITY, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.esp*, %struct.esp** %2, align 8
  %16 = getelementptr inbounds %struct.esp, %struct.esp* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.esp*, %struct.esp** %2, align 8
  %18 = getelementptr inbounds %struct.esp, %struct.esp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ESP_CFG2, align 4
  %21 = call i32 @esp_write8(i32 %19, i32 %20)
  %22 = load i32, i32* @ESP_CFG2, align 4
  %23 = call i32 @esp_read8(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @ESP_CONFIG2_MAGIC, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ESP_CONFIG2_SCSI2ENAB, align 4
  %30 = load i32, i32* @ESP_CONFIG2_REGPARITY, align 4
  %31 = or i32 %29, %30
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @ESP100, align 4
  %35 = load %struct.esp*, %struct.esp** %2, align 8
  %36 = getelementptr inbounds %struct.esp, %struct.esp* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  br label %104

37:                                               ; preds = %1
  %38 = load %struct.esp*, %struct.esp** %2, align 8
  %39 = getelementptr inbounds %struct.esp, %struct.esp* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = load %struct.esp*, %struct.esp** %2, align 8
  %41 = call i32 @esp_set_all_config3(%struct.esp* %40, i32 5)
  %42 = load %struct.esp*, %struct.esp** %2, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 3
  store i32 5, i32* %43, align 4
  %44 = load %struct.esp*, %struct.esp** %2, align 8
  %45 = getelementptr inbounds %struct.esp, %struct.esp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ESP_CFG2, align 4
  %48 = call i32 @esp_write8(i32 %46, i32 %47)
  %49 = load i32, i32* @ESP_CFG3, align 4
  %50 = call i32 @esp_write8(i32 0, i32 %49)
  %51 = load %struct.esp*, %struct.esp** %2, align 8
  %52 = getelementptr inbounds %struct.esp, %struct.esp* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ESP_CFG3, align 4
  %55 = call i32 @esp_write8(i32 %53, i32 %54)
  %56 = load i32, i32* @ESP_CFG3, align 4
  %57 = call i32 @esp_read8(i32 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 5
  br i1 %59, label %60, label %64

60:                                               ; preds = %37
  %61 = load i32, i32* @ESP100A, align 4
  %62 = load %struct.esp*, %struct.esp** %2, align 8
  %63 = getelementptr inbounds %struct.esp, %struct.esp* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  br label %103

64:                                               ; preds = %37
  %65 = load %struct.esp*, %struct.esp** %2, align 8
  %66 = call i32 @esp_set_all_config3(%struct.esp* %65, i32 0)
  %67 = load %struct.esp*, %struct.esp** %2, align 8
  %68 = getelementptr inbounds %struct.esp, %struct.esp* %67, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = load %struct.esp*, %struct.esp** %2, align 8
  %70 = getelementptr inbounds %struct.esp, %struct.esp* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ESP_CFG3, align 4
  %73 = call i32 @esp_write8(i32 %71, i32 %72)
  %74 = load %struct.esp*, %struct.esp** %2, align 8
  %75 = getelementptr inbounds %struct.esp, %struct.esp* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %64
  %79 = load %struct.esp*, %struct.esp** %2, align 8
  %80 = getelementptr inbounds %struct.esp, %struct.esp* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ESP_CCF_F5, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78, %64
  %85 = load i32, i32* @FAST, align 4
  %86 = load %struct.esp*, %struct.esp** %2, align 8
  %87 = getelementptr inbounds %struct.esp, %struct.esp* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @SYNC_DEFP_FAST, align 4
  %89 = load %struct.esp*, %struct.esp** %2, align 8
  %90 = getelementptr inbounds %struct.esp, %struct.esp* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  br label %95

91:                                               ; preds = %78
  %92 = load i32, i32* @ESP236, align 4
  %93 = load %struct.esp*, %struct.esp** %2, align 8
  %94 = getelementptr inbounds %struct.esp, %struct.esp* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %84
  %96 = load %struct.esp*, %struct.esp** %2, align 8
  %97 = getelementptr inbounds %struct.esp, %struct.esp* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  %98 = load %struct.esp*, %struct.esp** %2, align 8
  %99 = getelementptr inbounds %struct.esp, %struct.esp* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ESP_CFG2, align 4
  %102 = call i32 @esp_write8(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %60
  br label %104

104:                                              ; preds = %103, %33
  ret void
}

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_set_all_config3(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
