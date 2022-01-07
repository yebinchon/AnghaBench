; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_throttle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, i32, %struct.slgt_info* }
%struct.TYPE_2__ = type { i32 }
%struct.slgt_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"throttle\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s throttle\0A\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  store %struct.slgt_info* %7, %struct.slgt_info** %3, align 8
  %8 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @sanity_check(%struct.slgt_info* %8, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DBGINFO(i8* %20)
  %22 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %23 = call i64 @I_IXOFF(%struct.tty_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = call i32 @STOP_CHAR(%struct.tty_struct* %27)
  %29 = call i32 @send_xchar(%struct.tty_struct* %26, i32 %28)
  br label %30

30:                                               ; preds = %25, %15
  %31 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CRTSCTS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %41 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* @SerialSignal_RTS, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %47 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %51 = call i32 @set_signals(%struct.slgt_info* %50)
  %52 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %53 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %52, i32 0, i32 0
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %14, %39, %30
  ret void
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @send_xchar(%struct.tty_struct*, i32) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
