; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_setup_rw_floppy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_setup_rw_floppy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 (...)*, i32 (...)* }

@raw_cmd = common dso_local global %struct.TYPE_5__* null, align 8
@FD_RAW_READ = common dso_local global i32 0, align 4
@FD_RAW_WRITE = common dso_local global i32 0, align 4
@FD_RAW_INTR = common dso_local global i32 0, align 4
@FD_RAW_SPIN = common dso_local global i32 0, align 4
@FD_RAW_NO_MOTOR = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_7__* null, align 8
@DP = common dso_local global %struct.TYPE_8__* null, align 8
@jiffies = common dso_local global i64 0, align 8
@floppy_start = common dso_local global i64 0, align 8
@main_command_interrupt = common dso_local global i32 0, align 4
@do_floppy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rw_command: \00", align 1
@cont = common dso_local global %struct.TYPE_6__* null, align 8
@inr = common dso_local global i32 0, align 4
@FD_RAW_NEED_DISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_rw_floppy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_rw_floppy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FD_RAW_READ, align 4
  %12 = load i32, i32* @FD_RAW_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @FD_RAW_INTR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %0
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @FD_RAW_SPIN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @FD_RAW_NO_MOTOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %61, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DP, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %33, %36
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DP, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i64 @time_after(i64 %38, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %30
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DP, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* @floppy_start, align 8
  store i64 %52, i64* %6, align 8
  br label %54

53:                                               ; preds = %30
  store i64 ptrtoint (void ()* @setup_rw_floppy to i64), i64* %6, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @fd_wait_for_completion(i64 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %133

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %25, %20
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @FD_RAW_READ, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @FD_RAW_WRITE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69, %61
  %75 = call i32 (...) @setup_DMA()
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @FD_RAW_INTR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @main_command_interrupt, align 4
  store i32 %82, i32* @do_floppy, align 4
  br label %83

83:                                               ; preds = %81, %76
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i32, i32* %1, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @output_byte(i32 %97)
  %99 = load i32, i32* %2, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %84

104:                                              ; preds = %84
  %105 = call i32 @debugt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* %2, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cont, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32 (...)*, i32 (...)** %110, align 8
  %112 = call i32 (...) %111()
  %113 = call i32 (...) @reset_fdc()
  br label %133

114:                                              ; preds = %104
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @FD_RAW_INTR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = call i32 (...) @result()
  store i32 %120, i32* @inr, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cont, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32 (...)*, i32 (...)** %122, align 8
  %124 = call i32 (...) %123()
  br label %133

125:                                              ; preds = %114
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @FD_RAW_NEED_DISK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 (...) @fd_watchdog()
  br label %132

132:                                              ; preds = %130, %125
  br label %133

133:                                              ; preds = %59, %108, %132, %119
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @fd_wait_for_completion(i64, i64) #1

declare dso_local i32 @setup_DMA(...) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @debugt(i8*) #1

declare dso_local i32 @reset_fdc(...) #1

declare dso_local i32 @result(...) #1

declare dso_local i32 @fd_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
