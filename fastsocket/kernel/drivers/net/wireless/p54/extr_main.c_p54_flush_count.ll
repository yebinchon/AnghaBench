; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_flush_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_flush_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@P54_QUEUE_NUM = common dso_local global i32 0, align 4
@P54_QUEUE_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54_common*)* @p54_flush_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_flush_count(%struct.p54_common* %0) #0 {
  %2 = alloca %struct.p54_common*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @P54_QUEUE_NUM, align 4
  %6 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %7 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %8)
  %10 = icmp ugt i32 %5, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load i32, i32* @P54_QUEUE_MGMT, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @P54_QUEUE_NUM, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %20 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
