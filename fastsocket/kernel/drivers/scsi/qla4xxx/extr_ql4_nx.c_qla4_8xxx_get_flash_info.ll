; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_get_flash_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_get_flash_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_get_flash_info(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %7 = call i32 @qla4_8xxx_find_flt_start(%struct.scsi_qla_host* %6, i32* %5)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @QLA_SUCCESS, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @qla4_8xxx_get_flt_info(%struct.scsi_qla_host* %14, i32 %15)
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %18 = call i64 @is_qla8022(%struct.scsi_qla_host* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %22 = call i32 @qla4_82xx_get_fdt_info(%struct.scsi_qla_host* %21)
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %24 = call i32 @qla4_82xx_get_idc_param(%struct.scsi_qla_host* %23)
  br label %33

25:                                               ; preds = %13
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = call i64 @is_qla8032(%struct.scsi_qla_host* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %31 = call i32 @qla4_83xx_get_idc_param(%struct.scsi_qla_host* %30)
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @qla4_8xxx_find_flt_start(%struct.scsi_qla_host*, i32*) #1

declare dso_local i32 @qla4_8xxx_get_flt_info(%struct.scsi_qla_host*, i32) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_82xx_get_fdt_info(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_82xx_get_idc_param(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_get_idc_param(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
