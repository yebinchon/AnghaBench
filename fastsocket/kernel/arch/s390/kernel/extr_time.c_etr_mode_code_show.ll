; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_mode_code_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_mode_code_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sysdev_attribute = type { i32 }

@etr_port0_online = common dso_local global i32 0, align 4
@etr_port1_online = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@etr_port0_dev = common dso_local global %struct.sys_device zeroinitializer, align 4
@etr_port0 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*, %struct.sysdev_attribute*, i8*)* @etr_mode_code_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etr_mode_code_show(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sys_device*, align 8
  %6 = alloca %struct.sysdev_attribute*, align 8
  %7 = alloca i8*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %5, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @etr_port0_online, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @etr_port1_online, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @ENODATA, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %27

16:                                               ; preds = %10, %3
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.sys_device*, %struct.sys_device** %5, align 8
  %19 = icmp eq %struct.sys_device* %18, @etr_port0_dev
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @etr_port0, i32 0, i32 0, i32 0), align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @etr_port0, i32 0, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
