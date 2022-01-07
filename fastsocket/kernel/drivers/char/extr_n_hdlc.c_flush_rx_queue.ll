; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_hdlc.c_flush_rx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_hdlc.c_flush_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.n_hdlc = type { i32, i32 }
%struct.n_hdlc_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @flush_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_rx_queue(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_hdlc*, align 8
  %4 = alloca %struct.n_hdlc_buf*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = call %struct.n_hdlc* @tty2n_hdlc(%struct.tty_struct* %5)
  store %struct.n_hdlc* %6, %struct.n_hdlc** %3, align 8
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %9 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %8, i32 0, i32 1
  %10 = call %struct.n_hdlc_buf* @n_hdlc_buf_get(i32* %9)
  store %struct.n_hdlc_buf* %10, %struct.n_hdlc_buf** %4, align 8
  %11 = icmp ne %struct.n_hdlc_buf* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %14 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %13, i32 0, i32 0
  %15 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %4, align 8
  %16 = call i32 @n_hdlc_buf_put(i32* %14, %struct.n_hdlc_buf* %15)
  br label %7

17:                                               ; preds = %7
  ret void
}

declare dso_local %struct.n_hdlc* @tty2n_hdlc(%struct.tty_struct*) #1

declare dso_local %struct.n_hdlc_buf* @n_hdlc_buf_get(i32*) #1

declare dso_local i32 @n_hdlc_buf_put(i32*, %struct.n_hdlc_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
