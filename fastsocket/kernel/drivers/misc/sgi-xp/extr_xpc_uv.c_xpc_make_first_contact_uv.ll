; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_make_first_contact_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_make_first_contact_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xpc_activate_mq_msg_uv = type { i32 }

@XPC_ACTIVATE_MQ_MSG_SYNC_ACT_STATE_UV = common dso_local global i32 0, align 4
@XPC_P_AS_ACTIVATING = common dso_local global i64 0, align 8
@XPC_P_AS_ACTIVE = common dso_local global i64 0, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"waiting to make first contact with partition %d\0A\00", align 1
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_make_first_contact_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_make_first_contact_uv(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca %struct.xpc_activate_mq_msg_uv, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %5 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %6 = load i32, i32* @XPC_ACTIVATE_MQ_MSG_SYNC_ACT_STATE_UV, align 4
  %7 = call i32 @xpc_send_activate_IRQ_part_uv(%struct.xpc_partition* %5, %struct.xpc_activate_mq_msg_uv* %4, i32 4, i32 %6)
  br label %8

8:                                                ; preds = %42, %1
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %10 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XPC_P_AS_ACTIVATING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %18 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XPC_P_AS_ACTIVE, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %16, %8
  %25 = phi i1 [ true, %8 ], [ %23, %16 ]
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* @xpc_part, align 4
  %29 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %30 = call i32 @XPC_PARTID(%struct.xpc_partition* %29)
  %31 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @msleep_interruptible(i32 250)
  %33 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %40 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %27
  br label %8

43:                                               ; preds = %24
  %44 = load i32, i32* @xpSuccess, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @xpc_send_activate_IRQ_part_uv(%struct.xpc_partition*, %struct.xpc_activate_mq_msg_uv*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
