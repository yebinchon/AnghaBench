; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.r_port* }
%struct.r_port = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"rp_break\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @rp_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp_break(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.r_port*, %struct.r_port** %9, align 8
  store %struct.r_port* %10, %struct.r_port** %6, align 8
  %11 = load %struct.r_port*, %struct.r_port** %6, align 8
  %12 = call i64 @rocket_paranoia_check(%struct.r_port* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.r_port*, %struct.r_port** %6, align 8
  %19 = getelementptr inbounds %struct.r_port, %struct.r_port* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.r_port*, %struct.r_port** %6, align 8
  %26 = getelementptr inbounds %struct.r_port, %struct.r_port* %25, i32 0, i32 1
  %27 = call i32 @sSendBreak(i32* %26)
  br label %32

28:                                               ; preds = %17
  %29 = load %struct.r_port*, %struct.r_port** %6, align 8
  %30 = getelementptr inbounds %struct.r_port, %struct.r_port* %29, i32 0, i32 1
  %31 = call i32 @sClrBreak(i32* %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.r_port*, %struct.r_port** %6, align 8
  %34 = getelementptr inbounds %struct.r_port, %struct.r_port* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @rocket_paranoia_check(%struct.r_port*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sSendBreak(i32*) #1

declare dso_local i32 @sClrBreak(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
