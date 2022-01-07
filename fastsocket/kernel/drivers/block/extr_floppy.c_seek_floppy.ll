; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_seek_floppy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_seek_floppy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 (...)*, i32 (i32)* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@blind_seek = common dso_local global i32 0, align 4
@FD_DISK_NEWCHANGE = common dso_local global i32 0, align 4
@current_drive = common dso_local global i32 0, align 4
@raw_cmd = common dso_local global %struct.TYPE_5__* null, align 8
@FD_RAW_NEED_DISK = common dso_local global i32 0, align 4
@FD_DISK_CHANGED = common dso_local global i32 0, align 4
@cont = common dso_local global %struct.TYPE_6__* null, align 8
@DRS = common dso_local global %struct.TYPE_7__* null, align 8
@NEED_1_RECAL = common dso_local global i64 0, align 8
@NO_TRACK = common dso_local global i64 0, align 8
@DP = common dso_local global %struct.TYPE_8__* null, align 8
@FD_SILENT_DCL_CLEAR = common dso_local global i32 0, align 4
@fdc = common dso_local global i32 0, align 4
@FD_RAW_NEED_SEEK = common dso_local global i32 0, align 4
@seek_interrupt = common dso_local global i32 0, align 4
@do_floppy = common dso_local global i32 0, align 4
@FD_SEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"seek command:\00", align 1
@FD_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @seek_floppy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seek_floppy() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @blind_seek, align 4
  %2 = load i32, i32* @FD_DISK_NEWCHANGE, align 4
  %3 = call i64 @TESTF(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @current_drive, align 4
  %7 = call i64 @disk_change(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FD_RAW_NEED_DISK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load i32, i32* @FD_DISK_CHANGED, align 4
  %18 = call i32 @SETF(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cont, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = call i32 %21(i32 0)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cont, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = call i32 (...) %25()
  br label %127

27:                                               ; preds = %9, %5, %0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NEED_1_RECAL, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (...) @recalibrate_floppy()
  br label %127

35:                                               ; preds = %27
  %36 = load i32, i32* @FD_DISK_NEWCHANGE, align 4
  %37 = call i64 @TESTF(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %92

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FD_RAW_NEED_DISK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %92

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NO_TRACK, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %52, %46
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %1, align 4
  br label %91

71:                                               ; preds = %60
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DP, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FD_SILENT_DCL_CLEAR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load i32, i32* @fdc, align 4
  %80 = load i32, i32* @current_drive, align 4
  %81 = call i32 @UNIT(i32 %80)
  %82 = shl i32 16, %81
  %83 = xor i32 %82, -1
  %84 = call i32 @set_dor(i32 %79, i32 %83, i32 0)
  store i32 1, i32* @blind_seek, align 4
  %85 = load i32, i32* @FD_RAW_NEED_SEEK, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %78, %71
  store i32 1, i32* %1, align 4
  br label %91

91:                                               ; preds = %90, %65
  br label %116

92:                                               ; preds = %52, %39, %35
  %93 = call i32 (...) @check_wp()
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %92
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @FD_RAW_NEED_SEEK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %1, align 4
  br label %115

113:                                              ; preds = %101, %92
  %114 = call i32 (...) @setup_rw_floppy()
  br label %127

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* @seek_interrupt, align 4
  store i32 %118, i32* @do_floppy, align 4
  %119 = load i32, i32* @FD_SEEK, align 4
  %120 = call i32 @output_byte(i32 %119)
  %121 = load i32, i32* @current_drive, align 4
  %122 = call i32 @UNIT(i32 %121)
  %123 = call i32 @output_byte(i32 %122)
  %124 = load i32, i32* %1, align 4
  %125 = call i32 @LAST_OUT(i32 %124)
  %126 = call i32 @debugt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %117, %113, %33, %16
  ret void
}

declare dso_local i64 @TESTF(i32) #1

declare dso_local i64 @disk_change(i32) #1

declare dso_local i32 @SETF(i32) #1

declare dso_local i32 @recalibrate_floppy(...) #1

declare dso_local i32 @set_dor(i32, i32, i32) #1

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @check_wp(...) #1

declare dso_local i32 @setup_rw_floppy(...) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @LAST_OUT(i32) #1

declare dso_local i32 @debugt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
