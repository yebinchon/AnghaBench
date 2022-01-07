; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_sas_find_local_port_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_sas_find_local_port_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.domain_device*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @sas_find_local_port_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_find_local_port_id(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca %struct.domain_device*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %6 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %7 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %6, i32 0, i32 0
  %8 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  store %struct.domain_device* %8, %struct.domain_device** %4, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %10 = icmp ne %struct.domain_device* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  br label %38

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %33, %17
  %19 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %20 = icmp ne %struct.domain_device* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %23 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %22, i32 0, i32 0
  %24 = load %struct.domain_device*, %struct.domain_device** %23, align 8
  store %struct.domain_device* %24, %struct.domain_device** %5, align 8
  %25 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %26 = icmp ne %struct.domain_device* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %21
  %34 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %35 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %34, i32 0, i32 0
  %36 = load %struct.domain_device*, %struct.domain_device** %35, align 8
  store %struct.domain_device* %36, %struct.domain_device** %4, align 8
  br label %18

37:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %27, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
