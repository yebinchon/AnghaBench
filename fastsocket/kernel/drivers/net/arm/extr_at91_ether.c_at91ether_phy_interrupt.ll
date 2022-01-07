; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_phy_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_phy_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_private = type { i64, i32 }

@MII_DM9161_ID = common dso_local global i64 0, align 8
@MII_DM9161A_ID = common dso_local global i64 0, align 8
@MII_DSINTR_REG = common dso_local global i32 0, align 4
@MII_LXT971A_ID = common dso_local global i64 0, align 8
@MII_ISINTS_REG = common dso_local global i32 0, align 4
@MII_BCM5221_ID = common dso_local global i64 0, align 8
@MII_BCMINTR_REG = common dso_local global i32 0, align 4
@MII_KS8721_ID = common dso_local global i64 0, align 8
@MII_TPISTATUS = common dso_local global i32 0, align 4
@MII_T78Q21x3_ID = common dso_local global i64 0, align 8
@MII_T78Q21INT_REG = common dso_local global i32 0, align 4
@MII_DP83848_ID = common dso_local global i64 0, align 8
@MII_DPPHYSTS_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91ether_phy_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91ether_phy_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.at91_private*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.at91_private* @netdev_priv(%struct.net_device* %10)
  store %struct.at91_private* %11, %struct.at91_private** %6, align 8
  %12 = call i32 (...) @enable_mdi()
  %13 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %14 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MII_DM9161_ID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %20 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MII_DM9161A_ID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18, %2
  %25 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %26 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MII_DSINTR_REG, align 4
  %29 = call i32 @read_phy(i32 %27, i32 %28, i32* %7)
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %128

34:                                               ; preds = %24
  br label %125

35:                                               ; preds = %18
  %36 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %37 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MII_LXT971A_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %43 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MII_ISINTS_REG, align 4
  %46 = call i32 @read_phy(i32 %44, i32 %45, i32* %7)
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %128

51:                                               ; preds = %41
  br label %124

52:                                               ; preds = %35
  %53 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %54 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MII_BCM5221_ID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %60 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MII_BCMINTR_REG, align 4
  %63 = call i32 @read_phy(i32 %61, i32 %62, i32* %7)
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %128

68:                                               ; preds = %58
  br label %123

69:                                               ; preds = %52
  %70 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %71 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MII_KS8721_ID, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %77 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MII_TPISTATUS, align 4
  %80 = call i32 @read_phy(i32 %78, i32 %79, i32* %7)
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 5
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %128

85:                                               ; preds = %75
  br label %122

86:                                               ; preds = %69
  %87 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %88 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MII_T78Q21x3_ID, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %94 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MII_T78Q21INT_REG, align 4
  %97 = call i32 @read_phy(i32 %95, i32 %96, i32* %7)
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 5
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %128

102:                                              ; preds = %92
  br label %121

103:                                              ; preds = %86
  %104 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %105 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MII_DP83848_ID, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load %struct.at91_private*, %struct.at91_private** %6, align 8
  %111 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @MII_DPPHYSTS_REG, align 4
  %114 = call i32 @read_phy(i32 %112, i32 %113, i32* %7)
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 128
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  br label %128

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %85
  br label %123

123:                                              ; preds = %122, %68
  br label %124

124:                                              ; preds = %123, %51
  br label %125

125:                                              ; preds = %124, %34
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = call i32 @update_linkspeed(%struct.net_device* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %118, %101, %84, %67, %50, %33
  %129 = call i32 (...) @disable_mdi()
  %130 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %130
}

declare dso_local %struct.at91_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enable_mdi(...) #1

declare dso_local i32 @read_phy(i32, i32, i32*) #1

declare dso_local i32 @update_linkspeed(%struct.net_device*, i32) #1

declare dso_local i32 @disable_mdi(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
