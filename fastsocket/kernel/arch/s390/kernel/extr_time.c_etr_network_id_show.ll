; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_network_id_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_network_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }
%struct.etr_aib = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*, %struct.sysdev_attribute*, i8*)* @etr_network_id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etr_network_id_show(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sys_device*, align 8
  %6 = alloca %struct.sysdev_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.etr_aib*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %5, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.sys_device*, %struct.sys_device** %5, align 8
  %10 = call %struct.etr_aib* @etr_aib_from_dev(%struct.sys_device* %9)
  store %struct.etr_aib* %10, %struct.etr_aib** %8, align 8
  %11 = load %struct.etr_aib*, %struct.etr_aib** %8, align 8
  %12 = icmp ne %struct.etr_aib* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.etr_aib*, %struct.etr_aib** %8, align 8
  %15 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @ENODATA, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %29

22:                                               ; preds = %13
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.etr_aib*, %struct.etr_aib** %8, align 8
  %25 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.etr_aib* @etr_aib_from_dev(%struct.sys_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
