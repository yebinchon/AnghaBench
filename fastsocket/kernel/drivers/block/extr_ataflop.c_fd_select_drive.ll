; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_fd_select_drive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_fd_select_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SelectedDrive = common dso_local global i32 0, align 4
@sound_ym = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@DSKDRVNONE = common dso_local global i8 0, align 1
@DSKDRV0 = common dso_local global i8 0, align 1
@DSKDRV1 = common dso_local global i8 0, align 1
@atari_dont_touch_floppy_select = common dso_local global i32 0, align 4
@FDCREG_TRACK = common dso_local global i32 0, align 4
@UD = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@UDT = common dso_local global %struct.TYPE_7__* null, align 8
@FDCSPEED = common dso_local global i32 0, align 4
@dma_wd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fd_select_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_select_drive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SelectedDrive, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %51

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  store i32 14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sound_ym, i32 0, i32 0), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sound_ym, i32 0, i32 0), align 4
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @DSKDRVNONE, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load i8, i8* @DSKDRV0, align 1
  %23 = zext i8 %22 to i32
  br label %27

24:                                               ; preds = %9
  %25 = load i8, i8* @DSKDRV1, align 1
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  %29 = xor i32 %28, -1
  %30 = and i32 %18, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sound_ym, i32 0, i32 1), align 4
  store i32 1, i32* @atari_dont_touch_floppy_select, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @local_irq_restore(i64 %32)
  %34 = load i32, i32* @FDCREG_TRACK, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @UD, i32 0, i32 0), align 4
  %36 = call i32 @FDC_WRITE(i32 %34, i32 %35)
  %37 = call i32 @udelay(i32 25)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @UDT, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load i32, i32* @FDCSPEED, align 4
  %42 = call i64 @ATARIHW_PRESENT(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @UDT, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma_wd, i32 0, i32 0), align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %2, align 4
  store i32 %50, i32* @SelectedDrive, align 4
  br label %51

51:                                               ; preds = %49, %8
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @FDC_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ATARIHW_PRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
