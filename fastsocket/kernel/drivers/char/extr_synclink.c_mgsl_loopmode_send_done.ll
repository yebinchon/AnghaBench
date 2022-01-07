; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_loopmode_send_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_loopmode_send_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDLC_FLAG_HDLC_LOOPMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgsl_struct*)* @mgsl_loopmode_send_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgsl_loopmode_send_done(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %4 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %5 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %9 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HDLC_FLAG_HDLC_LOOPMODE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %17 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %22 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %26

23:                                               ; preds = %15
  %24 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %25 = call i32 @usc_loopmode_send_done(%struct.mgsl_struct* %24)
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %29 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usc_loopmode_send_done(%struct.mgsl_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
