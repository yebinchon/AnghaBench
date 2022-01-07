; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_program_flash_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_program_flash_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32, i32, i32, i32)* @qla2x00_program_flash_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_program_flash_address(%struct.qla_hw_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %13 = call i64 @IS_OEM_001(%struct.qla_hw_data* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %17 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %16, i32 2730, i32 170)
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %19 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %18, i32 1365, i32 85)
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %21 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %20, i32 2730, i32 160)
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %22, i32 %23, i32 %24)
  br label %54

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 218
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 193
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 126
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %62

41:                                               ; preds = %32
  br label %53

42:                                               ; preds = %29, %26
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %44 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %43, i32 21845, i32 170)
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %46 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %45, i32 10922, i32 85)
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %48 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %47, i32 21845, i32 160)
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @qla2x00_write_flash_byte(%struct.qla_hw_data* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %41
  br label %54

54:                                               ; preds = %53, %15
  %55 = call i32 @udelay(i32 150)
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @qla2x00_poll_flash(%struct.qla_hw_data* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %54, %40
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i64 @IS_OEM_001(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_write_flash_byte(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qla2x00_poll_flash(%struct.qla_hw_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
