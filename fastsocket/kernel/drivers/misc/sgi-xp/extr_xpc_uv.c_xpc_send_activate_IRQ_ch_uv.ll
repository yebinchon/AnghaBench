; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_activate_IRQ_ch_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_activate_IRQ_ch_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32 }
%struct.xpc_channel = type { i64, i32 }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i64*, i8*, i64, i32)* @xpc_send_activate_IRQ_ch_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_send_activate_IRQ_ch_uv(%struct.xpc_channel* %0, i64* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.xpc_channel*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xpc_partition*, align 8
  %12 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %14 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %15 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %13, i64 %16
  store %struct.xpc_partition* %17, %struct.xpc_partition** %11, align 8
  %18 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @xpc_send_activate_IRQ_uv(%struct.xpc_partition* %18, i8* %19, i64 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @xpSuccess, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %5
  %30 = load i64*, i64** %7, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %34 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i32 0, i32 1
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %36)
  br label %38

38:                                               ; preds = %32, %29
  %39 = load %struct.xpc_partition*, %struct.xpc_partition** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %39, i32 %40)
  %42 = load i64*, i64** %7, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %46 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %45, i32 0, i32 1
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %46, i64 %48)
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %5
  ret void
}

declare dso_local i32 @xpc_send_activate_IRQ_uv(%struct.xpc_partition*, i8*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
