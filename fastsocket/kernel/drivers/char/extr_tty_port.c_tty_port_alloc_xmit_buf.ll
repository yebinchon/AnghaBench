; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_alloc_xmit_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_alloc_xmit_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_port_alloc_xmit_buf(%struct.tty_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  %4 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %5 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %8 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @get_zeroed_page(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %16 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %19 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
