; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_advansys_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32 }
%struct.asc_board = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"boardp 0x%p\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"before AscISR()\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"before AdvISR()\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @advansys_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.asc_board*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %5, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %11 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.asc_board* %11, %struct.asc_board** %6, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %14 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.asc_board* %13)
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @spin_lock(i32 %17)
  %19 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %20 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @AscIsIntPending(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %31 = load i32, i32* @interrupt, align 4
  %32 = call i32 @ASC_STATS(%struct.Scsi_Host* %30, i32 %31)
  %33 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %35 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @AscISR(i32* %36)
  br label %38

38:                                               ; preds = %28, %22
  br label %52

39:                                               ; preds = %2
  %40 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %42 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i64 @AdvISR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %49 = load i32, i32* @interrupt, align 4
  %50 = call i32 @ASC_STATS(%struct.Scsi_Host* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %54 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @spin_unlock(i32 %55)
  %57 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i64 @ASC_NARROW_BOARD(%struct.asc_board*) #1

declare dso_local i64 @AscIsIntPending(i32) #1

declare dso_local i32 @ASC_STATS(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @AscISR(i32*) #1

declare dso_local i64 @AdvISR(i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
