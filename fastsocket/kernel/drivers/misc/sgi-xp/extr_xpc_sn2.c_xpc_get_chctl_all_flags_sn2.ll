; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_get_chctl_all_flags_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_get_chctl_all_flags_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, i32, %union.xpc_channel_ctl_flags, %struct.TYPE_2__ }
%union.xpc_channel_ctl_flags = type { i64 }
%struct.TYPE_2__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i32, i32, i32 }

@XPC_OPENCLOSE_ARGS_SIZE = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"failed to pull openclose args from partition %d, ret=%d\0A\00", align 1
@XPC_GP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to pull GPs from partition %d, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xpc_partition*)* @xpc_get_chctl_all_flags_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xpc_get_chctl_all_flags_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca %struct.xpc_partition_sn2*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.xpc_channel_ctl_flags, align 8
  %6 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %7 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %8 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.xpc_partition_sn2* %9, %struct.xpc_partition_sn2** %3, align 8
  %10 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %11 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %15 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %14, i32 0, i32 2
  %16 = bitcast %union.xpc_channel_ctl_flags* %5 to i8*
  %17 = bitcast %union.xpc_channel_ctl_flags* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = bitcast %union.xpc_channel_ctl_flags* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i32 0, i32 2
  %24 = bitcast %union.xpc_channel_ctl_flags* %23 to i64*
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %27 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %26, i32 0, i32 1
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = call i64 @xpc_any_openclose_chctl_flags_set(%union.xpc_channel_ctl_flags* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %34 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %35 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %38 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XPC_OPENCLOSE_ARGS_SIZE, align 4
  %41 = call i32 @xpc_pull_remote_cachelines_sn2(%struct.xpc_partition* %33, i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @xpSuccess, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %32
  %46 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %46, i32 %47)
  %49 = load i32, i32* @xpc_chan, align 4
  %50 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %51 = call i32 @XPC_PARTID(%struct.xpc_partition* %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = bitcast %union.xpc_channel_ctl_flags* %5 to i64*
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %32
  br label %56

56:                                               ; preds = %55, %25
  %57 = call i64 @xpc_any_msg_chctl_flags_set(%union.xpc_channel_ctl_flags* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %61 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %62 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %3, align 8
  %65 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @XPC_GP_SIZE, align 4
  %68 = call i32 @xpc_pull_remote_cachelines_sn2(%struct.xpc_partition* %60, i32 %63, i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @xpSuccess, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %59
  %73 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %73, i32 %74)
  %76 = load i32, i32* @xpc_chan, align 4
  %77 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %78 = call i32 @XPC_PARTID(%struct.xpc_partition* %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = bitcast %union.xpc_channel_ctl_flags* %5 to i64*
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %72, %59
  br label %83

83:                                               ; preds = %82, %56
  %84 = bitcast %union.xpc_channel_ctl_flags* %5 to i64*
  %85 = load i64, i64* %84, align 8
  ret i64 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @xpc_any_openclose_chctl_flags_set(%union.xpc_channel_ctl_flags*) #1

declare dso_local i32 @xpc_pull_remote_cachelines_sn2(%struct.xpc_partition*, i32, i32, i32) #1

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i64 @xpc_any_msg_chctl_flags_set(%union.xpc_channel_ctl_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
