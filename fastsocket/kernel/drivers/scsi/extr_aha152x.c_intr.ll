; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha152x.c_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha152x.c_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.TYPE_2__ = type { i32 }

@REV = common dso_local global i32 0, align 4
@DMACNTRL0 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DMASTAT = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@INTEN = common dso_local global i32 0, align 4
@aha152x_tq = common dso_local global i32 0, align 4
@run = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %6, align 8
  %12 = load i32, i32* @REV, align 4
  %13 = call zeroext i8 @GETPORT(i32 %12)
  store i8 %13, i8* %8, align 1
  %14 = load i32, i32* @DMACNTRL0, align 4
  %15 = call zeroext i8 @GETPORT(i32 %14)
  store i8 %15, i8* %9, align 1
  %16 = load i8, i8* %8, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @DMASTAT, align 4
  %27 = load i32, i32* @INTSTAT, align 4
  %28 = call i64 @TESTLO(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %54

32:                                               ; preds = %25
  %33 = load i32, i32* @DMACNTRL0, align 4
  %34 = load i32, i32* @INTEN, align 4
  %35 = call i32 @CLRBITS(i32 %33, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @DO_LOCK(i64 %36)
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = call %struct.TYPE_2__* @HOSTDATA(%struct.Scsi_Host* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %45 = call %struct.TYPE_2__* @HOSTDATA(%struct.Scsi_Host* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @run, align 4
  %48 = call i32 @INIT_WORK(i32* @aha152x_tq, i32 %47)
  %49 = call i32 @schedule_work(i32* @aha152x_tq)
  br label %50

50:                                               ; preds = %43, %32
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @DO_UNLOCK(i64 %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %30, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local zeroext i8 @GETPORT(i32) #1

declare dso_local i64 @TESTLO(i32, i32) #1

declare dso_local i32 @CLRBITS(i32, i32) #1

declare dso_local i32 @DO_LOCK(i64) #1

declare dso_local %struct.TYPE_2__* @HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @DO_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
