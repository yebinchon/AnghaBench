; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_do_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_do_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i64 }
%struct.TYPE_2__ = type { i32 (...)* }

@xpc_exiting = common dso_local global i32 0, align 4
@xpc_activate_IRQ_wq = common dso_local global i32 0, align 4
@xpc_discovery_exited = common dso_local global i32 0, align 4
@xpc_hb_checker_exited = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XPC_DEACTIVATE_PRINTMSG_INTERVAL = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@xpc_disengage_timedout = common dso_local global i64 0, align 8
@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"waiting for remote partitions to deactivate, timeout in %ld seconds\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"waiting for local partition to deactivate\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"all partitions have deactivated\0A\00", align 1
@xpUnloading = common dso_local global i32 0, align 4
@xpc_die_notifier = common dso_local global i32 0, align 4
@xpc_reboot_notifier = common dso_local global i32 0, align 4
@xpc_sysctl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xpc_do_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_do_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xpc_partition*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @xpc_exiting, align 4
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @DBUG_ON(i32 %11)
  store i32 1, i32* @xpc_exiting, align 4
  %13 = call i32 @wake_up_interruptible(i32* @xpc_activate_IRQ_wq)
  %14 = call i32 @wait_for_completion(i32* @xpc_discovery_exited)
  %15 = call i32 @wait_for_completion(i32* @xpc_hb_checker_exited)
  %16 = call i32 @msleep_interruptible(i32 300)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @XPC_DEACTIVATE_PRINTMSG_INTERVAL, align 8
  %19 = load i64, i64* @HZ, align 8
  %20 = mul i64 %18, %19
  %21 = add i64 %17, %20
  store i64 %21, i64* %7, align 8
  store i64 0, i64* @xpc_disengage_timedout, align 8
  br label %22

22:                                               ; preds = %105, %1
  store i32 0, i32* %4, align 4
  store i16 0, i16* %3, align 2
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i16, i16* %3, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* @xp_max_npartitions, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %31 = load i16, i16* %3, align 2
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %30, i64 %32
  store %struct.xpc_partition* %33, %struct.xpc_partition** %6, align 8
  %34 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %35 = call i64 @xpc_partition_disengaged(%struct.xpc_partition* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %39 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %60

44:                                               ; preds = %37, %29
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %47, i32 %48)
  %50 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %51 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %57 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %55, %44
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i16, i16* %3, align 2
  %62 = add i16 %61, 1
  store i16 %62, i16* %3, align 2
  br label %23

63:                                               ; preds = %23
  %64 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %65 = call i32 (...) %64()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @time_is_before_jiffies(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i32, i32* @xpc_part, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @jiffies, align 8
  %75 = sub i64 %73, %74
  %76 = load i64, i64* @HZ, align 8
  %77 = udiv i64 %75, %76
  %78 = call i32 (i32, i8*, ...) @dev_info(i32 %72, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* @jiffies, align 8
  %80 = load i64, i64* @XPC_DEACTIVATE_PRINTMSG_INTERVAL, align 8
  %81 = load i64, i64* @HZ, align 8
  %82 = mul i64 %80, %81
  %83 = add i64 %79, %82
  store i64 %83, i64* %7, align 8
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %71, %67
  br label %103

85:                                               ; preds = %63
  %86 = load i32, i32* %4, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @xpc_part, align 4
  %93 = call i32 (i32, i8*, ...) @dev_info(i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %102

95:                                               ; preds = %85
  %96 = load i64, i64* @xpc_disengage_timedout, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @xpc_part, align 4
  %100 = call i32 (i32, i8*, ...) @dev_info(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  br label %106

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %84
  %104 = call i32 @msleep_interruptible(i32 300)
  br label %105

105:                                              ; preds = %103
  br i1 true, label %22, label %106

106:                                              ; preds = %105, %101
  %107 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %108 = call i32 (...) %107()
  %109 = call i32 @DBUG_ON(i32 %108)
  %110 = call i32 (...) @xpc_teardown_rsvd_page()
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @xpUnloading, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = call i32 @unregister_die_notifier(i32* @xpc_die_notifier)
  %116 = call i32 @unregister_reboot_notifier(i32* @xpc_reboot_notifier)
  br label %117

117:                                              ; preds = %114, %106
  %118 = call i32 (...) @xpc_clear_interface()
  %119 = load i64, i64* @xpc_sysctl, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i64, i64* @xpc_sysctl, align 8
  %123 = call i32 @unregister_sysctl_table(i64 %122)
  br label %124

124:                                              ; preds = %121, %117
  %125 = call i32 (...) @xpc_teardown_partitions()
  %126 = call i64 (...) @is_shub()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 (...) @xpc_exit_sn2()
  br label %136

130:                                              ; preds = %124
  %131 = call i64 (...) @is_uv()
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (...) @xpc_exit_uv()
  br label %135

135:                                              ; preds = %133, %130
  br label %136

136:                                              ; preds = %135, %128
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @xpc_partition_disengaged(%struct.xpc_partition*) #1

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @xpc_teardown_rsvd_page(...) #1

declare dso_local i32 @unregister_die_notifier(i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @xpc_clear_interface(...) #1

declare dso_local i32 @unregister_sysctl_table(i64) #1

declare dso_local i32 @xpc_teardown_partitions(...) #1

declare dso_local i64 @is_shub(...) #1

declare dso_local i32 @xpc_exit_sn2(...) #1

declare dso_local i64 @is_uv(...) #1

declare dso_local i32 @xpc_exit_uv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
