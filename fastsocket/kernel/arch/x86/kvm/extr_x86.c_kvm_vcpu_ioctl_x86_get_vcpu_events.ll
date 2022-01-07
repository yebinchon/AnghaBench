; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_vcpu_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_get_vcpu_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.kvm_vcpu_events = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_14__* null, align 8
@KVM_VCPUEVENT_VALID_NMI_PENDING = common dso_local global i32 0, align 4
@KVM_VCPUEVENT_VALID_SIPI_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_vcpu_events*)* @kvm_vcpu_ioctl_x86_get_vcpu_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vcpu_ioctl_x86_get_vcpu_events(%struct.kvm_vcpu* %0, %struct.kvm_vcpu_events* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_vcpu_events*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_vcpu_events* %1, %struct.kvm_vcpu_events** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @vcpu_load(%struct.kvm_vcpu* %5)
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** @kvm_x86_ops, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %84, align 8
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = call i32 %85(%struct.kvm_vcpu* %86)
  %88 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @KVM_VCPUEVENT_VALID_NMI_PENDING, align 4
  %101 = load i32, i32* @KVM_VCPUEVENT_VALID_SIPI_VECTOR, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.kvm_vcpu_events*, %struct.kvm_vcpu_events** %4, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu_events, %struct.kvm_vcpu_events* %105, i32 0, i32 1
  %107 = call i32 @memset(i32* %106, i32 0, i32 4)
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %109 = call i32 @vcpu_put(%struct.kvm_vcpu* %108)
  ret void
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
