; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_aib_from_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_aib_from_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.etr_aib = type { i32 }

@etr_port0_dev = common dso_local global %struct.sys_device zeroinitializer, align 4
@etr_port0_online = common dso_local global i64 0, align 8
@etr_port0 = common dso_local global %struct.etr_aib zeroinitializer, align 4
@etr_port1_online = common dso_local global i64 0, align 8
@etr_port1 = common dso_local global %struct.etr_aib zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.etr_aib* (%struct.sys_device*)* @etr_aib_from_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.etr_aib* @etr_aib_from_dev(%struct.sys_device* %0) #0 {
  %2 = alloca %struct.etr_aib*, align 8
  %3 = alloca %struct.sys_device*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  %4 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %5 = icmp eq %struct.sys_device* %4, @etr_port0_dev
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* @etr_port0_online, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, %struct.etr_aib* @etr_port0, %struct.etr_aib* null
  store %struct.etr_aib* %10, %struct.etr_aib** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load i64, i64* @etr_port1_online, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, %struct.etr_aib* @etr_port1, %struct.etr_aib* null
  store %struct.etr_aib* %15, %struct.etr_aib** %2, align 8
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.etr_aib*, %struct.etr_aib** %2, align 8
  ret %struct.etr_aib* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
