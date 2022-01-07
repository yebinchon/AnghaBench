; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m_msg_hdr = type { i32 }
%struct.i2400m = type { i32, %struct.i2400m_msg_hdr* }
%struct.device = type { i32 }

@I2400M_TX_PLD_SIZE = common dso_local global i32 0, align 4
@TAIL_FULL = common dso_local global %struct.i2400m_msg_hdr* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"new TX message: tail full, trying head\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"new TX message: %p @%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*)* @i2400m_tx_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_tx_new(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2400m_msg_hdr*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %5 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %6 = call %struct.device* @i2400m_dev(%struct.i2400m* %5)
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %8 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %7, i32 0, i32 1
  %9 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %10 = icmp ne %struct.i2400m_msg_hdr* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %15 = load i32, i32* @I2400M_TX_PLD_SIZE, align 4
  %16 = call %struct.i2400m_msg_hdr* @i2400m_tx_fifo_push(%struct.i2400m* %14, i32 %15, i32 0)
  store %struct.i2400m_msg_hdr* %16, %struct.i2400m_msg_hdr** %4, align 8
  %17 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %18 = icmp eq %struct.i2400m_msg_hdr* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %37

20:                                               ; preds = %13
  %21 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %22 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** @TAIL_FULL, align 8
  %23 = icmp eq %struct.i2400m_msg_hdr* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %26 = call i32 @i2400m_tx_skip_tail(%struct.i2400m* %25)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %13

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %32 = load i32, i32* @I2400M_TX_PLD_SIZE, align 4
  %33 = call i32 @memset(%struct.i2400m_msg_hdr* %31, i32 0, i32 %32)
  %34 = load i32, i32* @I2400M_TX_PLD_SIZE, align 4
  %35 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %36 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %19
  %38 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %39 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %40 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %39, i32 0, i32 1
  store %struct.i2400m_msg_hdr* %38, %struct.i2400m_msg_hdr** %40, align 8
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %43 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %44 = bitcast %struct.i2400m_msg_hdr* %43 to i8*
  %45 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %46 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr i8, i8* %44, i64 %49
  %51 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m_msg_hdr* %42, i8* %50)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.i2400m_msg_hdr* @i2400m_tx_fifo_push(%struct.i2400m*, i32, i32) #1

declare dso_local i32 @i2400m_tx_skip_tail(%struct.i2400m*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @memset(%struct.i2400m_msg_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
