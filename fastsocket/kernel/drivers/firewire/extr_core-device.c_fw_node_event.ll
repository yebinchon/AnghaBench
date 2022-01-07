; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_fw_node_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_fw_node_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32, %struct.fw_node* }
%struct.fw_node = type { %struct.fw_device*, i32, i32 }
%struct.fw_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FW_DEVICE_INITIALIZING = common dso_local global i32 0, align 4
@fw_device_init = common dso_local global i32 0, align 4
@INITIAL_DELAY = common dso_local global i32 0, align 4
@FW_DEVICE_RUNNING = common dso_local global i32 0, align 4
@fw_device_refresh = common dso_local global i32 0, align 4
@fw_device_update = common dso_local global i32 0, align 4
@FW_DEVICE_GONE = common dso_local global i32 0, align 4
@fw_device_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_node_event(%struct.fw_card* %0, %struct.fw_node* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca %struct.fw_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_device*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store %struct.fw_node* %1, %struct.fw_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %188 [
    i32 133, label %9
    i32 129, label %9
    i32 131, label %70
    i32 128, label %114
    i32 132, label %154
    i32 130, label %154
  ]

9:                                                ; preds = %3, %3
  %10 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %11 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %188

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %76, %15
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.fw_device* @kzalloc(i32 36, i32 %17)
  store %struct.fw_device* %18, %struct.fw_device** %7, align 8
  %19 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %20 = icmp eq %struct.fw_device* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %188

22:                                               ; preds = %16
  %23 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %24 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %23, i32 0, i32 2
  %25 = load i32, i32* @FW_DEVICE_INITIALIZING, align 4
  %26 = call i32 @atomic_set(i32* %24, i32 %25)
  %27 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %28 = call i32 @fw_card_get(%struct.fw_card* %27)
  %29 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %30 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %32 = call i32 @fw_node_get(%struct.fw_node* %31)
  %33 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %34 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %36 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %39 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %41 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %44 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %46 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %47 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %46, i32 0, i32 2
  %48 = load %struct.fw_node*, %struct.fw_node** %47, align 8
  %49 = icmp eq %struct.fw_node* %45, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %52 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %54 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %53, i32 0, i32 6
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %57 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %56, i32 0, i32 5
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %60 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %61 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %60, i32 0, i32 0
  store %struct.fw_device* %59, %struct.fw_device** %61, align 8
  %62 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %63 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %62, i32 0, i32 1
  %64 = load i32, i32* @fw_device_init, align 4
  %65 = call i32 @INIT_DELAYED_WORK(i32* %63, i32 %64)
  %66 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %67 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %66, i32 0, i32 1
  %68 = load i32, i32* @INITIAL_DELAY, align 4
  %69 = call i32 @schedule_delayed_work(i32* %67, i32 %68)
  br label %188

70:                                               ; preds = %3
  %71 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %72 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %71, i32 0, i32 0
  %73 = load %struct.fw_device*, %struct.fw_device** %72, align 8
  store %struct.fw_device* %73, %struct.fw_device** %7, align 8
  %74 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %75 = icmp eq %struct.fw_device* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %16

77:                                               ; preds = %70
  %78 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %79 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %82 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = call i32 (...) @smp_wmb()
  %84 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %85 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %88 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %90 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %89, i32 0, i32 2
  %91 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %92 = load i32, i32* @FW_DEVICE_INITIALIZING, align 4
  %93 = call i32 @atomic_cmpxchg(i32* %90, i32 %91, i32 %92)
  %94 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %77
  %97 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %98 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %97, i32 0, i32 1
  %99 = load i32, i32* @fw_device_refresh, align 4
  %100 = call i32 @PREPARE_DELAYED_WORK(i32* %98, i32 %99)
  %101 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %102 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %101, i32 0, i32 1
  %103 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %104 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %110

108:                                              ; preds = %96
  %109 = load i32, i32* @INITIAL_DELAY, align 4
  br label %110

110:                                              ; preds = %108, %107
  %111 = phi i32 [ 0, %107 ], [ %109, %108 ]
  %112 = call i32 @schedule_delayed_work(i32* %102, i32 %111)
  br label %113

113:                                              ; preds = %110, %77
  br label %188

114:                                              ; preds = %3
  %115 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %116 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %121 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %120, i32 0, i32 0
  %122 = load %struct.fw_device*, %struct.fw_device** %121, align 8
  %123 = icmp eq %struct.fw_device* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %119, %114
  br label %188

125:                                              ; preds = %119
  %126 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %127 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %126, i32 0, i32 0
  %128 = load %struct.fw_device*, %struct.fw_device** %127, align 8
  store %struct.fw_device* %128, %struct.fw_device** %7, align 8
  %129 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %130 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %133 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = call i32 (...) @smp_wmb()
  %135 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %136 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %139 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %141 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %140, i32 0, i32 2
  %142 = call i32 @atomic_read(i32* %141)
  %143 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %125
  %146 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %147 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %146, i32 0, i32 1
  %148 = load i32, i32* @fw_device_update, align 4
  %149 = call i32 @PREPARE_DELAYED_WORK(i32* %147, i32 %148)
  %150 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %151 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %150, i32 0, i32 1
  %152 = call i32 @schedule_delayed_work(i32* %151, i32 0)
  br label %153

153:                                              ; preds = %145, %125
  br label %188

154:                                              ; preds = %3, %3
  %155 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %156 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %155, i32 0, i32 0
  %157 = load %struct.fw_device*, %struct.fw_device** %156, align 8
  %158 = icmp ne %struct.fw_device* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  br label %188

160:                                              ; preds = %154
  %161 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %162 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %161, i32 0, i32 0
  %163 = load %struct.fw_device*, %struct.fw_device** %162, align 8
  store %struct.fw_device* %163, %struct.fw_device** %7, align 8
  %164 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %165 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %164, i32 0, i32 2
  %166 = load i32, i32* @FW_DEVICE_GONE, align 4
  %167 = call i32 @atomic_xchg(i32* %165, i32 %166)
  %168 = load i32, i32* @FW_DEVICE_RUNNING, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %160
  %171 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %172 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %171, i32 0, i32 1
  %173 = load i32, i32* @fw_device_shutdown, align 4
  %174 = call i32 @PREPARE_DELAYED_WORK(i32* %172, i32 %173)
  %175 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %176 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %175, i32 0, i32 1
  %177 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %178 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %177, i32 0, i32 0
  %179 = call i32 @list_empty(i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  br label %184

182:                                              ; preds = %170
  %183 = load i32, i32* @SHUTDOWN_DELAY, align 4
  br label %184

184:                                              ; preds = %182, %181
  %185 = phi i32 [ 0, %181 ], [ %183, %182 ]
  %186 = call i32 @schedule_delayed_work(i32* %176, i32 %185)
  br label %187

187:                                              ; preds = %184, %160
  br label %188

188:                                              ; preds = %3, %187, %159, %153, %124, %113, %22, %21, %14
  ret void
}

declare dso_local %struct.fw_device* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @fw_card_get(%struct.fw_card*) #1

declare dso_local i32 @fw_node_get(%struct.fw_node*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @PREPARE_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
