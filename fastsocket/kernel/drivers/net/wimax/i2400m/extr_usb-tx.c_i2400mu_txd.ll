; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-tx.c_i2400mu_txd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-tx.c_i2400mu_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, %struct.TYPE_2__*, %struct.i2400m }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400m = type { i32 }
%struct.i2400m_msg_hdr = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400mu %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"TX: waiting for messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"TX: submitting %zu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"(i2400mu %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i2400mu_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400mu_txd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400mu*, align 8
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.i2400m_msg_hdr*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.i2400mu*
  store %struct.i2400mu* %10, %struct.i2400mu** %4, align 8
  %11 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %12 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %11, i32 0, i32 2
  store %struct.i2400m* %12, %struct.i2400m** %5, align 8
  %13 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %14 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %19 = call i32 @d_fnstart(i32 4, %struct.device* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %18)
  br label %20

20:                                               ; preds = %1, %60
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.i2400m_msg_hdr* null, %struct.i2400m_msg_hdr** %7, align 8
  %23 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %24 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 (...) @kthread_should_stop()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %30 = call %struct.i2400m_msg_hdr* @i2400m_tx_msg_get(%struct.i2400m* %29, i64* %8)
  store %struct.i2400m_msg_hdr* %30, %struct.i2400m_msg_hdr** %7, align 8
  %31 = icmp ne %struct.i2400m_msg_hdr* %30, null
  br label %32

32:                                               ; preds = %28, %20
  %33 = phi i1 [ true, %20 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @wait_event_interruptible(i32 %25, i32 %34)
  %36 = call i64 (...) @kthread_should_stop()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %61

39:                                               ; preds = %32
  %40 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %7, align 8
  %41 = icmp eq %struct.i2400m_msg_hdr* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @d_dump(i32 5, %struct.device* %47, %struct.i2400m_msg_hdr* %48, i64 %49)
  %51 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %52 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @i2400mu_tx(%struct.i2400mu* %51, %struct.i2400m_msg_hdr* %52, i64 %53)
  %55 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %56 = call i32 @i2400m_tx_msg_sent(%struct.i2400m* %55)
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %39
  br label %61

60:                                               ; preds = %39
  br label %20

61:                                               ; preds = %59, %38
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @d_fnend(i32 4, %struct.device* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.i2400mu* %63, i32 %64)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400mu*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local %struct.i2400m_msg_hdr* @i2400m_tx_msg_get(%struct.i2400m*, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, %struct.i2400m_msg_hdr*, i64) #1

declare dso_local i32 @i2400mu_tx(%struct.i2400mu*, %struct.i2400m_msg_hdr*, i64) #1

declare dso_local i32 @i2400m_tx_msg_sent(%struct.i2400m*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400mu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
