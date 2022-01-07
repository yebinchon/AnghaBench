; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_hdlc.c_flush_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_hdlc.c_flush_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.n_hdlc = type { %struct.TYPE_2__, %struct.n_hdlc_buf*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.n_hdlc_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @flush_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tx_queue(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_hdlc*, align 8
  %4 = alloca %struct.n_hdlc_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = call %struct.n_hdlc* @tty2n_hdlc(%struct.tty_struct* %6)
  store %struct.n_hdlc* %7, %struct.n_hdlc** %3, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %10 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %9, i32 0, i32 0
  %11 = call %struct.n_hdlc_buf* @n_hdlc_buf_get(%struct.TYPE_2__* %10)
  store %struct.n_hdlc_buf* %11, %struct.n_hdlc_buf** %4, align 8
  %12 = icmp ne %struct.n_hdlc_buf* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %15 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %14, i32 0, i32 2
  %16 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %4, align 8
  %17 = call i32 @n_hdlc_buf_put(i32* %15, %struct.n_hdlc_buf* %16)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %20 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %25 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %24, i32 0, i32 1
  %26 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %25, align 8
  %27 = icmp ne %struct.n_hdlc_buf* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %30 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %29, i32 0, i32 2
  %31 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %32 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %31, i32 0, i32 1
  %33 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %32, align 8
  %34 = call i32 @n_hdlc_buf_put(i32* %30, %struct.n_hdlc_buf* %33)
  %35 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %36 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %35, i32 0, i32 1
  store %struct.n_hdlc_buf* null, %struct.n_hdlc_buf** %36, align 8
  br label %37

37:                                               ; preds = %28, %18
  %38 = load %struct.n_hdlc*, %struct.n_hdlc** %3, align 8
  %39 = getelementptr inbounds %struct.n_hdlc, %struct.n_hdlc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local %struct.n_hdlc* @tty2n_hdlc(%struct.tty_struct*) #1

declare dso_local %struct.n_hdlc_buf* @n_hdlc_buf_get(%struct.TYPE_2__*) #1

declare dso_local i32 @n_hdlc_buf_put(i32*, %struct.n_hdlc_buf*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
