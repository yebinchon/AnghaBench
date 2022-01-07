; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i64, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ethtool_cmd = type { i64, i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"right now = %ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"NIC Link is Up %u Mbps %s Duplex\0A\00", align 1
@SPEED_100 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@irq_sw_gen = common dso_local global i32 0, align 4
@mac_82557_D100_C = common dso_local global i64 0, align 8
@ich = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@ich_10h_workaround = common dso_local global i32 0, align 4
@E100_WATCHDOG_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @e100_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_watchdog(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.ethtool_cmd, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.nic*
  store %struct.nic* %7, %struct.nic** %3, align 8
  %8 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %10 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %10, i32* %9, align 8
  %11 = load %struct.nic*, %struct.nic** %3, align 8
  %12 = load i32, i32* @timer, align 4
  %13 = load i32, i32* @KERN_DEBUG, align 4
  %14 = load %struct.nic*, %struct.nic** %3, align 8
  %15 = getelementptr inbounds %struct.nic, %struct.nic* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = call i32 @netif_printk(%struct.nic* %11, i32 %12, i32 %13, i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.nic*, %struct.nic** %3, align 8
  %20 = getelementptr inbounds %struct.nic, %struct.nic* %19, i32 0, i32 6
  %21 = call i32 @mii_ethtool_gset(i32* %20, %struct.ethtool_cmd* %4)
  %22 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %4)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.nic*, %struct.nic** %3, align 8
  %24 = getelementptr inbounds %struct.nic, %struct.nic* %23, i32 0, i32 6
  %25 = call i64 @mii_link_ok(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %1
  %28 = load %struct.nic*, %struct.nic** %3, align 8
  %29 = getelementptr inbounds %struct.nic, %struct.nic* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @netif_carrier_ok(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %27
  %34 = load %struct.nic*, %struct.nic** %3, align 8
  %35 = getelementptr inbounds %struct.nic, %struct.nic* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @SPEED_100, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 100, i32 10
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DUPLEX_FULL, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %48 = call i32 (i32, i8*, ...) @netdev_info(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %47)
  br label %66

49:                                               ; preds = %27, %1
  %50 = load %struct.nic*, %struct.nic** %3, align 8
  %51 = getelementptr inbounds %struct.nic, %struct.nic* %50, i32 0, i32 6
  %52 = call i64 @mii_link_ok(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load %struct.nic*, %struct.nic** %3, align 8
  %56 = getelementptr inbounds %struct.nic, %struct.nic* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @netif_carrier_ok(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.nic*, %struct.nic** %3, align 8
  %62 = getelementptr inbounds %struct.nic, %struct.nic* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @netdev_info(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %54, %49
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.nic*, %struct.nic** %3, align 8
  %68 = getelementptr inbounds %struct.nic, %struct.nic* %67, i32 0, i32 6
  %69 = call i32 @mii_check_link(i32* %68)
  %70 = load %struct.nic*, %struct.nic** %3, align 8
  %71 = getelementptr inbounds %struct.nic, %struct.nic* %70, i32 0, i32 4
  %72 = call i32 @spin_lock_irq(i32* %71)
  %73 = load %struct.nic*, %struct.nic** %3, align 8
  %74 = getelementptr inbounds %struct.nic, %struct.nic* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @ioread8(i32* %77)
  %79 = load i32, i32* @irq_sw_gen, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.nic*, %struct.nic** %3, align 8
  %82 = getelementptr inbounds %struct.nic, %struct.nic* %81, i32 0, i32 5
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @iowrite8(i32 %80, i32* %85)
  %87 = load %struct.nic*, %struct.nic** %3, align 8
  %88 = call i32 @e100_write_flush(%struct.nic* %87)
  %89 = load %struct.nic*, %struct.nic** %3, align 8
  %90 = getelementptr inbounds %struct.nic, %struct.nic* %89, i32 0, i32 4
  %91 = call i32 @spin_unlock_irq(i32* %90)
  %92 = load %struct.nic*, %struct.nic** %3, align 8
  %93 = call i32 @e100_update_stats(%struct.nic* %92)
  %94 = load %struct.nic*, %struct.nic** %3, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @e100_adjust_adaptive_ifs(%struct.nic* %94, i64 %95, i64 %97)
  %99 = load %struct.nic*, %struct.nic** %3, align 8
  %100 = getelementptr inbounds %struct.nic, %struct.nic* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @mac_82557_D100_C, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %66
  %105 = load %struct.nic*, %struct.nic** %3, align 8
  %106 = getelementptr inbounds %struct.nic, %struct.nic* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @e100_set_multicast_list(i32 %107)
  br label %109

109:                                              ; preds = %104, %66
  %110 = load %struct.nic*, %struct.nic** %3, align 8
  %111 = getelementptr inbounds %struct.nic, %struct.nic* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ich, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @SPEED_10, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DUPLEX_HALF, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* @ich_10h_workaround, align 4
  %127 = load %struct.nic*, %struct.nic** %3, align 8
  %128 = getelementptr inbounds %struct.nic, %struct.nic* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %138

131:                                              ; preds = %120, %116, %109
  %132 = load i32, i32* @ich_10h_workaround, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.nic*, %struct.nic** %3, align 8
  %135 = getelementptr inbounds %struct.nic, %struct.nic* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %131, %125
  %139 = load %struct.nic*, %struct.nic** %3, align 8
  %140 = getelementptr inbounds %struct.nic, %struct.nic* %139, i32 0, i32 2
  %141 = load i64, i64* @jiffies, align 8
  %142 = load i64, i64* @E100_WATCHDOG_PERIOD, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @round_jiffies(i64 %143)
  %145 = call i32 @mod_timer(i32* %140, i32 %144)
  ret void
}

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i64 @mii_link_ok(i32*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @mii_check_link(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @e100_write_flush(%struct.nic*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @e100_update_stats(%struct.nic*) #1

declare dso_local i32 @e100_adjust_adaptive_ifs(%struct.nic*, i64, i64) #1

declare dso_local i32 @e100_set_multicast_list(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
