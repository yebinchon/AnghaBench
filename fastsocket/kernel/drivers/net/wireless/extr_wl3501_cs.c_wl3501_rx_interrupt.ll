; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wl3501_card = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @wl3501_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl3501_rx_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl3501_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.wl3501_card* @netdev_priv(%struct.net_device* %7)
  store %struct.wl3501_card* %8, %struct.wl3501_card** %6, align 8
  %9 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %84, %1
  store i32 0, i32* %3, align 4
  %11 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %12 = call i32 @wl3501_esbq_confirm(%struct.wl3501_card* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %79

15:                                               ; preds = %10
  %16 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %17 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %18 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %16, i32 %19, i32* %4, i32 4)
  %21 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 2
  %24 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %21, i32 %23, i32* %5, i32 4)
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %76 [
    i32 137, label %26
    i32 136, label %26
    i32 140, label %26
    i32 133, label %30
    i32 132, label %35
    i32 135, label %40
    i32 131, label %46
    i32 128, label %52
    i32 129, label %57
    i32 134, label %61
    i32 139, label %65
    i32 138, label %69
    i32 130, label %73
  ]

26:                                               ; preds = %15, %15, %15
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %29 = call i32 @wl3501_alarm_interrupt(%struct.net_device* %27, %struct.wl3501_card* %28)
  br label %76

30:                                               ; preds = %15
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @wl3501_md_confirm_interrupt(%struct.net_device* %31, %struct.wl3501_card* %32, i32 %33)
  br label %76

35:                                               ; preds = %15
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @wl3501_md_ind_interrupt(%struct.net_device* %36, %struct.wl3501_card* %37, i32 %38)
  br label %76

40:                                               ; preds = %15
  %41 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %44 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %43, i32 0, i32 2
  %45 = call i32 @wl3501_get_confirm_interrupt(%struct.wl3501_card* %41, i32 %42, i32* %44, i32 4)
  br label %76

46:                                               ; preds = %15
  %47 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %50 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %49, i32 0, i32 1
  %51 = call i32 @wl3501_get_confirm_interrupt(%struct.wl3501_card* %47, i32 %48, i32* %50, i32 4)
  br label %76

52:                                               ; preds = %15
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @wl3501_start_confirm_interrupt(%struct.net_device* %53, %struct.wl3501_card* %54, i32 %55)
  br label %76

57:                                               ; preds = %15
  %58 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @wl3501_mgmt_scan_confirm(%struct.wl3501_card* %58, i32 %59)
  br label %76

61:                                               ; preds = %15
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @wl3501_mgmt_join_confirm(%struct.net_device* %62, i32 %63)
  br label %76

65:                                               ; preds = %15
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @wl3501_assoc_confirm_interrupt(%struct.net_device* %66, i32 %67)
  br label %76

69:                                               ; preds = %15
  %70 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @wl3501_auth_confirm_interrupt(%struct.wl3501_card* %70, i32 %71)
  br label %76

73:                                               ; preds = %15
  %74 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %75 = call i32 @wl3501_mgmt_resync(%struct.wl3501_card* %74)
  br label %76

76:                                               ; preds = %15, %73, %69, %65, %61, %57, %52, %46, %40, %35, %30, %26
  %77 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %78 = call i32 @wl3501_esbq_confirm_done(%struct.wl3501_card* %77)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %14
  %80 = load %struct.wl3501_card*, %struct.wl3501_card** %6, align 8
  %81 = call i32 @wl3501_esbq_req_free(%struct.wl3501_card* %80)
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %10

85:                                               ; preds = %79
  ret void
}

declare dso_local %struct.wl3501_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @wl3501_esbq_confirm(%struct.wl3501_card*) #1

declare dso_local i32 @wl3501_get_from_wla(%struct.wl3501_card*, i32, i32*, i32) #1

declare dso_local i32 @wl3501_alarm_interrupt(%struct.net_device*, %struct.wl3501_card*) #1

declare dso_local i32 @wl3501_md_confirm_interrupt(%struct.net_device*, %struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_md_ind_interrupt(%struct.net_device*, %struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_get_confirm_interrupt(%struct.wl3501_card*, i32, i32*, i32) #1

declare dso_local i32 @wl3501_start_confirm_interrupt(%struct.net_device*, %struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_mgmt_scan_confirm(%struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_mgmt_join_confirm(%struct.net_device*, i32) #1

declare dso_local i32 @wl3501_assoc_confirm_interrupt(%struct.net_device*, i32) #1

declare dso_local i32 @wl3501_auth_confirm_interrupt(%struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_mgmt_resync(%struct.wl3501_card*) #1

declare dso_local i32 @wl3501_esbq_confirm_done(%struct.wl3501_card*) #1

declare dso_local i32 @wl3501_esbq_req_free(%struct.wl3501_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
