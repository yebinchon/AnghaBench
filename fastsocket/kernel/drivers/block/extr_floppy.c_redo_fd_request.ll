; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_redo_fd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_redo_fd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32* }

@jiffies = common dso_local global i32 0, align 4
@lastredo = common dso_local global i32 0, align 4
@current_drive = common dso_local global i64 0, align 8
@N_DRIVE = common dso_local global i64 0, align 8
@current_req = common dso_local global %struct.request* null, align 8
@floppy_queue = common dso_local global %struct.TYPE_10__* null, align 8
@do_floppy = common dso_local global i32* null, align 8
@current_reqD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"redo fd request\00", align 1
@default_raw_cmd = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@raw_cmd = common dso_local global %struct.TYPE_9__* null, align 8
@fake_change = common dso_local global i32 0, align 4
@FD_DISK_CHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"disk absent or changed during operation\0A\00", align 1
@_floppy = common dso_local global i32* null, align 8
@probing = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_11__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"no autodetectable formats\0A\00", align 1
@floppy_type = common dso_local global i32* null, align 8
@DP = common dso_local global %struct.TYPE_12__* null, align 8
@errors = common dso_local global i32* null, align 8
@FD_NEED_TWADDLE = common dso_local global i32 0, align 4
@floppy_start = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"queue fd request\00", align 1
@REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @redo_fd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redo_fd_request() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = load i32, i32* @jiffies, align 4
  store i32 %4, i32* @lastredo, align 4
  %5 = load i64, i64* @current_drive, align 8
  %6 = load i64, i64* @N_DRIVE, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* @current_drive, align 8
  %10 = call i32 @floppy_off(i64 %9)
  br label %11

11:                                               ; preds = %8, %0
  br label %12

12:                                               ; preds = %97, %74, %60, %11
  %13 = load %struct.request*, %struct.request** @current_req, align 8
  %14 = icmp ne %struct.request* %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @floppy_queue, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spin_lock_irq(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @floppy_queue, align 8
  %21 = call %struct.request* @blk_fetch_request(%struct.TYPE_10__* %20)
  store %struct.request* %21, %struct.request** %3, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @floppy_queue, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @spin_unlock_irq(i32 %24)
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = icmp ne %struct.request* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %15
  store i32* null, i32** @do_floppy, align 8
  %29 = call i32 (...) @unlock_fdc()
  br label %110

30:                                               ; preds = %15
  %31 = load %struct.request*, %struct.request** %3, align 8
  store %struct.request* %31, %struct.request** @current_req, align 8
  br label %32

32:                                               ; preds = %30, %12
  %33 = load %struct.request*, %struct.request** @current_req, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @set_fdc(i32 %39)
  %41 = load i32, i32* @current_reqD, align 4
  %42 = call i32 @reschedule_timeout(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @set_floppy(i32 %43)
  store %struct.TYPE_9__* @default_raw_cmd, %struct.TYPE_9__** @raw_cmd, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @raw_cmd, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = call i64 @start_motor(void (...)* bitcast (void ()* @redo_fd_request to void (...)*))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %110

50:                                               ; preds = %32
  %51 = load i64, i64* @current_drive, align 8
  %52 = call i32 @disk_change(i64 %51)
  %53 = load i64, i64* @current_drive, align 8
  %54 = call i64 @test_bit(i64 %53, i32* @fake_change)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @FD_DISK_CHANGED, align 4
  %58 = call i64 @TESTF(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %50
  %61 = call i32 @DPRINT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @request_done(i32 0)
  br label %12

63:                                               ; preds = %56
  %64 = load i32*, i32** @_floppy, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %90, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @probing, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DRS, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = call i64 (...) @next_valid_format()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** @_floppy, align 8
  %76 = call i32 @request_done(i32 0)
  br label %12

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %66
  store i32 1, i32* @probing, align 4
  %79 = load i32*, i32** @floppy_type, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DP, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DRS, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %79, i64 %88
  store i32* %89, i32** @_floppy, align 8
  br label %91

90:                                               ; preds = %63
  store i32 0, i32* @probing, align 4
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.request*, %struct.request** @current_req, align 8
  %93 = getelementptr inbounds %struct.request, %struct.request* %92, i32 0, i32 0
  store i32* %93, i32** @errors, align 8
  %94 = call i32 (...) @make_raw_rw_request()
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @request_done(i32 %98)
  br label %12

100:                                              ; preds = %91
  %101 = load i32, i32* @FD_NEED_TWADDLE, align 4
  %102 = call i64 @TESTF(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 (...) @twaddle()
  br label %106

106:                                              ; preds = %104, %100
  %107 = load i32, i32* @floppy_start, align 4
  %108 = call i32 @schedule_bh(i32 %107)
  %109 = call i32 @debugt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %49, %28
  ret void
}

declare dso_local i32 @floppy_off(i64) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.request* @blk_fetch_request(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @unlock_fdc(...) #1

declare dso_local i32 @set_fdc(i32) #1

declare dso_local i32 @reschedule_timeout(i32, i8*, i32) #1

declare dso_local i32 @set_floppy(i32) #1

declare dso_local i64 @start_motor(void (...)*) #1

declare dso_local i32 @disk_change(i64) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i64 @TESTF(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @request_done(i32) #1

declare dso_local i64 @next_valid_format(...) #1

declare dso_local i32 @make_raw_rw_request(...) #1

declare dso_local i32 @twaddle(...) #1

declare dso_local i32 @schedule_bh(i32) #1

declare dso_local i32 @debugt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
