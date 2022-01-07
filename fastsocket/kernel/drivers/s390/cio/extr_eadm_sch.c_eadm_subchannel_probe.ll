; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.eadm_private = type { i32, %struct.subchannel*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EADM_IDLE = common dso_local global i32 0, align 4
@EADM_SCH_ISC = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@eadm_list = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @eadm_subchannel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eadm_subchannel_probe(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.eadm_private*, align 8
  %5 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @GFP_DMA, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.eadm_private* @kzalloc(i32 24, i32 %8)
  store %struct.eadm_private* %9, %struct.eadm_private** %4, align 8
  %10 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %11 = icmp ne %struct.eadm_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %17 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %20 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %19, i32 0, i32 3
  %21 = call i32 @init_timer(i32* %20)
  %22 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %27 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %28 = call i32 @set_eadm_private(%struct.subchannel* %26, %struct.eadm_private* %27)
  %29 = load i32, i32* @EADM_IDLE, align 4
  %30 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %31 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %33 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %34 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %33, i32 0, i32 1
  store %struct.subchannel* %32, %struct.subchannel** %34, align 8
  %35 = load i32, i32* @EADM_SCH_ISC, align 4
  %36 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %37 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %39 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %40 = ptrtoint %struct.subchannel* %39 to i64
  %41 = trunc i64 %40 to i32
  %42 = call i32 @cio_enable_subchannel(%struct.subchannel* %38, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %15
  %46 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %47 = call i32 @set_eadm_private(%struct.subchannel* %46, %struct.eadm_private* null)
  %48 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %49 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %53 = call i32 @kfree(%struct.eadm_private* %52)
  br label %78

54:                                               ; preds = %15
  %55 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %56 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = call i32 @spin_lock_irq(i32* @list_lock)
  %60 = load %struct.eadm_private*, %struct.eadm_private** %4, align 8
  %61 = getelementptr inbounds %struct.eadm_private, %struct.eadm_private* %60, i32 0, i32 0
  %62 = call i32 @list_add(i32* %61, i32* @eadm_list)
  %63 = call i32 @spin_unlock_irq(i32* @list_lock)
  %64 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %65 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %64, i32 0, i32 0
  %66 = call i64 @dev_get_uevent_suppress(%struct.TYPE_3__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %54
  %69 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %70 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %69, i32 0, i32 0
  %71 = call i32 @dev_set_uevent_suppress(%struct.TYPE_3__* %70, i32 0)
  %72 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %73 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* @KOBJ_ADD, align 4
  %76 = call i32 @kobject_uevent(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %54
  br label %78

78:                                               ; preds = %77, %45
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.eadm_private* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_eadm_private(%struct.subchannel*, %struct.eadm_private*) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.eadm_private*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @dev_get_uevent_suppress(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
