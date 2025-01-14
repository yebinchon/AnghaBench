; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_module_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@sbp2_serialize_io = common dso_local global i64 0, align 8
@sbp2_shost_template = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sbp2_max_sectors = common dso_local global i32 0, align 4
@sbp2_highlevel = common dso_local global i32 0, align 4
@sbp2_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to register protocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sbp2_module_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_module_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @sbp2_serialize_io, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp2_shost_template, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp2_shost_template, i32 0, i32 1), align 4
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i32, i32* @sbp2_max_sectors, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp2_shost_template, i32 0, i32 2), align 4
  %8 = call i32 @hpsb_register_highlevel(i32* @sbp2_highlevel)
  %9 = call i32 @hpsb_register_protocol(i32* @sbp2_driver)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @hpsb_unregister_highlevel(i32* @sbp2_highlevel)
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %17

16:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @hpsb_register_highlevel(i32*) #1

declare dso_local i32 @hpsb_register_protocol(i32*) #1

declare dso_local i32 @SBP2_ERR(i8*) #1

declare dso_local i32 @hpsb_unregister_highlevel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
