; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_vcpu_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_vcpu_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.kvm_vcpu_events = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@KVM_VCPUEVENT_VALID_NMI_PENDING = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_SIPI_VECTOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_vcpu_events*)* @kvm_vcpu_ioctl_x86_set_vcpu_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_ioctl_x86_set_vcpu_events(%struct.kvm_vcpu* %0, %struct.kvm_vcpu_events* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_vcpu_events*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_vcpu_events* %1, %struct.kvm_vcpu_events** %5, align 8
  %6 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @KVM_VCPUEVENT_VALID_NMI_PENDING, align 4
  %10 = load i32, i32* @KVM_VCPUEVENT_VALID_SIPI_VECTOR, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %142

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = call i32 @vcpu_load(%struct.kvm_vcpu* %19)
  %21 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i32 %24, i32* %28, align 4
  %29 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 8
  %37 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  %61 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 4
  %69 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 8
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %18
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @irqchip_in_kernel(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @kvm_pic_clear_isr_ack(i32 %92)
  br label %94

94:                                               ; preds = %89, %83, %18
  %95 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  %102 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @KVM_VCPUEVENT_VALID_NMI_PENDING, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %94
  %109 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %94
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %118, align 8
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %121 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %119(%struct.kvm_vcpu* %120, i32 %124)
  %126 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @KVM_VCPUEVENT_VALID_SIPI_VECTOR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %116
  %133 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %5, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %137 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  br label %139

139:                                              ; preds = %132, %116
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %141 = call i32 @vcpu_put(%struct.kvm_vcpu* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %15
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i64 @irqchip_in_kernel(i32) #1

declare dso_local i32 @kvm_pic_clear_isr_ack(i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
