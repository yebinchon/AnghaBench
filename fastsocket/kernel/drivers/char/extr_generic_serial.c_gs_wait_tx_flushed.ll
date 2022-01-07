; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_wait_tx_flushed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_wait_tx_flushed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_port = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GS_DEBUG_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"port=%p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"xmit_cnt=%x, xmit_buf=%p, tty=%p.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"ERROR: !port, !port->xmit_buf or prot->xmit_cnt < 0.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"nothing to wait for.\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"now=%lx, end=%lx (%ld).\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Expect to finish in %d jiffies (%d chars).\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Signal pending. Bombing out: \00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"charsleft = %d.\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @gs_wait_tx_flushed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_wait_tx_flushed(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gs_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.gs_port*
  store %struct.gs_port* %13, %struct.gs_port** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = call i32 (...) @func_enter()
  %15 = load i32, i32* @GS_DEBUG_FLUSH, align 4
  %16 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %17 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.gs_port* %16)
  %18 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %19 = icmp ne %struct.gs_port* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @GS_DEBUG_FLUSH, align 4
  %22 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %23 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %26 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %29 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %20, %2
  %34 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %35 = icmp ne %struct.gs_port* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %38 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %43 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41, %36, %33
  %47 = load i32, i32* @GS_DEBUG_FLUSH, align 4
  %48 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 (...) @func_exit()
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %169

52:                                               ; preds = %41
  %53 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %54 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gs_real_chars_in_buffer(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32, i32* @GS_DEBUG_FLUSH, align 4
  %62 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 (...) @func_exit()
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %169

65:                                               ; preds = %52
  %66 = load i64, i64* %5, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i64, i64* @jiffies, align 8
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %77 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 2, %81
  %83 = mul nsw i32 %82, 10
  %84 = load i32, i32* @HZ, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %87 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %85, %88
  br label %91

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %80
  %92 = phi i32 [ %89, %80 ], [ 0, %90 ]
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %91, %70
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i32, i32* @GS_DEBUG_FLUSH, align 4
  %101 = load i64, i64* @jiffies, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @jiffies, align 8
  %105 = sub i64 %103, %104
  %106 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %101, i64 %102, i64 %105)
  br label %107

107:                                              ; preds = %160, %96
  %108 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %109 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @gs_real_chars_in_buffer(i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @jiffies, align 8
  %117 = call i64 @time_after(i64 %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %114, %107
  %120 = phi i1 [ false, %107 ], [ %118, %114 ]
  br i1 %120, label %121, label %161

121:                                              ; preds = %119
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 16
  store i32 %123, i32* %9, align 4
  %124 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %125 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = load i32, i32* %9, align 4
  %130 = mul nsw i32 %129, 10
  %131 = load i32, i32* @HZ, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load %struct.gs_port*, %struct.gs_port** %6, align 8
  %134 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %132, %135
  %137 = add nsw i32 1, %136
  br label %139

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %128
  %140 = phi i32 [ %137, %128 ], [ 0, %138 ]
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 1, i32* %8, align 4
  br label %144

144:                                              ; preds = %143, %139
  %145 = load i32, i32* @GS_DEBUG_FLUSH, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %145, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @jiffies_to_msecs(i32 %149)
  %151 = call i32 @msleep_interruptible(i32 %150)
  %152 = load i32, i32* @current, align 4
  %153 = call i64 @signal_pending(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %144
  %156 = load i32, i32* @GS_DEBUG_FLUSH, align 4
  %157 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %158 = load i32, i32* @EINTR, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %10, align 4
  br label %161

160:                                              ; preds = %144
  br label %107

161:                                              ; preds = %155, %119
  %162 = load i32, i32* @GS_DEBUG_FLUSH, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @TASK_RUNNING, align 4
  %166 = call i32 @set_current_state(i32 %165)
  %167 = call i32 (...) @func_exit()
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %161, %60, %46
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @gs_dprintk(i32, i8*, ...) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i32 @gs_real_chars_in_buffer(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
