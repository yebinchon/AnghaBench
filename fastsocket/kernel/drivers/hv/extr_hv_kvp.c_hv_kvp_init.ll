; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_hv_kvp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_hv_kvp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hv_util_service = type { i32 }

@kvp_id = common dso_local global i32 0, align 4
@kvp_name = common dso_local global i32 0, align 4
@kvp_cn_callback = common dso_local global i32 0, align 4
@recv_buffer = common dso_local global i32 0, align 4
@kvp_transaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_kvp_init(%struct.hv_util_service* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_util_service*, align 8
  %4 = alloca i32, align 4
  store %struct.hv_util_service* %0, %struct.hv_util_service** %3, align 8
  %5 = load i32, i32* @kvp_name, align 4
  %6 = load i32, i32* @kvp_cn_callback, align 4
  %7 = call i32 @cn_add_callback(i32* @kvp_id, i32 %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.hv_util_service*, %struct.hv_util_service** %3, align 8
  %14 = getelementptr inbounds %struct.hv_util_service, %struct.hv_util_service* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @recv_buffer, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @cn_add_callback(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
