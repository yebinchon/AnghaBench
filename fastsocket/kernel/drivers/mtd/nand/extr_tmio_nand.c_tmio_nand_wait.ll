; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_nand_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_nand_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i64, i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.1*, i32, i32, i32)*, %struct.TYPE_3__* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.tmio_nand = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@FCR_ISR = common dso_local global i64 0, align 8
@FCR_IMR = common dso_local global i64 0, align 8
@FL_ERASING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"still busy with %s after %d ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"timeout waiting for interrupt\0A\00", align 1
@NAND_CMD_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*)* @tmio_nand_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_nand_wait(%struct.mtd_info* %0, %struct.nand_chip* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.tmio_nand*, align 8
  %6 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %4, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = call %struct.tmio_nand* @mtd_to_tmio(%struct.mtd_info* %7)
  store %struct.tmio_nand* %8, %struct.tmio_nand** %5, align 8
  %9 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %10 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FCR_ISR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @tmio_iowrite8(i32 15, i64 %13)
  %15 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %16 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FCR_IMR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @tmio_iowrite8(i32 129, i64 %19)
  %21 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %27 = call i32 @tmio_nand_dev_ready(%struct.mtd_info* %26)
  %28 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FL_ERASING, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 400, i32 20
  %35 = call i32 @msecs_to_jiffies(i32 %34)
  %36 = call i64 @wait_event_timeout(i32 %25, i32 %27, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %38 = call i32 @tmio_nand_dev_ready(%struct.mtd_info* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %2
  %45 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %46 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FCR_IMR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @tmio_iowrite8(i32 0, i64 %49)
  %51 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %52 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FL_ERASING, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %62 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FL_ERASING, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 400, i32 20
  %69 = call i32 (i32*, i8*, ...) @dev_warn(i32* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %68)
  br label %90

70:                                               ; preds = %2
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %79 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FCR_IMR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @tmio_iowrite8(i32 0, i64 %82)
  %84 = load %struct.tmio_nand*, %struct.tmio_nand** %5, align 8
  %85 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_warn(i32* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %77, %70
  br label %90

90:                                               ; preds = %89, %44
  %91 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 2
  %93 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %92, align 8
  %94 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %95 = bitcast %struct.mtd_info* %94 to %struct.mtd_info.1*
  %96 = load i32, i32* @NAND_CMD_STATUS, align 4
  %97 = call i32 %93(%struct.mtd_info.1* %95, i32 %96, i32 -1, i32 -1)
  %98 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %99 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %98, i32 0, i32 1
  %100 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %99, align 8
  %101 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %102 = bitcast %struct.mtd_info* %101 to %struct.mtd_info.0*
  %103 = call i32 %100(%struct.mtd_info.0* %102)
  ret i32 %103
}

declare dso_local %struct.tmio_nand* @mtd_to_tmio(%struct.mtd_info*) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @tmio_nand_dev_ready(%struct.mtd_info*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
