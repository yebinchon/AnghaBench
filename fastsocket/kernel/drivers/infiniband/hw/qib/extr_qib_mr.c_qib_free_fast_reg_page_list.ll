; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_free_fast_reg_page_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mr.c_qib_free_fast_reg_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { %struct.ib_fast_reg_page_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_free_fast_reg_page_list(%struct.ib_fast_reg_page_list* %0) #0 {
  %2 = alloca %struct.ib_fast_reg_page_list*, align 8
  store %struct.ib_fast_reg_page_list* %0, %struct.ib_fast_reg_page_list** %2, align 8
  %3 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %2, align 8
  %4 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %3, i32 0, i32 0
  %5 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %4, align 8
  %6 = call i32 @kfree(%struct.ib_fast_reg_page_list* %5)
  %7 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %2, align 8
  %8 = call i32 @kfree(%struct.ib_fast_reg_page_list* %7)
  ret void
}

declare dso_local i32 @kfree(%struct.ib_fast_reg_page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
