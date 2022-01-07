; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_take_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_take_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i32, i32, i32, i32, i32 }
%struct.veth_lpevent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.HvLpEvent = type { i32 }

@HvLpEvent_Type_VirtualLan = common dso_local global i32 0, align 4
@VETH_STATE_GOTCAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Received a second capabilities from LPAR %d.\0A\00", align 1
@HvLpEvent_Rc_BufferNotAvailable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpar_connection*, %struct.veth_lpevent*)* @veth_take_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_take_cap(%struct.veth_lpar_connection* %0, %struct.veth_lpevent* %1) #0 {
  %3 = alloca %struct.veth_lpar_connection*, align 8
  %4 = alloca %struct.veth_lpevent*, align 8
  %5 = alloca i64, align 8
  store %struct.veth_lpar_connection* %0, %struct.veth_lpar_connection** %3, align 8
  store %struct.veth_lpevent* %1, %struct.veth_lpevent** %4, align 8
  %6 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %7 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %11 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HvLpEvent_Type_VirtualLan, align 4
  %14 = call i32 @HvCallEvent_getTargetLpInstanceId(i32 %12, i32 %13)
  %15 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %16 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %18 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VETH_STATE_GOTCAPS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %25 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @veth_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @HvLpEvent_Rc_BufferNotAvailable, align 4
  %29 = load %struct.veth_lpevent*, %struct.veth_lpevent** %4, align 8
  %30 = getelementptr inbounds %struct.veth_lpevent, %struct.veth_lpevent* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.veth_lpevent*, %struct.veth_lpevent** %4, align 8
  %33 = bitcast %struct.veth_lpevent* %32 to %struct.HvLpEvent*
  %34 = call i32 @HvCallEvent_ackLpEvent(%struct.HvLpEvent* %33)
  br label %47

35:                                               ; preds = %2
  %36 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %37 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %36, i32 0, i32 2
  %38 = load %struct.veth_lpevent*, %struct.veth_lpevent** %4, align 8
  %39 = call i32 @memcpy(i32* %37, %struct.veth_lpevent* %38, i32 4)
  %40 = load i32, i32* @VETH_STATE_GOTCAPS, align 4
  %41 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %42 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %46 = call i32 @veth_kick_statemachine(%struct.veth_lpar_connection* %45)
  br label %47

47:                                               ; preds = %35, %23
  %48 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %49 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %48, i32 0, i32 1
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HvCallEvent_getTargetLpInstanceId(i32, i32) #1

declare dso_local i32 @veth_error(i8*, i32) #1

declare dso_local i32 @HvCallEvent_ackLpEvent(%struct.HvLpEvent*) #1

declare dso_local i32 @memcpy(i32*, %struct.veth_lpevent*, i32) #1

declare dso_local i32 @veth_kick_statemachine(%struct.veth_lpar_connection*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
