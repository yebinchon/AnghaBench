; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enic = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32 }

@enic_free_wq_buf = common dso_local global i32 0, align 4
@enic_free_rq_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @enic_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_stop(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.enic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.enic* @netdev_priv(%struct.net_device* %7)
  store %struct.enic* %8, %struct.enic** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.enic*, %struct.enic** %4, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.enic*, %struct.enic** %4, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @vnic_intr_mask(i32* %21)
  %23 = load %struct.enic*, %struct.enic** %4, align 8
  %24 = getelementptr inbounds %struct.enic, %struct.enic* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @vnic_intr_masked(i32* %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.enic*, %struct.enic** %4, align 8
  %35 = call i32 @enic_synchronize_irqs(%struct.enic* %34)
  %36 = load %struct.enic*, %struct.enic** %4, align 8
  %37 = getelementptr inbounds %struct.enic, %struct.enic* %36, i32 0, i32 9
  %38 = call i32 @del_timer_sync(i32* %37)
  %39 = load %struct.enic*, %struct.enic** %4, align 8
  %40 = call i32 @enic_dev_disable(%struct.enic* %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %55, %33
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.enic*, %struct.enic** %4, align 8
  %44 = getelementptr inbounds %struct.enic, %struct.enic* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.enic*, %struct.enic** %4, align 8
  %49 = getelementptr inbounds %struct.enic, %struct.enic* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @napi_disable(i32* %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %41

58:                                               ; preds = %41
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @netif_carrier_off(%struct.net_device* %59)
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @netif_tx_disable(%struct.net_device* %61)
  %63 = load %struct.enic*, %struct.enic** %4, align 8
  %64 = call i32 @enic_is_dynamic(%struct.enic* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %58
  %67 = load %struct.enic*, %struct.enic** %4, align 8
  %68 = call i32 @enic_is_sriov_vf(%struct.enic* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load %struct.enic*, %struct.enic** %4, align 8
  %72 = call i32 @enic_dev_del_station_addr(%struct.enic* %71)
  br label %73

73:                                               ; preds = %70, %66, %58
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.enic*, %struct.enic** %4, align 8
  %77 = getelementptr inbounds %struct.enic, %struct.enic* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.enic*, %struct.enic** %4, align 8
  %82 = getelementptr inbounds %struct.enic, %struct.enic* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @vnic_wq_disable(i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %198

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %74

96:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.enic*, %struct.enic** %4, align 8
  %100 = getelementptr inbounds %struct.enic, %struct.enic* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load %struct.enic*, %struct.enic** %4, align 8
  %105 = getelementptr inbounds %struct.enic, %struct.enic* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i32 @vnic_rq_disable(i32* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %198

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %97

119:                                              ; preds = %97
  %120 = load %struct.enic*, %struct.enic** %4, align 8
  %121 = call i32 @enic_dev_notify_unset(%struct.enic* %120)
  %122 = load %struct.enic*, %struct.enic** %4, align 8
  %123 = call i32 @enic_free_intr(%struct.enic* %122)
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %139, %119
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.enic*, %struct.enic** %4, align 8
  %127 = getelementptr inbounds %struct.enic, %struct.enic* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load %struct.enic*, %struct.enic** %4, align 8
  %132 = getelementptr inbounds %struct.enic, %struct.enic* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* @enic_free_wq_buf, align 4
  %138 = call i32 @vnic_wq_clean(i32* %136, i32 %137)
  br label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %5, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %124

142:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %158, %142
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.enic*, %struct.enic** %4, align 8
  %146 = getelementptr inbounds %struct.enic, %struct.enic* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ult i32 %144, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %143
  %150 = load %struct.enic*, %struct.enic** %4, align 8
  %151 = getelementptr inbounds %struct.enic, %struct.enic* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* @enic_free_rq_buf, align 4
  %157 = call i32 @vnic_rq_clean(i32* %155, i32 %156)
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %5, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %143

161:                                              ; preds = %143
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %176, %161
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.enic*, %struct.enic** %4, align 8
  %165 = getelementptr inbounds %struct.enic, %struct.enic* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ult i32 %163, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load %struct.enic*, %struct.enic** %4, align 8
  %170 = getelementptr inbounds %struct.enic, %struct.enic* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = call i32 @vnic_cq_clean(i32* %174)
  br label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %5, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %162

179:                                              ; preds = %162
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %194, %179
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.enic*, %struct.enic** %4, align 8
  %183 = getelementptr inbounds %struct.enic, %struct.enic* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ult i32 %181, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load %struct.enic*, %struct.enic** %4, align 8
  %188 = getelementptr inbounds %struct.enic, %struct.enic* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = call i32 @vnic_intr_clean(i32* %192)
  br label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %5, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %180

197:                                              ; preds = %180
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %113, %90
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vnic_intr_mask(i32*) #1

declare dso_local i32 @vnic_intr_masked(i32*) #1

declare dso_local i32 @enic_synchronize_irqs(%struct.enic*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @enic_dev_disable(%struct.enic*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @enic_is_dynamic(%struct.enic*) #1

declare dso_local i32 @enic_is_sriov_vf(%struct.enic*) #1

declare dso_local i32 @enic_dev_del_station_addr(%struct.enic*) #1

declare dso_local i32 @vnic_wq_disable(i32*) #1

declare dso_local i32 @vnic_rq_disable(i32*) #1

declare dso_local i32 @enic_dev_notify_unset(%struct.enic*) #1

declare dso_local i32 @enic_free_intr(%struct.enic*) #1

declare dso_local i32 @vnic_wq_clean(i32*, i32) #1

declare dso_local i32 @vnic_rq_clean(i32*, i32) #1

declare dso_local i32 @vnic_cq_clean(i32*) #1

declare dso_local i32 @vnic_intr_clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
