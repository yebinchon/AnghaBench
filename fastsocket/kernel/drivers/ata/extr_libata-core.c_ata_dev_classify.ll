; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_classify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"found ATA device by sig\0A\00", align 1
@ATA_DEV_ATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"found ATAPI device by sig\0A\00", align 1
@ATA_DEV_ATAPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"found PMP device by sig\0A\00", align 1
@ATA_DEV_PMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"found SEMB device by sig (could be ATA device)\0A\00", align 1
@ATA_DEV_SEMB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"unknown device\0A\00", align 1
@ATA_DEV_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_dev_classify(%struct.ata_taskfile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_taskfile*, align 8
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %3, align 8
  %4 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %5 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %10 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ATA_DEV_ATA, align 4
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %8, %1
  %17 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %18 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 20
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %23 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 235
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ATA_DEV_ATAPI, align 4
  store i32 %28, i32* %2, align 4
  br label %58

29:                                               ; preds = %21, %16
  %30 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %31 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 105
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %36 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 150
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ATA_DEV_PMP, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %34, %29
  %43 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %44 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 60
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %49 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 195
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 @DPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @ATA_DEV_SEMB, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %47, %42
  %56 = call i32 @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @ATA_DEV_UNKNOWN, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %52, %39, %26, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
