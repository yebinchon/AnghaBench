; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_kvm_create_pit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_kvm_create_pit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { i64, i32, i32, %struct.TYPE_7__, %struct.kvm_kpit_state, %struct.kvm*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.kvm_kpit_state = type { i32, %struct.TYPE_6__, %struct.TYPE_8__, %struct.kvm_pit*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_pit* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"kvm-pit-wq\00", align 1
@pit_do_work = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@kvm_pit_ack_irq = common dso_local global i32 0, align 4
@pit_mask_notifer = common dso_local global i32 0, align 4
@pit_dev_ops = common dso_local global i32 0, align 4
@KVM_PIO_BUS = common dso_local global i32 0, align 4
@KVM_PIT_SPEAKER_DUMMY = common dso_local global i32 0, align 4
@speaker_dev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_pit* @kvm_create_pit(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pit*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_pit*, align 8
  %7 = alloca %struct.kvm_kpit_state*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.kvm_pit* @kzalloc(i32 88, i32 %9)
  store %struct.kvm_pit* %10, %struct.kvm_pit** %6, align 8
  %11 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %12 = icmp ne %struct.kvm_pit* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.kvm_pit* null, %struct.kvm_pit** %3, align 8
  br label %151

14:                                               ; preds = %2
  %15 = load %struct.kvm*, %struct.kvm** %4, align 8
  %16 = call i64 @kvm_request_irq_source_id(%struct.kvm* %15)
  %17 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %25 = call i32 @kfree(%struct.kvm_pit* %24)
  store %struct.kvm_pit* null, %struct.kvm_pit** %3, align 8
  br label %151

26:                                               ; preds = %14
  %27 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %28 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %28, i32 0, i32 0
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %36, i32 0, i32 4
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %43 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %26
  %47 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %48 = call i32 @kfree(%struct.kvm_pit* %47)
  store %struct.kvm_pit* null, %struct.kvm_pit** %3, align 8
  br label %151

49:                                               ; preds = %26
  %50 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %50, i32 0, i32 6
  %52 = load i32, i32* @pit_do_work, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %55 = load %struct.kvm*, %struct.kvm** %4, align 8
  %56 = getelementptr inbounds %struct.kvm, %struct.kvm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store %struct.kvm_pit* %54, %struct.kvm_pit** %57, align 8
  %58 = load %struct.kvm*, %struct.kvm** %4, align 8
  %59 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %60 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %59, i32 0, i32 5
  store %struct.kvm* %58, %struct.kvm** %60, align 8
  %61 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %62 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %61, i32 0, i32 4
  store %struct.kvm_kpit_state* %62, %struct.kvm_kpit_state** %7, align 8
  %63 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %64 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %65 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %64, i32 0, i32 3
  store %struct.kvm_pit* %63, %struct.kvm_pit** %65, align 8
  %66 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %67 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %70 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %71 = call i32 @hrtimer_init(i32* %68, i32 %69, i32 %70)
  %72 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %73 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @kvm_pit_ack_irq, align 4
  %76 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %77 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.kvm*, %struct.kvm** %4, align 8
  %80 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %81 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %80, i32 0, i32 2
  %82 = call i32 @kvm_register_irq_ack_notifier(%struct.kvm* %79, %struct.TYPE_8__* %81)
  %83 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %7, align 8
  %84 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %87 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %91 = call i32 @kvm_pit_reset(%struct.kvm_pit* %90)
  %92 = load i32, i32* @pit_mask_notifer, align 4
  %93 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %94 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.kvm*, %struct.kvm** %4, align 8
  %97 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %98 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %97, i32 0, i32 3
  %99 = call i32 @kvm_register_irq_mask_notifier(%struct.kvm* %96, i32 0, %struct.TYPE_7__* %98)
  %100 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %101 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %100, i32 0, i32 1
  %102 = call i32 @kvm_iodevice_init(i32* %101, i32* @pit_dev_ops)
  %103 = load %struct.kvm*, %struct.kvm** %4, align 8
  %104 = load i32, i32* @KVM_PIO_BUS, align 4
  %105 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %106 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %105, i32 0, i32 1
  %107 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %103, i32 %104, i32* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %49
  br label %137

111:                                              ; preds = %49
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @KVM_PIT_SPEAKER_DUMMY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %118 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %117, i32 0, i32 2
  %119 = call i32 @kvm_iodevice_init(i32* %118, i32* @speaker_dev_ops)
  %120 = load %struct.kvm*, %struct.kvm** %4, align 8
  %121 = load i32, i32* @KVM_PIO_BUS, align 4
  %122 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %123 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %122, i32 0, i32 2
  %124 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %120, i32 %121, i32* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %131

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %111
  %130 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  store %struct.kvm_pit* %130, %struct.kvm_pit** %3, align 8
  br label %151

131:                                              ; preds = %127
  %132 = load %struct.kvm*, %struct.kvm** %4, align 8
  %133 = load i32, i32* @KVM_PIO_BUS, align 4
  %134 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %135 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %134, i32 0, i32 1
  %136 = call i32 @kvm_io_bus_unregister_dev(%struct.kvm* %132, i32 %133, i32* %135)
  br label %137

137:                                              ; preds = %131, %110
  %138 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %139 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.kvm*, %struct.kvm** %4, align 8
  %144 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %145 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @kvm_free_irq_source_id(%struct.kvm* %143, i64 %146)
  br label %148

148:                                              ; preds = %142, %137
  %149 = load %struct.kvm_pit*, %struct.kvm_pit** %6, align 8
  %150 = call i32 @kfree(%struct.kvm_pit* %149)
  store %struct.kvm_pit* null, %struct.kvm_pit** %3, align 8
  br label %151

151:                                              ; preds = %148, %129, %46, %23, %13
  %152 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  ret %struct.kvm_pit* %152
}

declare dso_local %struct.kvm_pit* @kzalloc(i32, i32) #1

declare dso_local i64 @kvm_request_irq_source_id(%struct.kvm*) #1

declare dso_local i32 @kfree(%struct.kvm_pit*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hrtimer_init(i32*, i32, i32) #1

declare dso_local i32 @kvm_register_irq_ack_notifier(%struct.kvm*, %struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvm_pit_reset(%struct.kvm_pit*) #1

declare dso_local i32 @kvm_register_irq_mask_notifier(%struct.kvm*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32*) #1

declare dso_local i32 @kvm_io_bus_unregister_dev(%struct.kvm*, i32, i32*) #1

declare dso_local i32 @kvm_free_irq_source_id(%struct.kvm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
