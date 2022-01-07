; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_verify_cseq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_verify_cseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@CSEQ_RAM_REG_BASE_ADR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s: cseq verify failed at %u read:0x%x, wanted:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"verified %d bytes, passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32*, i64)* @asd_verify_cseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_verify_cseq(%struct.asd_ha_struct* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* @CSEQ_RAM_REG_BASE_ADR, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to i64*
  store i64* %14, i64** %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %40, %3
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @asd_read_reg_dword(%struct.asd_ha_struct* %20, i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @le32_to_cpu(i64 %24)
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %30 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_name(i32 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @le32_to_cpu(i64 %36)
  %38 = call i32 @asd_printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33, i64 %34, i64 %37)
  store i32 -1, i32* %4, align 4
  br label %50

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %41, 4
  store i64 %42, i64* %10, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, 4
  store i64 %46, i64* %8, align 8
  br label %15

47:                                               ; preds = %15
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %28
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @asd_read_reg_dword(%struct.asd_ha_struct*, i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @asd_printk(i8*, i32, i64, i64, i64) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
