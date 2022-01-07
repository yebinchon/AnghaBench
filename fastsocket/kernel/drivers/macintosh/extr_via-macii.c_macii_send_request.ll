; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_send_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adb_request*, i32)* @macii_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macii_send_request(%struct.adb_request* %0, i32 %1) #0 {
  %3 = alloca %struct.adb_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.adb_request* %0, %struct.adb_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %8 = call i32 @request_is_queued(%struct.adb_request* %7)
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %13 = call i32 @macii_write(%struct.adb_request* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @local_irq_restore(i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %28, %21
  %23 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %24 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @macii_poll()
  br label %22

30:                                               ; preds = %22
  %31 = load %struct.adb_request*, %struct.adb_request** %3, align 8
  %32 = call i32 @request_is_queued(%struct.adb_request* %31)
  %33 = call i32 @BUG_ON(i32 %32)
  br label %34

34:                                               ; preds = %30, %18, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @request_is_queued(%struct.adb_request*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @macii_write(%struct.adb_request*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @macii_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
