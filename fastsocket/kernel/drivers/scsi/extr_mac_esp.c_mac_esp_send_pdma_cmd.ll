; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_mac_esp.c_mac_esp_send_pdma_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_mac_esp.c_mac_esp_send_pdma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }
%struct.mac_esp_priv = type { i64 }

@ESP_CMD_FLUSH = common dso_local global i32 0, align 4
@ESP_TCLOW = common dso_local global i32 0, align 4
@ESP_TCMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%4@,%0@+\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%0@+,%4@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32, i32, i32, i32, i32)* @mac_esp_send_pdma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_esp_send_pdma_cmd(%struct.esp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.esp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mac_esp_priv*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.esp*, %struct.esp** %7, align 8
  %21 = call %struct.mac_esp_priv* @MAC_ESP_GET_PRIV(%struct.esp* %20)
  store %struct.mac_esp_priv* %21, %struct.mac_esp_priv** %13, align 8
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load %struct.mac_esp_priv*, %struct.mac_esp_priv** %13, align 8
  %25 = getelementptr inbounds %struct.mac_esp_priv, %struct.mac_esp_priv* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load %struct.esp*, %struct.esp** %7, align 8
  %30 = load i32, i32* @ESP_CMD_FLUSH, align 4
  %31 = call i32 @scsi_esp_cmd(%struct.esp* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %6
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 0
  %35 = and i32 %34, 255
  %36 = load i32, i32* @ESP_TCLOW, align 4
  %37 = call i32 @esp_write8(i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32, i32* @ESP_TCMED, align 4
  %42 = call i32 @esp_write8(i32 %40, i32 %41)
  %43 = load %struct.esp*, %struct.esp** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @scsi_esp_cmd(%struct.esp* %43, i32 %44)
  br label %46

46:                                               ; preds = %89, %32
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 5
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 31
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 1
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %18, align 4
  %55 = load %struct.esp*, %struct.esp** %7, align 8
  %56 = call i64 @mac_esp_wait_for_dreq(%struct.esp* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %92

59:                                               ; preds = %46
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = call i32 @MAC_ESP_PDMA_LOOP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %18, align 4
  %66 = sub i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = sub i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %88

69:                                               ; preds = %59
  %70 = call i32 @MAC_ESP_PDMA_LOOP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.esp*, %struct.esp** %7, align 8
  %72 = call i64 @mac_esp_wait_for_empty_fifo(%struct.esp* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %92

75:                                               ; preds = %69
  %76 = load i32, i32* @ESP_TCMED, align 4
  %77 = call i32 @esp_read8(i32 %76)
  %78 = shl i32 %77, 8
  %79 = load i32, i32* @ESP_TCLOW, align 4
  %80 = call i32 @esp_read8(i32 %79)
  %81 = add nsw i32 %78, %80
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* %19, align 4
  %86 = sub i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %19, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %75, %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %46, label %92

92:                                               ; preds = %89, %74, %58
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @local_irq_restore(i64 %93)
  ret void
}

declare dso_local %struct.mac_esp_priv* @MAC_ESP_GET_PRIV(%struct.esp*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i64 @mac_esp_wait_for_dreq(%struct.esp*) #1

declare dso_local i32 @MAC_ESP_PDMA_LOOP(i8*) #1

declare dso_local i64 @mac_esp_wait_for_empty_fifo(%struct.esp*) #1

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
