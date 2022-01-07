; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.vmxnet3_adapter = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { %struct.vmxnet3_rq_driver_stats }
%struct.vmxnet3_rq_driver_stats = type { i64 }
%struct.TYPE_7__ = type { %struct.UPT1_RxStats }
%struct.UPT1_RxStats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.vmxnet3_tq_driver_stats }
%struct.vmxnet3_tq_driver_stats = type { i64 }
%struct.TYPE_5__ = type { %struct.UPT1_TxStats }
%struct.UPT1_TxStats = type { i64, i64, i64, i64, i64, i64, i64 }

@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device_stats* @vmxnet3_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca %struct.vmxnet3_tq_driver_stats*, align 8
  %5 = alloca %struct.vmxnet3_rq_driver_stats*, align 8
  %6 = alloca %struct.UPT1_TxStats*, align 8
  %7 = alloca %struct.UPT1_RxStats*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.vmxnet3_adapter* %14, %struct.vmxnet3_adapter** %3, align 8
  %15 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %15, i32 0, i32 6
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %20 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %21 = load i32, i32* @VMXNET3_CMD_GET_STATS, align 4
  %22 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %19, i32 %20, i32 %21)
  %23 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %23, i32 0, i32 6
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %28 = call i32 @memset(%struct.net_device_stats* %27, i32 0, i32 36)
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %102, %1
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %29
  %36 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %36, i32 0, i32 5
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.UPT1_TxStats* %42, %struct.UPT1_TxStats** %6, align 8
  %43 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %43, i32 0, i32 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.vmxnet3_tq_driver_stats* %49, %struct.vmxnet3_tq_driver_stats** %4, align 8
  %50 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %6, align 8
  %51 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %6, align 8
  %54 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %6, align 8
  %58 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %6, align 8
  %68 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %6, align 8
  %71 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %6, align 8
  %75 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = load %struct.UPT1_TxStats*, %struct.UPT1_TxStats** %6, align 8
  %85 = getelementptr inbounds %struct.UPT1_TxStats, %struct.UPT1_TxStats* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %88 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.vmxnet3_tq_driver_stats*, %struct.vmxnet3_tq_driver_stats** %4, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_tq_driver_stats, %struct.vmxnet3_tq_driver_stats* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %97 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %102

102:                                              ; preds = %35
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %29

105:                                              ; preds = %29
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %188, %105
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %191

112:                                              ; preds = %106
  %113 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store %struct.UPT1_RxStats* %119, %struct.UPT1_RxStats** %7, align 8
  %120 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store %struct.vmxnet3_rq_driver_stats* %126, %struct.vmxnet3_rq_driver_stats** %5, align 8
  %127 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %7, align 8
  %128 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %7, align 8
  %131 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %7, align 8
  %135 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %139 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %137
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  %144 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %7, align 8
  %145 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %7, align 8
  %148 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %146, %149
  %151 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %7, align 8
  %152 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %150, %153
  %155 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %156 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %7, align 8
  %162 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %165 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  %170 = load %struct.vmxnet3_rq_driver_stats*, %struct.vmxnet3_rq_driver_stats** %5, align 8
  %171 = getelementptr inbounds %struct.vmxnet3_rq_driver_stats, %struct.vmxnet3_rq_driver_stats* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %174 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %172
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 4
  %179 = load %struct.UPT1_RxStats*, %struct.UPT1_RxStats** %7, align 8
  %180 = getelementptr inbounds %struct.UPT1_RxStats, %struct.UPT1_RxStats* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %183 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %181
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  br label %188

188:                                              ; preds = %112
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %106

191:                                              ; preds = %106
  %192 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  ret %struct.net_device_stats* %192
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.net_device_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
