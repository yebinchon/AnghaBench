; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_deleteprocs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_deleteprocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call_struc = type { %struct.call_struc*, i32 }

@divert_lock = common dso_local global i32 0, align 4
@divert_head = common dso_local global %struct.call_struc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteprocs() #0 {
  %1 = alloca %struct.call_struc*, align 8
  %2 = alloca %struct.call_struc*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @divert_lock, i64 %4)
  %6 = load %struct.call_struc*, %struct.call_struc** @divert_head, align 8
  store %struct.call_struc* %6, %struct.call_struc** %1, align 8
  store %struct.call_struc* null, %struct.call_struc** @divert_head, align 8
  br label %7

7:                                                ; preds = %10, %0
  %8 = load %struct.call_struc*, %struct.call_struc** %1, align 8
  %9 = icmp ne %struct.call_struc* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.call_struc*, %struct.call_struc** %1, align 8
  %12 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %11, i32 0, i32 1
  %13 = call i32 @del_timer(i32* %12)
  %14 = load %struct.call_struc*, %struct.call_struc** %1, align 8
  store %struct.call_struc* %14, %struct.call_struc** %2, align 8
  %15 = load %struct.call_struc*, %struct.call_struc** %1, align 8
  %16 = getelementptr inbounds %struct.call_struc, %struct.call_struc* %15, i32 0, i32 0
  %17 = load %struct.call_struc*, %struct.call_struc** %16, align 8
  store %struct.call_struc* %17, %struct.call_struc** %1, align 8
  %18 = load %struct.call_struc*, %struct.call_struc** %2, align 8
  %19 = call i32 @kfree(%struct.call_struc* %18)
  br label %7

20:                                               ; preds = %7
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @divert_lock, i64 %21)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @kfree(%struct.call_struc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
