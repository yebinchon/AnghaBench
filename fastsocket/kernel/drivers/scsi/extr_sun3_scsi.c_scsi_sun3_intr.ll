; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi.c_scsi_sun3_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi.c_scsi_sun3_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16 }
%struct.TYPE_4__ = type { i32 }

@dregs = common dso_local global %struct.TYPE_3__* null, align 8
@CSR_GOOD = common dso_local global i16 0, align 2
@CSR_DMA_BUSERR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [26 x i8] c"scsi%d: bus error in dma\0A\00", align 1
@default_instance = common dso_local global %struct.TYPE_4__* null, align 8
@CSR_DMA_CONFLICT = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [22 x i8] c"scsi%d: dma conflict\0A\00", align 1
@CSR_SDB_INT = common dso_local global i16 0, align 2
@CSR_DMA_INT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @scsi_sun3_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_sun3_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dregs, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %5, align 2
  store i32 0, i32* %6, align 4
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @CSR_GOOD, align 2
  %13 = zext i16 %12 to i32
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @CSR_DMA_BUSERR, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @default_instance, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i16, i16* %5, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @CSR_DMA_CONFLICT, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @default_instance, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %29
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* @CSR_SDB_INT, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @CSR_DMA_INT, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @NCR5380_intr(i32 %53, i8* %54)
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @IRQ_RETVAL(i32 %57)
  ret i32 %58
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @NCR5380_intr(i32, i8*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
