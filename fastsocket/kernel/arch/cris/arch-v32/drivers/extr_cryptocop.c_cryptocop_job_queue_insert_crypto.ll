; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_job_queue_insert_crypto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_job_queue_insert_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocop_operation = type { i32 }

@cryptocop_prio_kernel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cryptocop_job_queue_insert_crypto(%struct.cryptocop_operation* %0) #0 {
  %2 = alloca %struct.cryptocop_operation*, align 8
  store %struct.cryptocop_operation* %0, %struct.cryptocop_operation** %2, align 8
  %3 = load i32, i32* @cryptocop_prio_kernel, align 4
  %4 = load %struct.cryptocop_operation*, %struct.cryptocop_operation** %2, align 8
  %5 = call i32 @cryptocop_job_queue_insert(i32 %3, %struct.cryptocop_operation* %4)
  ret i32 %5
}

declare dso_local i32 @cryptocop_job_queue_insert(i32, %struct.cryptocop_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
