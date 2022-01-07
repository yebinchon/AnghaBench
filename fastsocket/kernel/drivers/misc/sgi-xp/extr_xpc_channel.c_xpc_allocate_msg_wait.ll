; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_allocate_msg_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_allocate_msg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i64, i32, i32 }

@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@xpInterrupted = common dso_local global i64 0, align 8
@xpTimeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_allocate_msg_wait(%struct.xpc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  %5 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %6 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @xpInterrupted, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @DBUG_ON(i32 %17)
  %19 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %20 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %24, i32 0, i32 2
  %26 = call i32 @atomic_inc(i32* %25)
  %27 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %28 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %27, i32 0, i32 3
  %29 = call i32 @interruptible_sleep_on_timeout(i32* %28, i32 1)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %31 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %30, i32 0, i32 2
  %32 = call i32 @atomic_dec(i32* %31)
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %23
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %41 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %45 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @xpInterrupted, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @DBUG_ON(i32 %49)
  br label %60

51:                                               ; preds = %23
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @xpTimeout, align 4
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load i64, i64* @xpInterrupted, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %54
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @interruptible_sleep_on_timeout(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
