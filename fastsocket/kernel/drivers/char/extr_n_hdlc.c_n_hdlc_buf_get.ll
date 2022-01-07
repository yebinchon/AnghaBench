; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_hdlc.c_n_hdlc_buf_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_hdlc.c_n_hdlc_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n_hdlc_buf = type { %struct.n_hdlc_buf* }
%struct.n_hdlc_buf_list = type { i32, i32*, %struct.n_hdlc_buf*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.n_hdlc_buf* (%struct.n_hdlc_buf_list*)* @n_hdlc_buf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.n_hdlc_buf* @n_hdlc_buf_get(%struct.n_hdlc_buf_list* %0) #0 {
  %2 = alloca %struct.n_hdlc_buf_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.n_hdlc_buf*, align 8
  store %struct.n_hdlc_buf_list* %0, %struct.n_hdlc_buf_list** %2, align 8
  %5 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %2, align 8
  %6 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %2, align 8
  %10 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %9, i32 0, i32 2
  %11 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %10, align 8
  store %struct.n_hdlc_buf* %11, %struct.n_hdlc_buf** %4, align 8
  %12 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %4, align 8
  %13 = icmp ne %struct.n_hdlc_buf* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %4, align 8
  %16 = getelementptr inbounds %struct.n_hdlc_buf, %struct.n_hdlc_buf* %15, i32 0, i32 0
  %17 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %16, align 8
  %18 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %2, align 8
  %19 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %18, i32 0, i32 2
  store %struct.n_hdlc_buf* %17, %struct.n_hdlc_buf** %19, align 8
  %20 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %2, align 8
  %21 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %2, align 8
  %26 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %25, i32 0, i32 2
  %27 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %26, align 8
  %28 = icmp ne %struct.n_hdlc_buf* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %2, align 8
  %31 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.n_hdlc_buf_list*, %struct.n_hdlc_buf_list** %2, align 8
  %34 = getelementptr inbounds %struct.n_hdlc_buf_list, %struct.n_hdlc_buf_list* %33, i32 0, i32 0
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.n_hdlc_buf*, %struct.n_hdlc_buf** %4, align 8
  ret %struct.n_hdlc_buf* %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
