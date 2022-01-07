; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_id_table.c_c4iw_id_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_id_table.c_c4iw_id_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_id_table = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_id_free(%struct.c4iw_id_table* %0, i64 %1) #0 {
  %3 = alloca %struct.c4iw_id_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.c4iw_id_table* %0, %struct.c4iw_id_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = sub nsw i64 %9, %8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %3, align 8
  %17 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %3, align 8
  %22 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit(i64 %20, i32 %23)
  %25 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %3, align 8
  %26 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
