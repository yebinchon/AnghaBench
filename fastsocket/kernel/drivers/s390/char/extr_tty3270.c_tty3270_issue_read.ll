; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_issue_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_issue_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.raw3270_request = type { %struct.tty3270*, i32 }

@tty3270_read_callback = common dso_local global i32 0, align 4
@TC_READMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, i32)* @tty3270_issue_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_issue_read(%struct.tty3270* %0, i32 %1) #0 {
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.raw3270_request*, align 8
  %6 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %8 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %7, i32 0, i32 0
  %9 = call %struct.raw3270_request* @xchg(i32* %8, %struct.raw3270_request* null)
  store %struct.raw3270_request* %9, %struct.raw3270_request** %5, align 8
  %10 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %11 = icmp ne %struct.raw3270_request* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %57

13:                                               ; preds = %2
  %14 = load i32, i32* @tty3270_read_callback, align 4
  %15 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %16 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %18 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %19 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %18, i32 0, i32 0
  store %struct.tty3270* %17, %struct.tty3270** %19, align 8
  %20 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %21 = load i32, i32* @TC_READMOD, align 4
  %22 = call i32 @raw3270_request_set_cmd(%struct.raw3270_request* %20, i32 %21)
  %23 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %24 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %25 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %30 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @raw3270_request_set_data(%struct.raw3270_request* %23, i32 %28, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %13
  %38 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %39 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %38, i32 0, i32 1
  %40 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %41 = call i32 @raw3270_start(i32* %39, %struct.raw3270_request* %40)
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %13
  %43 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %44 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %43, i32 0, i32 1
  %45 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %46 = call i32 @raw3270_start_irq(i32* %44, %struct.raw3270_request* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %52 = call i32 @raw3270_request_reset(%struct.raw3270_request* %51)
  %53 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %54 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %53, i32 0, i32 0
  %55 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %56 = call %struct.raw3270_request* @xchg(i32* %54, %struct.raw3270_request* %55)
  br label %57

57:                                               ; preds = %12, %50, %47
  ret void
}

declare dso_local %struct.raw3270_request* @xchg(i32*, %struct.raw3270_request*) #1

declare dso_local i32 @raw3270_request_set_cmd(%struct.raw3270_request*, i32) #1

declare dso_local i32 @raw3270_request_set_data(%struct.raw3270_request*, i32, i32) #1

declare dso_local i32 @raw3270_start(i32*, %struct.raw3270_request*) #1

declare dso_local i32 @raw3270_start_irq(i32*, %struct.raw3270_request*) #1

declare dso_local i32 @raw3270_request_reset(%struct.raw3270_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
