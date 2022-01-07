; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_verify_lseq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_verify_lseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@LmRAMPAGE_LSHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: LSEQ%d verify failed page:%d, offs:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"LSEQ%d verified %d bytes, passed\0A\00", align 1
@LSEQ_CODEPAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32*, i32, i32)* @asd_verify_lseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_verify_lseq(%struct.asd_ha_struct* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_ha_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 4096
  %17 = sub nsw i32 %16, 1
  %18 = sdiv i32 %17, 4096
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %7, align 8
  store i32* %19, i32** %12, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %71, %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @LmBISTCTL1(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @LmRAMPAGE_LSHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %25, i32 %27, i32 %30)
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %63, %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 4096
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %70

40:                                               ; preds = %38
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @LmSEQRAM(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %41, i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %40
  %54 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %55 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pci_name(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @asd_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 -1, i32* %5, align 4
  br label %84

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %12, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 4
  store i32 %69, i32* %8, align 4
  br label %32

70:                                               ; preds = %38
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %20

74:                                               ; preds = %20
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %74, %53
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @LmBISTCTL1(i32) #1

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i64) #1

declare dso_local i64 @LmSEQRAM(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @asd_printk(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
