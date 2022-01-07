; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CHECK_RESET = common dso_local global i32 0, align 4
@raw_cmd = common dso_local global %struct.TYPE_3__* null, align 8
@FD_RAW_NO_MOTOR = common dso_local global i32 0, align 4
@current_drive = common dso_local global i32 0, align 4
@DP = common dso_local global %struct.TYPE_4__* null, align 8
@FD_RAW_NEED_SEEK = common dso_local global i32 0, align 4
@FD_RAW_NEED_DISK = common dso_local global i32 0, align 4
@FD_RAW_READ = common dso_local global i32 0, align 4
@FD_RAW_WRITE = common dso_local global i32 0, align 4
@FD_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @floppy_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floppy_ready() #0 {
  %1 = load i32, i32* @CHECK_RESET, align 4
  %2 = call i64 @start_motor(void (...)* bitcast (void ()* @floppy_ready to void (...)*))
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %58

5:                                                ; preds = %0
  %6 = call i64 (...) @fdc_dtr()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %58

9:                                                ; preds = %5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raw_cmd, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FD_RAW_NO_MOTOR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @current_drive, align 4
  %18 = call i64 @disk_change(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DP, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 (...) @twaddle()
  br label %27

27:                                               ; preds = %25, %20, %16, %9
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raw_cmd, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FD_RAW_NEED_SEEK, align 4
  %32 = load i32, i32* @FD_RAW_NEED_DISK, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = call i32 (...) @perpendicular_mode()
  %38 = call i32 (...) @fdc_specify()
  %39 = call i32 (...) @seek_floppy()
  br label %58

40:                                               ; preds = %27
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raw_cmd, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FD_RAW_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raw_cmd, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FD_RAW_WRITE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47, %40
  %55 = call i32 (...) @fdc_specify()
  br label %56

56:                                               ; preds = %54, %47
  %57 = call i32 (...) @setup_rw_floppy()
  br label %58

58:                                               ; preds = %4, %8, %56, %36
  ret void
}

declare dso_local i64 @start_motor(void (...)*) #1

declare dso_local i64 @fdc_dtr(...) #1

declare dso_local i64 @disk_change(i32) #1

declare dso_local i32 @twaddle(...) #1

declare dso_local i32 @perpendicular_mode(...) #1

declare dso_local i32 @fdc_specify(...) #1

declare dso_local i32 @seek_floppy(...) #1

declare dso_local i32 @setup_rw_floppy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
