; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi_vme.c_scsi_sun3_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi_vme.c_scsi_sun3_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i16 }

@dregs = common dso_local global %struct.TYPE_3__* null, align 8
@CSR_DMA_ENABLE = common dso_local global i16 0, align 2
@CSR_GOOD = common dso_local global i16 0, align 2
@CSR_DMA_BUSERR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [26 x i8] c"scsi%d: bus error in dma\0A\00", align 1
@default_instance = common dso_local global %struct.TYPE_4__* null, align 8
@CSR_DMA_CONFLICT = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [22 x i8] c"scsi%d: dma conflict\0A\00", align 1
@CSR_SDB_INT = common dso_local global i16 0, align 2
@CSR_DMA_INT = common dso_local global i16 0, align 2
@sun3_dma_orig_addr = common dso_local global i32 0, align 4
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
  %9 = load i16, i16* %8, align 4
  store i16 %9, i16* %5, align 2
  store i32 0, i32* %6, align 4
  %10 = load i16, i16* @CSR_DMA_ENABLE, align 2
  %11 = zext i16 %10 to i32
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dregs, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 4
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, %12
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %14, align 4
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @CSR_GOOD, align 2
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %2
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @CSR_DMA_BUSERR, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @default_instance, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 2
  %37 = call i32 (i8*, i16, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i16 zeroext %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i16, i16* %5, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* @CSR_DMA_CONFLICT, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @default_instance, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i16, i16* %47, align 2
  %49 = call i32 (i8*, i16, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %48)
  br label %50

50:                                               ; preds = %45, %38
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i16, i16* %5, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* @CSR_SDB_INT, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* @CSR_DMA_INT, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %55, %57
  %59 = and i32 %53, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @NCR5380_intr(i32 %62, i8* %63)
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %51
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @IRQ_RETVAL(i32 %66)
  ret i32 %67
}

declare dso_local i32 @printk(i8*, i16 zeroext, ...) #1

declare dso_local i32 @NCR5380_intr(i32, i8*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
