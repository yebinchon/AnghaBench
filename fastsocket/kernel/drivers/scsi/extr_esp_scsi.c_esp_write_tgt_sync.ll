; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_write_tgt_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_write_tgt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ESP_SOFF = common dso_local global i32 0, align 4
@ESP_STP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32)* @esp_write_tgt_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_write_tgt_sync(%struct.esp* %0, i32 %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.esp*, %struct.esp** %3, align 8
  %8 = getelementptr inbounds %struct.esp, %struct.esp* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.esp*, %struct.esp** %3, align 8
  %16 = getelementptr inbounds %struct.esp, %struct.esp* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.esp*, %struct.esp** %3, align 8
  %25 = getelementptr inbounds %struct.esp, %struct.esp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.esp*, %struct.esp** %3, align 8
  %31 = getelementptr inbounds %struct.esp, %struct.esp* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @ESP_SOFF, align 4
  %34 = call i32 @esp_write8(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %2
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.esp*, %struct.esp** %3, align 8
  %38 = getelementptr inbounds %struct.esp, %struct.esp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.esp*, %struct.esp** %3, align 8
  %44 = getelementptr inbounds %struct.esp, %struct.esp* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @ESP_STP, align 4
  %47 = call i32 @esp_write8(i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @esp_write8(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
