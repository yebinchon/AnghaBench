; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio_raw.c_serio_raw_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio_raw.c_serio_raw_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio_raw = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio_raw*)* @serio_raw_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serio_raw_cleanup(%struct.serio_raw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serio_raw*, align 8
  store %struct.serio_raw* %0, %struct.serio_raw** %3, align 8
  %4 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %5 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %11 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %10, i32 0, i32 2
  %12 = call i32 @misc_deregister(i32* %11)
  %13 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %14 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %13, i32 0, i32 1
  %15 = call i32 @list_del_init(i32* %14)
  %16 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %17 = call i32 @kfree(%struct.serio_raw* %16)
  store i32 1, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.serio_raw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
