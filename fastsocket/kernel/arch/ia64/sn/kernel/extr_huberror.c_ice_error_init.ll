; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_huberror.c_ice_error_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_huberror.c_ice_error_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubdev_info = type { i32 }

@SGI_TIO_ERROR = common dso_local global i32 0, align 4
@hub_eint_handler = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SN_TIO_error\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"ice_error_init: request_irq() error hubdev_info 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_error_init(%struct.hubdev_info* %0) #0 {
  %2 = alloca %struct.hubdev_info*, align 8
  store %struct.hubdev_info* %0, %struct.hubdev_info** %2, align 8
  %3 = load i32, i32* @SGI_TIO_ERROR, align 4
  %4 = load i64, i64* @hub_eint_handler, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = load i32, i32* @IRQF_SHARED, align 4
  %7 = load %struct.hubdev_info*, %struct.hubdev_info** %2, align 8
  %8 = bitcast %struct.hubdev_info* %7 to i8*
  %9 = call i64 @request_irq(i32 %3, i8* %5, i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.hubdev_info*, %struct.hubdev_info** %2, align 8
  %13 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.hubdev_info* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @SGI_TIO_ERROR, align 4
  %16 = call i32 @sn_set_err_irq_affinity(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare dso_local i64 @request_irq(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @printk(i8*, %struct.hubdev_info*) #1

declare dso_local i32 @sn_set_err_irq_affinity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
