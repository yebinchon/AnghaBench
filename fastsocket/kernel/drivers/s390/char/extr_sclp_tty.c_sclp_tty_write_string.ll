; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c_sclp_tty_write_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c_sclp_tty_write_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.list_head = type { i32 }

@sclp_tty_lock = common dso_local global i32 0, align 4
@sclp_ttybuf = common dso_local global %struct.sclp_buffer* null, align 8
@sclp_tty_pages = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@sclp_tty_columns = common dso_local global i32 0, align 4
@SPACES_PER_TAB = common dso_local global i32 0, align 4
@sclp_tty_timer = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@sclp_tty_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @sclp_tty_write_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_tty_write_string(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sclp_buffer*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

16:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @sclp_tty_lock, i64 %17)
  br label %19

19:                                               ; preds = %73, %16
  %20 = load %struct.sclp_buffer*, %struct.sclp_buffer** @sclp_ttybuf, align 8
  %21 = icmp eq %struct.sclp_buffer* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %34, %22
  %24 = call i64 @list_empty(%struct.TYPE_8__* @sclp_tty_pages)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @sclp_tty_lock, i64 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %98

32:                                               ; preds = %26
  %33 = call i32 (...) @sclp_sync_wait()
  br label %34

34:                                               ; preds = %32
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @sclp_tty_lock, i64 %35)
  br label %23

37:                                               ; preds = %23
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sclp_tty_pages, i32 0, i32 0), align 8
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = bitcast i8* %39 to %struct.list_head*
  %41 = call i32 @list_del(%struct.list_head* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @sclp_tty_columns, align 4
  %44 = load i32, i32* @SPACES_PER_TAB, align 4
  %45 = call %struct.sclp_buffer* @sclp_make_buffer(i8* %42, i32 %43, i32 %44)
  store %struct.sclp_buffer* %45, %struct.sclp_buffer** @sclp_ttybuf, align 8
  br label %46

46:                                               ; preds = %37, %19
  %47 = load %struct.sclp_buffer*, %struct.sclp_buffer** @sclp_ttybuf, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @sclp_write(%struct.sclp_buffer* %47, i8* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %76

58:                                               ; preds = %46
  %59 = load %struct.sclp_buffer*, %struct.sclp_buffer** @sclp_ttybuf, align 8
  store %struct.sclp_buffer* %59, %struct.sclp_buffer** %12, align 8
  store %struct.sclp_buffer* null, %struct.sclp_buffer** @sclp_ttybuf, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* @sclp_tty_lock, i64 %60)
  %62 = load %struct.sclp_buffer*, %struct.sclp_buffer** %12, align 8
  %63 = call i32 @__sclp_ttybuf_emit(%struct.sclp_buffer* %62)
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_lock_irqsave(i32* @sclp_tty_lock, i64 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %19, label %76

76:                                               ; preds = %73, %57
  %77 = load %struct.sclp_buffer*, %struct.sclp_buffer** @sclp_ttybuf, align 8
  %78 = icmp ne %struct.sclp_buffer* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.sclp_buffer*, %struct.sclp_buffer** @sclp_ttybuf, align 8
  %81 = call i64 @sclp_chars_in_buffer(%struct.sclp_buffer* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = call i32 @timer_pending(%struct.TYPE_7__* @sclp_tty_timer)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = call i32 @init_timer(%struct.TYPE_7__* @sclp_tty_timer)
  %88 = load i32, i32* @sclp_tty_timeout, align 4
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_tty_timer, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_tty_timer, i32 0, i32 0), align 8
  %89 = load i64, i64* @jiffies, align 8
  %90 = load i32, i32* @HZ, align 4
  %91 = sdiv i32 %90, 10
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %89, %92
  store i64 %93, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_tty_timer, i32 0, i32 1), align 8
  %94 = call i32 @add_timer(%struct.TYPE_7__* @sclp_tty_timer)
  br label %95

95:                                               ; preds = %86, %83, %79, %76
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* @sclp_tty_lock, i64 %96)
  br label %98

98:                                               ; preds = %95, %31
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %15
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_sync_wait(...) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

declare dso_local %struct.sclp_buffer* @sclp_make_buffer(i8*, i32, i32) #1

declare dso_local i32 @sclp_write(%struct.sclp_buffer*, i8*, i32) #1

declare dso_local i32 @__sclp_ttybuf_emit(%struct.sclp_buffer*) #1

declare dso_local i64 @sclp_chars_in_buffer(%struct.sclp_buffer*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
