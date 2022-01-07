; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_disable_phyirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_disable_phyirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_private = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MII_DM9161_ID = common dso_local global i64 0, align 8
@MII_DM9161A_ID = common dso_local global i64 0, align 8
@MII_DSINTR_REG = common dso_local global i32 0, align 4
@MII_LXT971A_ID = common dso_local global i64 0, align 8
@MII_ISINTE_REG = common dso_local global i32 0, align 4
@MII_BCM5221_ID = common dso_local global i64 0, align 8
@MII_BCMINTR_REG = common dso_local global i32 0, align 4
@MII_KS8721_ID = common dso_local global i64 0, align 8
@MII_TPISTATUS = common dso_local global i32 0, align 4
@MII_T78Q21x3_ID = common dso_local global i64 0, align 8
@MII_T78Q21INT_REG = common dso_local global i32 0, align 4
@MII_DP83848_ID = common dso_local global i64 0, align 8
@MII_DPMICR_REG = common dso_local global i32 0, align 4
@MII_DPMISR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @disable_phyirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_phyirq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.at91_private* @netdev_priv(%struct.net_device* %6)
  store %struct.at91_private* %7, %struct.at91_private** %3, align 8
  %8 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %9 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %16 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %15, i32 0, i32 3
  %17 = call i32 @del_timer_sync(i32* %16)
  br label %170

18:                                               ; preds = %1
  %19 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %20 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = call i32 (...) @enable_mdi()
  %23 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %24 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MII_DM9161_ID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %30 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MII_DM9161A_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28, %18
  %35 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %36 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MII_DSINTR_REG, align 4
  %39 = call i32 @read_phy(i32 %37, i32 %38, i32* %4)
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, 3840
  store i32 %41, i32* %4, align 4
  %42 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %43 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MII_DSINTR_REG, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @write_phy(i32 %44, i32 %45, i32 %46)
  br label %162

48:                                               ; preds = %28
  %49 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %50 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MII_LXT971A_ID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %56 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MII_ISINTE_REG, align 4
  %59 = call i32 @read_phy(i32 %57, i32 %58, i32* %4)
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, -243
  store i32 %61, i32* %4, align 4
  %62 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %63 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MII_ISINTE_REG, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @write_phy(i32 %64, i32 %65, i32 %66)
  br label %161

68:                                               ; preds = %48
  %69 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %70 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MII_BCM5221_ID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %76 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MII_BCMINTR_REG, align 4
  %79 = call i32 @read_phy(i32 %77, i32 %78, i32* %4)
  store i32 -16385, i32* %4, align 4
  %80 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %81 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MII_BCMINTR_REG, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @write_phy(i32 %82, i32 %83, i32 %84)
  br label %160

86:                                               ; preds = %68
  %87 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %88 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MII_KS8721_ID, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %94 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MII_TPISTATUS, align 4
  %97 = call i32 @read_phy(i32 %95, i32 %96, i32* %4)
  store i32 -1281, i32* %4, align 4
  %98 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %99 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MII_TPISTATUS, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @write_phy(i32 %100, i32 %101, i32 %102)
  br label %159

104:                                              ; preds = %86
  %105 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %106 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MII_T78Q21x3_ID, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %104
  %111 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %112 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MII_T78Q21INT_REG, align 4
  %115 = call i32 @read_phy(i32 %113, i32 %114, i32* %4)
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, -1281
  store i32 %117, i32* %4, align 4
  %118 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %119 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MII_T78Q21INT_REG, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @write_phy(i32 %120, i32 %121, i32 %122)
  br label %158

124:                                              ; preds = %104
  %125 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %126 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MII_DP83848_ID, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %124
  %131 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %132 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MII_DPMICR_REG, align 4
  %135 = call i32 @read_phy(i32 %133, i32 %134, i32* %4)
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, -4
  store i32 %137, i32* %4, align 4
  %138 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %139 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MII_DPMICR_REG, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @write_phy(i32 %140, i32 %141, i32 %142)
  %144 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %145 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MII_DPMISR_REG, align 4
  %148 = call i32 @read_phy(i32 %146, i32 %147, i32* %4)
  %149 = load i32, i32* %4, align 4
  %150 = and i32 %149, -61
  store i32 %150, i32* %4, align 4
  %151 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %152 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MII_DPMISR_REG, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @write_phy(i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %130, %124
  br label %158

158:                                              ; preds = %157, %110
  br label %159

159:                                              ; preds = %158, %92
  br label %160

160:                                              ; preds = %159, %74
  br label %161

161:                                              ; preds = %160, %54
  br label %162

162:                                              ; preds = %161, %34
  %163 = call i32 (...) @disable_mdi()
  %164 = load %struct.at91_private*, %struct.at91_private** %3, align 8
  %165 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %164, i32 0, i32 1
  %166 = call i32 @spin_unlock_irq(i32* %165)
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = call i32 @free_irq(i32 %167, %struct.net_device* %168)
  br label %170

170:                                              ; preds = %162, %14
  ret void
}

declare dso_local %struct.at91_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @enable_mdi(...) #1

declare dso_local i32 @read_phy(i32, i32, i32*) #1

declare dso_local i32 @write_phy(i32, i32, i32) #1

declare dso_local i32 @disable_mdi(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
