; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_con.c_sclp_console_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_con.c_sclp_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.console = type { i32 }
%struct.list_head = type { i32 }

@sclp_con_lock = common dso_local global i32 0, align 4
@sclp_conbuf = common dso_local global i32* null, align 8
@sclp_con_pages = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@sclp_console_full = common dso_local global i32 0, align 4
@sclp_con_suspended = common dso_local global i64 0, align 8
@sclp_con_columns = common dso_local global i32 0, align 4
@sclp_con_width_htab = common dso_local global i32 0, align 4
@sclp_con_timer = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@sclp_console_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @sclp_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %100

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @sclp_con_lock, i64 %14)
  br label %16

16:                                               ; preds = %74, %13
  %17 = load i32*, i32** @sclp_conbuf, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = call i64 @list_empty(%struct.TYPE_8__* @sclp_con_pages)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @sclp_console_full, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @sclp_console_full, align 4
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %37, %25
  %27 = call i64 @list_empty(%struct.TYPE_8__* @sclp_con_pages)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i64, i64* @sclp_con_suspended, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %97

33:                                               ; preds = %29
  %34 = call i64 (...) @sclp_console_drop_buffer()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %43

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @sclp_con_lock, i64 %38)
  %40 = call i32 (...) @sclp_sync_wait()
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_lock_irqsave(i32* @sclp_con_lock, i64 %41)
  br label %26

43:                                               ; preds = %36, %26
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sclp_con_pages, i32 0, i32 0), align 8
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = bitcast i8* %45 to %struct.list_head*
  %47 = call i32 @list_del(%struct.list_head* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @sclp_con_columns, align 4
  %50 = load i32, i32* @sclp_con_width_htab, align 4
  %51 = call i32* @sclp_make_buffer(i8* %48, i32 %49, i32 %50)
  store i32* %51, i32** @sclp_conbuf, align 8
  br label %52

52:                                               ; preds = %43, %16
  %53 = load i32*, i32** @sclp_conbuf, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @sclp_write(i32* %53, i8* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %77

61:                                               ; preds = %52
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* @sclp_con_lock, i64 %62)
  %64 = call i32 (...) @sclp_conbuf_emit()
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @spin_lock_irqsave(i32* @sclp_con_lock, i64 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %6, align 4
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %16, label %77

77:                                               ; preds = %74, %60
  %78 = load i32*, i32** @sclp_conbuf, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load i32*, i32** @sclp_conbuf, align 8
  %82 = call i64 @sclp_chars_in_buffer(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = call i32 @timer_pending(%struct.TYPE_7__* @sclp_con_timer)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = call i32 @init_timer(%struct.TYPE_7__* @sclp_con_timer)
  %89 = load i32, i32* @sclp_console_timeout, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_con_timer, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_con_timer, i32 0, i32 0), align 8
  %90 = load i64, i64* @jiffies, align 8
  %91 = load i32, i32* @HZ, align 4
  %92 = sdiv i32 %91, 10
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  store i64 %94, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_con_timer, i32 0, i32 1), align 8
  %95 = call i32 @add_timer(%struct.TYPE_7__* @sclp_con_timer)
  br label %96

96:                                               ; preds = %87, %84, %80, %77
  br label %97

97:                                               ; preds = %96, %32
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* @sclp_con_lock, i64 %98)
  br label %100

100:                                              ; preds = %97, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(%struct.TYPE_8__*) #1

declare dso_local i64 @sclp_console_drop_buffer(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_sync_wait(...) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

declare dso_local i32* @sclp_make_buffer(i8*, i32, i32) #1

declare dso_local i32 @sclp_write(i32*, i8*, i32) #1

declare dso_local i32 @sclp_conbuf_emit(...) #1

declare dso_local i64 @sclp_chars_in_buffer(i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
