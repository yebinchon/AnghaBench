; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_core.c_init_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_core.c_init_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.slot = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.slot*, i32, i32*, i32*, %struct.slot*, i32, i32, i32, %struct.controller*, %struct.slot* }
%struct.hotplug_slot = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.hotplug_slot*, i32, i32*, i32*, %struct.hotplug_slot*, i32, i32, i32, %struct.controller*, %struct.hotplug_slot* }
%struct.hotplug_slot_info = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.hotplug_slot_info*, i32, i32*, i32*, %struct.hotplug_slot_info*, i32, i32, i32, %struct.controller*, %struct.hotplug_slot_info* }

@SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@shpchp_queue_pushbutton_work = common dso_local global i32 0, align 4
@release_slot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@shpchp_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Registering domain:bus:dev=%04x:%02x:%02x hp_slot=%x sun=%x slot_device_offset=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"pci_hp_register failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @init_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_slots(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca %struct.slot*, align 8
  %5 = alloca %struct.hotplug_slot*, align 8
  %6 = alloca %struct.hotplug_slot_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  %12 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %179, %1
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.controller*, %struct.controller** %3, align 8
  %21 = getelementptr inbounds %struct.controller, %struct.controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %182

24:                                               ; preds = %18
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.slot* @kzalloc(i32 112, i32 %25)
  store %struct.slot* %26, %struct.slot** %4, align 8
  %27 = load %struct.slot*, %struct.slot** %4, align 8
  %28 = icmp ne %struct.slot* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %194

30:                                               ; preds = %24
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.slot* @kzalloc(i32 112, i32 %31)
  %33 = bitcast %struct.slot* %32 to %struct.hotplug_slot*
  store %struct.hotplug_slot* %33, %struct.hotplug_slot** %5, align 8
  %34 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %35 = icmp ne %struct.hotplug_slot* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %191

37:                                               ; preds = %30
  %38 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %39 = bitcast %struct.hotplug_slot* %38 to %struct.slot*
  %40 = load %struct.slot*, %struct.slot** %4, align 8
  %41 = getelementptr inbounds %struct.slot, %struct.slot* %40, i32 0, i32 8
  store %struct.slot* %39, %struct.slot** %41, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.slot* @kzalloc(i32 112, i32 %42)
  %44 = bitcast %struct.slot* %43 to %struct.hotplug_slot_info*
  store %struct.hotplug_slot_info* %44, %struct.hotplug_slot_info** %6, align 8
  %45 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %46 = icmp ne %struct.hotplug_slot_info* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %187

