; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_find_flash_de.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_find_flash_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_flash_dir = type { %struct.asd_flash_de* }
%struct.asd_flash_de = type { i32, i32, i32 }

@FLASH_MAX_DIR_ENTRIES = common dso_local global i32 0, align 4
@FLASH_DE_TYPE_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_flash_dir*, i32, i32*, i32*)* @asd_find_flash_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_find_flash_de(%struct.asd_flash_dir* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_flash_dir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.asd_flash_de*, align 8
  %12 = alloca i32, align 4
  store %struct.asd_flash_dir* %0, %struct.asd_flash_dir** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %35, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @FLASH_MAX_DIR_ENTRIES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %6, align 8
  %19 = getelementptr inbounds %struct.asd_flash_dir, %struct.asd_flash_dir* %18, i32 0, i32 0
  %20 = load %struct.asd_flash_de*, %struct.asd_flash_de** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.asd_flash_de, %struct.asd_flash_de* %20, i64 %22
  %24 = getelementptr inbounds %struct.asd_flash_de, %struct.asd_flash_de* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @FLASH_DE_TYPE_MASK, align 4
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %38

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %13

38:                                               ; preds = %33, %13
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @FLASH_MAX_DIR_ENTRIES, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %62

45:                                               ; preds = %38
  %46 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %6, align 8
  %47 = getelementptr inbounds %struct.asd_flash_dir, %struct.asd_flash_dir* %46, i32 0, i32 0
  %48 = load %struct.asd_flash_de*, %struct.asd_flash_de** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.asd_flash_de, %struct.asd_flash_de* %48, i64 %50
  store %struct.asd_flash_de* %51, %struct.asd_flash_de** %11, align 8
  %52 = load %struct.asd_flash_de*, %struct.asd_flash_de** %11, align 8
  %53 = getelementptr inbounds %struct.asd_flash_de, %struct.asd_flash_de* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.asd_flash_de*, %struct.asd_flash_de** %11, align 8
  %58 = getelementptr inbounds %struct.asd_flash_de, %struct.asd_flash_de* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %45, %42
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
