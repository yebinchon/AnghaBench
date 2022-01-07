; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_bfin_jtag_comm.c_bfin_jc_emudat_manager.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_bfin_jtag_comm.c_bfin_jc_emudat_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.tty_struct = type { i32 }

@bfin_jc_tty = common dso_local global i32* null, align 8
@bfin_jc_write_buf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"waiting for readers\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@EMUDIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"waiting for data (in_len = %i) (circ: %i %i)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@bfin_jc_tty_mutex = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"incoming length: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"  incoming data: 0x%08x (pushing %zu)\0A\00", align 1
@EMUDOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"outgoing length: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"  outgoing data: 0x%08x (pushing %zu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bfin_jc_emudat_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_jc_emudat_manager(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %159, %49, %1
  %13 = call i32 (...) @kthread_should_stop()
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %160

16:                                               ; preds = %12
  %17 = load i32*, i32** @bfin_jc_tty, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = call i64 @circ_empty(%struct.TYPE_5__* @bfin_jc_write_buf)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %25 = call i32 @__set_current_state(i32 %24)
  %26 = call i32 (...) @schedule()
  %27 = load i32, i32* @TASK_RUNNING, align 4
  %28 = call i32 @__set_current_state(i32 %27)
  br label %29

29:                                               ; preds = %22, %19, %16
  %30 = call i32 (...) @bfin_read_DBGSTAT()
  %31 = load i32, i32* @EMUDIF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = call i64 @circ_empty(%struct.TYPE_5__* @bfin_jc_write_buf)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfin_jc_write_buf, i32 0, i32 0), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfin_jc_write_buf, i32 0, i32 1), align 4
  %41 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @schedule()
  br label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @HZ, align 4
  %48 = call i32 @schedule_timeout_interruptible(i32 %47)
  br label %49

49:                                               ; preds = %46, %44
  br label %12

50:                                               ; preds = %34, %29
  %51 = call i32 (...) @bfin_read_DBGSTAT()
  %52 = load i32, i32* @EMUDIF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %50
  %56 = call i32 @mutex_lock(i32* @bfin_jc_tty_mutex)
  %57 = load i32*, i32** @bfin_jc_tty, align 8
  %58 = bitcast i32* %57 to %struct.tty_struct*
  store %struct.tty_struct* %58, %struct.tty_struct** %5, align 8
  %59 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %60 = icmp ne %struct.tty_struct* %59, null
  br i1 %60, label %61, label %93

61:                                               ; preds = %55
  %62 = call i32 (...) @bfin_read_emudat()
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %92

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = icmp sle i32 4, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i32 [ 4, %72 ], [ %74, %73 ]
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i64, i64* %7, align 8
  %80 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %78, i64 %79)
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %3, align 4
  %86 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %87 = bitcast i32* %6 to i8*
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @tty_insert_flip_string(%struct.tty_struct* %86, i8* %87, i64 %88)
  %90 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %91 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %90)
  br label %92

92:                                               ; preds = %75, %65
  br label %93

93:                                               ; preds = %92, %55
  %94 = call i32 @mutex_unlock(i32* @bfin_jc_tty_mutex)
  br label %95

95:                                               ; preds = %93, %50
  %96 = call i32 (...) @bfin_read_DBGSTAT()
  %97 = load i32, i32* @EMUDOF, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %159, label %100

100:                                              ; preds = %95
  %101 = call i64 @circ_empty(%struct.TYPE_5__* @bfin_jc_write_buf)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %159, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = call i32 @circ_cnt(%struct.TYPE_5__* @bfin_jc_write_buf)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @bfin_write_emudat(i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %158

112:                                              ; preds = %103
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfin_jc_write_buf, i32 0, i32 0), align 4
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp sle i32 4, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %116
  %120 = phi i32 [ 4, %116 ], [ %118, %117 ]
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %10, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 0
  %124 = call i32 @circ_byte(%struct.TYPE_5__* @bfin_jc_write_buf, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @circ_byte(%struct.TYPE_5__* @bfin_jc_write_buf, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 2
  %130 = call i32 @circ_byte(%struct.TYPE_5__* @bfin_jc_write_buf, i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 3
  %133 = call i32 @circ_byte(%struct.TYPE_5__* @bfin_jc_write_buf, i32 %132)
  %134 = call i32 @bfin_write_emudat_chars(i32 %124, i32 %127, i32 %130, i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i64, i64* %10, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfin_jc_write_buf, i32 0, i32 0), align 4
  %137 = sext i32 %136 to i64
  %138 = add i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bfin_jc_write_buf, i32 0, i32 0), align 4
  %140 = load i64, i64* %10, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = sub i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %4, align 4
  %145 = call i32 @mutex_lock(i32* @bfin_jc_tty_mutex)
  %146 = load i32*, i32** @bfin_jc_tty, align 8
  %147 = bitcast i32* %146 to %struct.tty_struct*
  store %struct.tty_struct* %147, %struct.tty_struct** %8, align 8
  %148 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %149 = icmp ne %struct.tty_struct* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %119
  %151 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %152 = call i32 @tty_wakeup(%struct.tty_struct* %151)
  br label %153

153:                                              ; preds = %150, %119
  %154 = call i32 @mutex_unlock(i32* @bfin_jc_tty_mutex)
  %155 = load i32, i32* %11, align 4
  %156 = load i64, i64* %10, align 8
  %157 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %155, i64 %156)
  br label %158

158:                                              ; preds = %153, %106
  br label %159

159:                                              ; preds = %158, %100, %95
  br label %12

160:                                              ; preds = %12
  %161 = load i32, i32* @TASK_RUNNING, align 4
  %162 = call i32 @__set_current_state(i32 %161)
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i64 @circ_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @bfin_read_DBGSTAT(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bfin_read_emudat(...) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i8*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @circ_cnt(%struct.TYPE_5__*) #1

declare dso_local i32 @bfin_write_emudat(i32) #1

declare dso_local i32 @bfin_write_emudat_chars(i32, i32, i32, i32) #1

declare dso_local i32 @circ_byte(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
