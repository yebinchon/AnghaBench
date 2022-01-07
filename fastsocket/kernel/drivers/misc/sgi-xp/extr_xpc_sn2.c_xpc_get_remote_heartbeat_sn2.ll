; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_get_remote_heartbeat_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_get_remote_heartbeat_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xpc_vars_sn2 = type { i64, i32*, i32 }

@xpc_remote_copy_buffer_sn2 = common dso_local global i64 0, align 8
@XPC_RP_VARS_SIZE = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"partid=%d, heartbeat=%lld, last_heartbeat=%lld, heartbeat_offline=%lld, HB_mask[0]=0x%lx\0A\00", align 1
@sn_partition_id = common dso_local global i32 0, align 4
@xpNoHeartbeat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_get_remote_heartbeat_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_get_remote_heartbeat_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca %struct.xpc_vars_sn2*, align 8
  %5 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %6 = load i64, i64* @xpc_remote_copy_buffer_sn2, align 8
  %7 = inttoptr i64 %6 to %struct.xpc_vars_sn2*
  store %struct.xpc_vars_sn2* %7, %struct.xpc_vars_sn2** %4, align 8
  %8 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %9 = call i32 @xp_pa(%struct.xpc_vars_sn2* %8)
  %10 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %11 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @XPC_RP_VARS_SIZE, align 4
  %16 = call i32 @xp_remote_memcpy(i32 %9, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @xpSuccess, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %70

22:                                               ; preds = %1
  %23 = load i32, i32* @xpc_part, align 4
  %24 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %25 = call i32 @XPC_PARTID(%struct.xpc_partition* %24)
  %26 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %27 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %30 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %33 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %36 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %28, i64 %31, i32 %34, i32 %39)
  %41 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %42 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %45 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %22
  %49 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %50 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %22
  %54 = load i32, i32* @sn_partition_id, align 4
  %55 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %56 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @xpc_hb_allowed_sn2(i32 %54, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* @xpNoHeartbeat, align 4
  store i32 %61, i32* %5, align 4
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %4, align 8
  %64 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %67 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %60
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @xp_remote_memcpy(i32, i32, i32) #1

declare dso_local i32 @xp_pa(%struct.xpc_vars_sn2*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_hb_allowed_sn2(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
