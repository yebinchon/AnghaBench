; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_management_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_management_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atmel_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 (i64)* }

@MAX_AUTHENTICATION_RETRIES = common dso_local global i32 0, align 4
@STATION_STATE_MGMT_ERROR = common dso_local global i32 0, align 4
@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MGMT_JIFFIES = common dso_local global i64 0, align 8
@WLAN_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@MAX_ASSOCIATION_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @atmel_management_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_management_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atmel_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.net_device*
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %9)
  store %struct.atmel_private* %10, %struct.atmel_private** %4, align 8
  %11 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %12 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %17 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %16, i32 0, i32 11
  %18 = load i32 (i64)*, i32 (i64)** %17, align 8
  %19 = icmp ne i32 (i64)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %22 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %21, i32 0, i32 11
  %23 = load i32 (i64)*, i32 (i64)** %22, align 8
  %24 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %25 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = call i32 %23(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %150

30:                                               ; preds = %20, %15, %1
  %31 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %31, i32 0, i32 2
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %144 [
    i32 129, label %38
    i32 130, label %84
    i32 128, label %114
  ]

38:                                               ; preds = %30
  %39 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %40 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_AUTHENTICATION_RETRIES, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %46 = load i32, i32* @STATION_STATE_MGMT_ERROR, align 4
  %47 = call i32 @atmel_enter_state(%struct.atmel_private* %45, i32 %46)
  %48 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %48, i32 0, i32 5
  store i32 0, i32* %49, align 4
  %50 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %51 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %50, i32 0, i32 9
  store i32 0, i32* %51, align 4
  %52 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %53 = call i32 @restart_search(%struct.atmel_private* %52)
  br label %83

54:                                               ; preds = %38
  %55 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %57 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %61 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %63 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %62, i32 0, i32 3
  %64 = load i64, i64* @jiffies, align 8
  %65 = load i64, i64* @MGMT_JIFFIES, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @mod_timer(i32* %63, i64 %66)
  %68 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %69 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %54
  %73 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %74 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @WLAN_AUTH_SHARED_KEY, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %72, %54
  %80 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @send_authentication_request(%struct.atmel_private* %80, i32 %81, i32* null, i32 0)
  br label %83

83:                                               ; preds = %79, %44
  br label %145

84:                                               ; preds = %30
  %85 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %86 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MAX_ASSOCIATION_RETRIES, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %92 = load i32, i32* @STATION_STATE_MGMT_ERROR, align 4
  %93 = call i32 @atmel_enter_state(%struct.atmel_private* %91, i32 %92)
  %94 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %95 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %94, i32 0, i32 5
  store i32 0, i32* %95, align 4
  %96 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %97 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %96, i32 0, i32 6
  store i32 0, i32* %97, align 8
  %98 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %99 = call i32 @restart_search(%struct.atmel_private* %98)
  br label %113

100:                                              ; preds = %84
  %101 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %102 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %106 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %105, i32 0, i32 3
  %107 = load i64, i64* @jiffies, align 8
  %108 = load i64, i64* @MGMT_JIFFIES, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @mod_timer(i32* %106, i64 %109)
  %111 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %112 = call i32 @send_association_request(%struct.atmel_private* %111, i32 0)
  br label %113

113:                                              ; preds = %100, %90
  br label %145

114:                                              ; preds = %30
  %115 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %116 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MAX_ASSOCIATION_RETRIES, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %122 = load i32, i32* @STATION_STATE_MGMT_ERROR, align 4
  %123 = call i32 @atmel_enter_state(%struct.atmel_private* %121, i32 %122)
  %124 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %125 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %124, i32 0, i32 5
  store i32 0, i32* %125, align 4
  %126 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %127 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %126, i32 0, i32 4
  store i32 0, i32* %127, align 8
  %128 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %129 = call i32 @restart_search(%struct.atmel_private* %128)
  br label %143

130:                                              ; preds = %114
  %131 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %132 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %136 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %135, i32 0, i32 3
  %137 = load i64, i64* @jiffies, align 8
  %138 = load i64, i64* @MGMT_JIFFIES, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @mod_timer(i32* %136, i64 %139)
  %141 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %142 = call i32 @send_association_request(%struct.atmel_private* %141, i32 1)
  br label %143

143:                                              ; preds = %130, %120
  br label %145

144:                                              ; preds = %30
  br label %145

145:                                              ; preds = %144, %143, %113, %83
  %146 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %147 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %146, i32 0, i32 2
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  br label %150

150:                                              ; preds = %145, %29
  ret void
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atmel_enter_state(%struct.atmel_private*, i32) #1

declare dso_local i32 @restart_search(%struct.atmel_private*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @send_authentication_request(%struct.atmel_private*, i32, i32*, i32) #1

declare dso_local i32 @send_association_request(%struct.atmel_private*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
