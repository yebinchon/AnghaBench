; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_get_flash_manufacturer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_get_flash_manufacturer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*, i64*, i64*)* @qla24xx_get_flash_manufacturer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_get_flash_manufacturer(%struct.qla_hw_data* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %10 = call i32 @flash_conf_addr(%struct.qla_hw_data* %9, i32 939)
  %11 = call i32 @qla24xx_read_flash_dword(%struct.qla_hw_data* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @LSB(i32 %12)
  %14 = load i64*, i64** %5, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @MSB(i32 %15)
  %17 = load i64*, i64** %6, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, -559030611
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24, %20
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %31 = call i32 @flash_conf_addr(%struct.qla_hw_data* %30, i32 159)
  %32 = call i32 @qla24xx_read_flash_dword(%struct.qla_hw_data* %29, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @LSB(i32 %33)
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @MSB(i32 %36)
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %28, %24, %3
  ret void
}

declare dso_local i32 @qla24xx_read_flash_dword(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @flash_conf_addr(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @LSB(i32) #1

declare dso_local i64 @MSB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
