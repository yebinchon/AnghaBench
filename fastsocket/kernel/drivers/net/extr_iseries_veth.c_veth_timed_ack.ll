; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_timed_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_timed_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @veth_timed_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_timed_ack(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.veth_lpar_connection*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.veth_lpar_connection*
  store %struct.veth_lpar_connection* %6, %struct.veth_lpar_connection** %3, align 8
  %7 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %8 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %12 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %17 = call i32 @veth_flush_acks(%struct.veth_lpar_connection* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %21 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %25 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %28 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %27, i32 0, i32 2
  %29 = call i32 @add_timer(%struct.TYPE_2__* %28)
  %30 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %31 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %30, i32 0, i32 1
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @veth_flush_acks(%struct.veth_lpar_connection*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
