; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c_qbuf_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c_qbuf_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32, i32, i32 }
%struct.orinoco_scan_data = type { i32, i32, i32, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.orinoco_private*, i8*, i32, i32)* @qbuf_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qbuf_scan(%struct.orinoco_private* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.orinoco_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.orinoco_scan_data*, align 8
  %10 = alloca i64, align 8
  store %struct.orinoco_private* %0, %struct.orinoco_private** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.orinoco_scan_data* @kmalloc(i32 24, i32 %11)
  store %struct.orinoco_scan_data* %12, %struct.orinoco_scan_data** %9, align 8
  %13 = load %struct.orinoco_scan_data*, %struct.orinoco_scan_data** %9, align 8
  %14 = icmp ne %struct.orinoco_scan_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %42

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.orinoco_scan_data*, %struct.orinoco_scan_data** %9, align 8
  %19 = getelementptr inbounds %struct.orinoco_scan_data, %struct.orinoco_scan_data* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.orinoco_scan_data*, %struct.orinoco_scan_data** %9, align 8
  %22 = getelementptr inbounds %struct.orinoco_scan_data, %struct.orinoco_scan_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.orinoco_scan_data*, %struct.orinoco_scan_data** %9, align 8
  %25 = getelementptr inbounds %struct.orinoco_scan_data, %struct.orinoco_scan_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %27 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %26, i32 0, i32 1
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.orinoco_scan_data*, %struct.orinoco_scan_data** %9, align 8
  %31 = getelementptr inbounds %struct.orinoco_scan_data, %struct.orinoco_scan_data* %30, i32 0, i32 2
  %32 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %33 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %32, i32 0, i32 2
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %36 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %35, i32 0, i32 1
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  %40 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %39, i32 0, i32 0
  %41 = call i32 @schedule_work(i32* %40)
  br label %42

42:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.orinoco_scan_data* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
