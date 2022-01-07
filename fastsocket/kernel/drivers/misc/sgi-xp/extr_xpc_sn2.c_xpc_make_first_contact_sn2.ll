; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_make_first_contact_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_make_first_contact_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"xpc_activating(%d) failed to register xp_addr region\0A\00", align 1
@xpPhysAddrRegFailed = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@xpRetry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"waiting to make first contact with partition %d\0A\00", align 1
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_make_first_contact_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_make_first_contact_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca %struct.xpc_partition_sn2*, align 8
  %5 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %6 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %7 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.xpc_partition_sn2* %8, %struct.xpc_partition_sn2** %4, align 8
  %9 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %10 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = call i64 @sn_register_xp_addr_region(i32 %11, i32 %12, i32 1)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @xpc_part, align 4
  %17 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %18 = call i32 @XPC_PARTID(%struct.xpc_partition* %17)
  %19 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @xpPhysAddrRegFailed, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %1
  %26 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %27 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cnodeid_to_nasid(i32 0)
  %30 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %31 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %4, align 8
  %34 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xpc_send_activate_IRQ_sn2(i32 %28, i32 %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %66, %25
  %38 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %39 = call i32 @xpc_pull_remote_vars_part_sn2(%struct.xpc_partition* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @xpSuccess, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @xpRetry, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %69

51:                                               ; preds = %42
  %52 = load i32, i32* @xpc_part, align 4
  %53 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %54 = call i32 @XPC_PARTID(%struct.xpc_partition* %53)
  %55 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = call i32 @msleep_interruptible(i32 250)
  %57 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %58 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %64 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %2, align 4
  br label %69

66:                                               ; preds = %51
  br label %37

67:                                               ; preds = %37
  %68 = load i32, i32* @xpSuccess, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %62, %46, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @sn_register_xp_addr_region(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

declare dso_local i32 @xpc_send_activate_IRQ_sn2(i32, i32, i32, i32) #1

declare dso_local i32 @cnodeid_to_nasid(i32) #1

declare dso_local i32 @xpc_pull_remote_vars_part_sn2(%struct.xpc_partition*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
