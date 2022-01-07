; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_hw_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_hw_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@CHIMINT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DLAVAIL = common dso_local global i32 0, align 4
@COMINT = common dso_local global i32 0, align 4
@DEVINT = common dso_local global i32 0, align 4
@INITERR = common dso_local global i32 0, align 4
@HOSTERR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_hw_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.asd_ha_struct*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.asd_ha_struct*
  store %struct.asd_ha_struct* %9, %struct.asd_ha_struct** %6, align 8
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %11 = load i32, i32* @CHIMINT, align 4
  %12 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %19 = load i32, i32* @CHIMINT, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %18, i32 %19, i32 %20)
  %22 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %23 = load i32, i32* @CHIMINT, align 4
  %24 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DLAVAIL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %31 = call i32 @asd_process_donelist_isr(%struct.asd_ha_struct* %30)
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @COMINT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %39 = call i32 @asd_com_sas_isr(%struct.asd_ha_struct* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DEVINT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %47 = call i32 @asd_dch_sas_isr(%struct.asd_ha_struct* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @INITERR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %55 = call i32 @asd_rbi_exsi_isr(%struct.asd_ha_struct* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @HOSTERR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %63 = call i32 @asd_hst_pcix_isr(%struct.asd_ha_struct* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_process_donelist_isr(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_com_sas_isr(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_dch_sas_isr(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_rbi_exsi_isr(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_hst_pcix_isr(%struct.asd_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
