; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c___sclp_vt220_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c___sclp_vt220_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.list_head = type { i32 }

@sclp_vt220_lock = common dso_local global i32 0, align 4
@sclp_vt220_current_request = common dso_local global i32* null, align 8
@sclp_vt220_empty = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@sclp_console_full = common dso_local global i32 0, align 4
@sclp_vt220_suspended = common dso_local global i64 0, align 8
@sclp_vt220_timer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@sclp_vt220_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BUFFER_MAX_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32)* @__sclp_vt220_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sclp_vt220_write(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %109

19:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @sclp_vt220_lock, i64 %20)
  br label %22

22:                                               ; preds = %86, %19
  %23 = load i32*, i32** @sclp_vt220_current_request, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = call i64 @list_empty(%struct.TYPE_7__* @sclp_vt220_empty)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @sclp_console_full, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @sclp_console_full, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %46, %31
  %33 = call i64 @list_empty(%struct.TYPE_7__* @sclp_vt220_empty)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @sclp_vt220_suspended, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  br label %105

42:                                               ; preds = %38
  %43 = call i64 (...) @sclp_vt220_drop_buffer()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %52

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @sclp_vt220_lock, i64 %47)
  %49 = call i32 (...) @sclp_sync_wait()
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @spin_lock_irqsave(i32* @sclp_vt220_lock, i64 %50)
  br label %32

52:                                               ; preds = %45, %32
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sclp_vt220_empty, i32 0, i32 0), align 8
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = bitcast i8* %55 to %struct.list_head*
  %57 = call i32 @list_del(%struct.list_head* %56)
  %58 = load i8*, i8** %13, align 8
  %59 = call i32* @sclp_vt220_initialize_page(i8* %58)
  store i32* %59, i32** @sclp_vt220_current_request, align 8
  br label %60

60:                                               ; preds = %52, %22
  %61 = load i32*, i32** @sclp_vt220_current_request, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @sclp_vt220_add_msg(i32* %61, i8* %62, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %89

73:                                               ; preds = %60
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* @sclp_vt220_lock, i64 %74)
  %76 = call i32 (...) @sclp_vt220_emit_current()
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @spin_lock_irqsave(i32* @sclp_vt220_lock, i64 %77)
  %79 = load i32, i32* %14, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %7, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %22, label %89

89:                                               ; preds = %86, %72
  %90 = load i32*, i32** @sclp_vt220_current_request, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = call i32 @timer_pending(%struct.TYPE_6__* @sclp_vt220_timer)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* @sclp_vt220_timeout, align 4
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sclp_vt220_timer, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sclp_vt220_timer, i32 0, i32 0), align 8
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i64, i64* @BUFFER_MAX_DELAY, align 8
  %102 = add nsw i64 %100, %101
  store i64 %102, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sclp_vt220_timer, i32 0, i32 1), align 8
  %103 = call i32 @add_timer(%struct.TYPE_6__* @sclp_vt220_timer)
  br label %104

104:                                              ; preds = %98, %95, %92, %89
  br label %105

105:                                              ; preds = %104, %41
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* @sclp_vt220_lock, i64 %106)
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %18
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(%struct.TYPE_7__*) #1

declare dso_local i64 @sclp_vt220_drop_buffer(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_sync_wait(...) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

declare dso_local i32* @sclp_vt220_initialize_page(i8*) #1

declare dso_local i32 @sclp_vt220_add_msg(i32*, i8*, i32, i32) #1

declare dso_local i32 @sclp_vt220_emit_current(...) #1

declare dso_local i32 @timer_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
