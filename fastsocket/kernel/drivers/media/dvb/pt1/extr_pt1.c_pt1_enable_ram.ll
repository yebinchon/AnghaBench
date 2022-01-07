; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_enable_ram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_enable_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_enable_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_enable_ram(%struct.pt1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  %7 = load i32, i32* @HZ, align 4
  %8 = add nsw i32 %7, 999
  %9 = sdiv i32 %8, 1000
  %10 = call i32 @schedule_timeout_uninterruptible(i32 %9)
  %11 = load %struct.pt1*, %struct.pt1** %3, align 8
  %12 = getelementptr inbounds %struct.pt1, %struct.pt1* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 8474
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 128, i32 166
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %31, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.pt1*, %struct.pt1** %3, align 8
  %25 = call i32 @pt1_do_enable_ram(%struct.pt1* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %19

34:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @pt1_do_enable_ram(%struct.pt1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
