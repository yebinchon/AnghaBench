; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_hw_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_hw_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32, i32, i32, i32, i32 }

@CR_CHIP_ID_HI = common dso_local global i32 0, align 4
@CR_EFIR2 = common dso_local global i32 0, align 4
@CR_EFDR2 = common dso_local global i32 0, align 4
@CR_CHIP_ID_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: chip id: 0x%02x 0x%02x\00", align 1
@chip_id = common dso_local global i32 0, align 4
@CHIP_ID_HIGH = common dso_local global i32 0, align 4
@CHIP_ID_LOW = common dso_local global i32 0, align 4
@CHIP_ID_LOW2 = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: unsupported chip, id: 0x%02x 0x%02x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvt_dev*)* @nvt_hw_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_hw_detect(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %8 = call i32 @nvt_efm_enable(%struct.nvt_dev* %7)
  %9 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %10 = load i32, i32* @CR_CHIP_ID_HI, align 4
  %11 = call i32 @nvt_cr_read(%struct.nvt_dev* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @CR_EFIR2, align 4
  %16 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %17 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @CR_EFDR2, align 4
  %19 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %20 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %22 = call i32 @nvt_efm_enable(%struct.nvt_dev* %21)
  %23 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %24 = load i32, i32* @CR_CHIP_ID_HI, align 4
  %25 = call i32 @nvt_cr_read(%struct.nvt_dev* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %14, %1
  %27 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %28 = load i32, i32* @CR_CHIP_ID_LO, align 4
  %29 = call i32 @nvt_cr_read(%struct.nvt_dev* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @chip_id, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nvt_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CHIP_ID_HIGH, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CHIP_ID_LOW, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @CHIP_ID_LOW2, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %26
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load i32, i32* @chip_id, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @nvt_pr(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %45, %41, %37
  %54 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %55 = call i32 @nvt_efm_disable(%struct.nvt_dev* %54)
  %56 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %57 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %56, i32 0, i32 2
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %62 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %65 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %67 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %66, i32 0, i32 2
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @nvt_efm_enable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cr_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @nvt_pr(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nvt_efm_disable(%struct.nvt_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
