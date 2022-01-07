; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enic = type { i32, i32, i32, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Unable to request irq.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to alloc notify buffer, aborting.\0A\00", align 1
@enic_rq_alloc_buf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to alloc receive buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @enic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.enic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.enic* @netdev_priv(%struct.net_device* %7)
  store %struct.enic* %8, %struct.enic** %4, align 8
  %9 = load %struct.enic*, %struct.enic** %4, align 8
  %10 = call i32 @enic_request_intr(%struct.enic* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netdev_err(%struct.net_device* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %157

17:                                               ; preds = %1
  %18 = load %struct.enic*, %struct.enic** %4, align 8
  %19 = call i32 @enic_dev_notify_set(%struct.enic* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @netdev_err(%struct.net_device* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %153

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.enic*, %struct.enic** %4, align 8
  %29 = getelementptr inbounds %struct.enic, %struct.enic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load %struct.enic*, %struct.enic** %4, align 8
  %34 = getelementptr inbounds %struct.enic, %struct.enic* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* @enic_rq_alloc_buf, align 4
  %40 = call i32 @vnic_rq_fill(i32* %38, i32 %39)
  %41 = load %struct.enic*, %struct.enic** %4, align 8
  %42 = getelementptr inbounds %struct.enic, %struct.enic* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i64 @vnic_rq_desc_used(i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %150

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %26

58:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.enic*, %struct.enic** %4, align 8
  %62 = getelementptr inbounds %struct.enic, %struct.enic* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.enic*, %struct.enic** %4, align 8
  %67 = getelementptr inbounds %struct.enic, %struct.enic* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @vnic_wq_enable(i32* %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %59

76:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.enic*, %struct.enic** %4, align 8
  %80 = getelementptr inbounds %struct.enic, %struct.enic* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.enic*, %struct.enic** %4, align 8
  %85 = getelementptr inbounds %struct.enic, %struct.enic* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @vnic_rq_enable(i32* %89)
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %77

94:                                               ; preds = %77
  %95 = load %struct.enic*, %struct.enic** %4, align 8
  %96 = call i32 @enic_is_dynamic(%struct.enic* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load %struct.enic*, %struct.enic** %4, align 8
  %100 = call i32 @enic_is_sriov_vf(%struct.enic* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load %struct.enic*, %struct.enic** %4, align 8
  %104 = call i32 @enic_dev_add_station_addr(%struct.enic* %103)
  br label %105

105:                                              ; preds = %102, %98, %94
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = call i32 @enic_set_rx_mode(%struct.net_device* %106)
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = call i32 @netif_wake_queue(%struct.net_device* %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %124, %105
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.enic*, %struct.enic** %4, align 8
  %113 = getelementptr inbounds %struct.enic, %struct.enic* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ult i32 %111, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %110
  %117 = load %struct.enic*, %struct.enic** %4, align 8
  %118 = getelementptr inbounds %struct.enic, %struct.enic* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @napi_enable(i32* %122)
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %5, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %110

127:                                              ; preds = %110
  %128 = load %struct.enic*, %struct.enic** %4, align 8
  %129 = call i32 @enic_dev_enable(%struct.enic* %128)
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %144, %127
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.enic*, %struct.enic** %4, align 8
  %133 = getelementptr inbounds %struct.enic, %struct.enic* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ult i32 %131, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load %struct.enic*, %struct.enic** %4, align 8
  %138 = getelementptr inbounds %struct.enic, %struct.enic* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i32 @vnic_intr_unmask(i32* %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %5, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %130

147:                                              ; preds = %130
  %148 = load %struct.enic*, %struct.enic** %4, align 8
  %149 = call i32 @enic_notify_timer_start(%struct.enic* %148)
  store i32 0, i32* %2, align 4
  br label %157

150:                                              ; preds = %49
  %151 = load %struct.enic*, %struct.enic** %4, align 8
  %152 = call i32 @enic_dev_notify_unset(%struct.enic* %151)
  br label %153

153:                                              ; preds = %150, %22
  %154 = load %struct.enic*, %struct.enic** %4, align 8
  %155 = call i32 @enic_free_intr(%struct.enic* %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %153, %147, %13
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_request_intr(%struct.enic*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @enic_dev_notify_set(%struct.enic*) #1

declare dso_local i32 @vnic_rq_fill(i32*, i32) #1

declare dso_local i64 @vnic_rq_desc_used(i32*) #1

declare dso_local i32 @vnic_wq_enable(i32*) #1

declare dso_local i32 @vnic_rq_enable(i32*) #1

declare dso_local i32 @enic_is_dynamic(%struct.enic*) #1

declare dso_local i32 @enic_is_sriov_vf(%struct.enic*) #1

declare dso_local i32 @enic_dev_add_station_addr(%struct.enic*) #1

declare dso_local i32 @enic_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @enic_dev_enable(%struct.enic*) #1

declare dso_local i32 @vnic_intr_unmask(i32*) #1

declare dso_local i32 @enic_notify_timer_start(%struct.enic*) #1

declare dso_local i32 @enic_dev_notify_unset(%struct.enic*) #1

declare dso_local i32 @enic_free_intr(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
