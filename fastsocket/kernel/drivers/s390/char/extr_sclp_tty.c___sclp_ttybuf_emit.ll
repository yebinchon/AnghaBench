; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c___sclp_ttybuf_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c___sclp_ttybuf_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i32 }

@sclp_tty_lock = common dso_local global i32 0, align 4
@sclp_tty_outqueue = common dso_local global i32 0, align 4
@sclp_tty_buffer_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sclp_buffer*)* @__sclp_ttybuf_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sclp_ttybuf_emit(%struct.sclp_buffer* %0) #0 {
  %2 = alloca %struct.sclp_buffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @sclp_tty_lock, i64 %6)
  %8 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %8, i32 0, i32 0
  %10 = call i32 @list_add_tail(i32* %9, i32* @sclp_tty_outqueue)
  %11 = load i32, i32* @sclp_tty_buffer_count, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @sclp_tty_buffer_count, align 4
  store i32 %11, i32* %4, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* @sclp_tty_lock, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %20 = call i32 @sclp_emit_buffer(%struct.sclp_buffer* %19, i32 (%struct.sclp_buffer*, i32)* @sclp_ttybuf_callback)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.sclp_buffer*, %struct.sclp_buffer** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @sclp_ttybuf_callback(%struct.sclp_buffer* %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %23, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_emit_buffer(%struct.sclp_buffer*, i32 (%struct.sclp_buffer*, i32)*) #1

declare dso_local i32 @sclp_ttybuf_callback(%struct.sclp_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