48:                                               ; preds = %37
  %49 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %50 = bitcast %struct.hotplug_slot_info* %49 to %struct.hotplug_slot*
  %51 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %52 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %51, i32 0, i32 17
  store %struct.hotplug_slot* %50, %struct.hotplug_slot** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.slot*, %struct.slot** %4, align 8
  %55 = getelementptr inbounds %struct.slot, %struct.slot* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.controller*, %struct.controller** %3, align 8
  %57 = load %struct.slot*, %struct.slot** %4, align 8
  %58 = getelementptr inbounds %struct.slot, %struct.slot* %57, i32 0, i32 16
  store %struct.controller* %56, %struct.controller** %58, align 8
  %59 = load %struct.controller*, %struct.controller** %3, align 8
  %60 = getelementptr inbounds %struct.controller, %struct.controller* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.slot*, %struct.slot** %4, align 8
  %67 = getelementptr inbounds %struct.slot, %struct.slot* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load %struct.controller*, %struct.controller** %3, align 8
  %69 = getelementptr inbounds %struct.controller, %struct.controller* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = load %struct.slot*, %struct.slot** %4, align 8
  %75 = getelementptr inbounds %struct.slot, %struct.slot* %74, i32 0, i32 7
  store i64 %73, i64* %75, align 8
  %76 = load %struct.controller*, %struct.controller** %3, align 8
  %77 = getelementptr inbounds %struct.controller, %struct.controller* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.slot*, %struct.slot** %4, align 8
  %80 = getelementptr inbounds %struct.slot, %struct.slot* %79, i32 0, i32 15
  store i32 %78, i32* %80, align 8
  %81 = load %struct.controller*, %struct.controller** %3, align 8
  %82 = getelementptr inbounds %struct.controller, %struct.controller* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.controller*, %struct.controller** %3, align 8
  %85 = getelementptr inbounds %struct.controller, %struct.controller* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %83, %88
  %90 = load %struct.slot*, %struct.slot** %4, align 8
  %91 = getelementptr inbounds %struct.slot, %struct.slot* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.slot*, %struct.slot** %4, align 8
  %93 = getelementptr inbounds %struct.slot, %struct.slot* %92, i32 0, i32 14
  %94 = call i32 @mutex_init(i32* %93)
  %95 = load %struct.slot*, %struct.slot** %4, align 8
  %96 = getelementptr inbounds %struct.slot, %struct.slot* %95, i32 0, i32 13
  %97 = load i32, i32* @shpchp_queue_pushbutton_work, align 4
  %98 = call i32 @INIT_DELAYED_WORK(i32* %96, i32 %97)
  %99 = load %struct.slot*, %struct.slot** %4, align 8
  %100 = bitcast %struct.slot* %99 to %struct.hotplug_slot*
  %101 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %102 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %101, i32 0, i32 12
  store %struct.hotplug_slot* %100, %struct.hotplug_slot** %102, align 8
  %103 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %104 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %103, i32 0, i32 11
  store i32* @release_slot, i32** %104, align 8
  %105 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %106 = load %struct.slot*, %struct.slot** %4, align 8
  %107 = getelementptr inbounds %struct.slot, %struct.slot* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @snprintf(i8* %15, i32 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %111 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %110, i32 0, i32 10
  store i32* @shpchp_hotplug_slot_ops, i32** %111, align 8
  %112 = load %struct.controller*, %struct.controller** %3, align 8
  %113 = load %struct.controller*, %struct.controller** %3, align 8
  %114 = getelementptr inbounds %struct.controller, %struct.controller* %113, i32 0, i32 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = call i32 @pci_domain_nr(%struct.TYPE_5__* %117)
  %119 = load %struct.slot*, %struct.slot** %4, align 8
  %120 = getelementptr inbounds %struct.slot, %struct.slot* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.slot*, %struct.slot** %4, align 8
  %123 = getelementptr inbounds %struct.slot, %struct.slot* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.slot*, %struct.slot** %4, align 8
  %126 = getelementptr inbounds %struct.slot, %struct.slot* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.slot*, %struct.slot** %4, align 8
  %129 = getelementptr inbounds %struct.slot, %struct.slot* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.controller*, %struct.controller** %3, align 8
  %132 = getelementptr inbounds %struct.controller, %struct.controller* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ctrl_dbg(%struct.controller* %112, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %121, i64 %124, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.slot*, %struct.slot** %4, align 8
  %136 = getelementptr inbounds %struct.slot, %struct.slot* %135, i32 0, i32 8
  %137 = load %struct.slot*, %struct.slot** %136, align 8
  %138 = load %struct.controller*, %struct.controller** %3, align 8
  %139 = getelementptr inbounds %struct.controller, %struct.controller* %138, i32 0, i32 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load %struct.slot*, %struct.slot** %4, align 8
  %144 = getelementptr inbounds %struct.slot, %struct.slot* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @pci_hp_register(%struct.slot* %137, %struct.TYPE_5__* %142, i64 %145, i8* %15)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %48
  %150 = load %struct.controller*, %struct.controller** %3, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @ctrl_err(%struct.controller* %150, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  br label %183

153:                                              ; preds = %48
  %154 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %155 = bitcast %struct.hotplug_slot* %154 to %struct.slot*
  %156 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %157 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %156, i32 0, i32 6
  %158 = call i32 @get_power_status(%struct.slot* %155, i32* %157)
  %159 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %160 = bitcast %struct.hotplug_slot* %159 to %struct.slot*
  %161 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %162 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %161, i32 0, i32 5
  %163 = call i32 @get_attention_status(%struct.slot* %160, i32* %162)
  %164 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %165 = bitcast %struct.hotplug_slot* %164 to %struct.slot*
  %166 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %167 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %166, i32 0, i32 4
  %168 = call i32 @get_latch_status(%struct.slot* %165, i32* %167)
  %169 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %170 = bitcast %struct.hotplug_slot* %169 to %struct.slot*
  %171 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %172 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %171, i32 0, i32 3
  %173 = call i32 @get_adapter_status(%struct.slot* %170, i32* %172)
  %174 = load %struct.slot*, %struct.slot** %4, align 8
  %175 = getelementptr inbounds %struct.slot, %struct.slot* %174, i32 0, i32 2
  %176 = load %struct.controller*, %struct.controller** %3, align 8
  %177 = getelementptr inbounds %struct.controller, %struct.controller* %176, i32 0, i32 3
  %178 = call i32 @list_add(i32* %175, i32* %177)
  br label %179

179:                                              ; preds = %153
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %18

182:                                              ; preds = %18
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %196

183:                                              ; preds = %149
  %184 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %6, align 8
  %185 = bitcast %struct.hotplug_slot_info* %184 to %struct.slot*
  %186 = call i32 @kfree(%struct.slot* %185)
  br label %187

187:                                              ; preds = %183, %47
  %188 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %189 = bitcast %struct.hotplug_slot* %188 to %struct.slot*
  %190 = call i32 @kfree(%struct.slot* %189)
  br label %191

191:                                              ; preds = %187, %36
  %192 = load %struct.slot*, %struct.slot** %4, align 8
  %193 = call i32 @kfree(%struct.slot* %192)
  br label %194

194:                                              ; preds = %191, %29
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %196

196:                                              ; preds = %194, %182
  %197 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.slot* @kzalloc(i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*, i32, i32, i64, i32, i32, i32) #2

declare dso_local i32 @pci_domain_nr(%struct.TYPE_5__*) #2

declare dso_local i32 @pci_hp_register(%struct.slot*, %struct.TYPE_5__*, i64, i8*) #2

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32) #2

declare dso_local i32 @get_power_status(%struct.slot*, i32*) #2

declare dso_local i32 @get_attention_status(%struct.slot*, i32*) #2

declare dso_local i32 @get_latch_status(%struct.slot*, i32*) #2

declare dso_local i32 @get_adapter_status(%struct.slot*, i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @kfree(%struct.slot*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
