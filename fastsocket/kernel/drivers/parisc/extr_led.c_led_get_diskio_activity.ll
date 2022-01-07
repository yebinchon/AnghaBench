; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_led.c_led_get_diskio_activity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_led.c_led_get_diskio_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@led_get_diskio_activity.last_pgpgin = internal global i64 0, align 8
@led_get_diskio_activity.last_pgpgout = internal global i64 0, align 8
@NR_VM_EVENT_ITEMS = common dso_local global i32 0, align 4
@PGPGIN = common dso_local global i64 0, align 8
@PGPGOUT = common dso_local global i64 0, align 8
@LED_DISK_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @led_get_diskio_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_get_diskio_activity() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @NR_VM_EVENT_ITEMS, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i64, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = call i32 @all_vm_events(i64* %7)
  %9 = load i64, i64* @PGPGIN, align 8
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @led_get_diskio_activity.last_pgpgin, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %0
  %15 = load i64, i64* @PGPGOUT, align 8
  %16 = getelementptr inbounds i64, i64* %7, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @led_get_diskio_activity.last_pgpgout, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %14, %0
  %21 = phi i1 [ true, %0 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i64, i64* @PGPGIN, align 8
  %24 = getelementptr inbounds i64, i64* %7, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* @led_get_diskio_activity.last_pgpgin, align 8
  %26 = load i64, i64* @PGPGOUT, align 8
  %27 = getelementptr inbounds i64, i64* %7, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @led_get_diskio_activity.last_pgpgout, align 8
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @LED_DISK_IO, align 4
  br label %34

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %36)
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @all_vm_events(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
