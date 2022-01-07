; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"IBM eServer i/pSeries Virtual SCSI Target Driver\0A\00", align 1
@ibmvstgt_transport_functions = common dso_local global i32 0, align 4
@ibmvstgt_transport_template = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ibmvtgtd\00", align 1
@vtgtd = common dso_local global i32 0, align 4
@ibmvstgt_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ibmvstgt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvstgt_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ENOMEM, align 4
  %4 = sub nsw i32 0, %3
  store i32 %4, i32* %2, align 4
  %5 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @srp_attach_transport(i32* @ibmvstgt_transport_functions)
  store i32 %6, i32* @ibmvstgt_transport_template, align 4
  %7 = load i32, i32* @ibmvstgt_transport_template, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %34

11:                                               ; preds = %0
  %12 = call i32 @create_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* @vtgtd, align 4
  %13 = load i32, i32* @vtgtd, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %30

16:                                               ; preds = %11
  %17 = call i32 (...) @get_system_info()
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %27

21:                                               ; preds = %16
  %22 = call i32 @vio_register_driver(i32* @ibmvstgt_driver)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %34

27:                                               ; preds = %25, %20
  %28 = load i32, i32* @vtgtd, align 4
  %29 = call i32 @destroy_workqueue(i32 %28)
  br label %30

30:                                               ; preds = %27, %15
  %31 = load i32, i32* @ibmvstgt_transport_template, align 4
  %32 = call i32 @srp_release_transport(i32 %31)
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %30, %26, %9
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @srp_attach_transport(i32*) #1

declare dso_local i32 @create_workqueue(i8*) #1

declare dso_local i32 @get_system_info(...) #1

declare dso_local i32 @vio_register_driver(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @srp_release_transport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
