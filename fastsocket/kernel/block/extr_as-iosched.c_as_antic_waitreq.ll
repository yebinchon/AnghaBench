; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_antic_waitreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_antic_waitreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i64, i64, i32 }

@ANTIC_FINISHED = common dso_local global i64 0, align 8
@ANTIC_OFF = common dso_local global i64 0, align 8
@ANTIC_WAIT_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_data*)* @as_antic_waitreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_antic_waitreq(%struct.as_data* %0) #0 {
  %2 = alloca %struct.as_data*, align 8
  store %struct.as_data* %0, %struct.as_data** %2, align 8
  %3 = load %struct.as_data*, %struct.as_data** %2, align 8
  %4 = getelementptr inbounds %struct.as_data, %struct.as_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ANTIC_FINISHED, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.as_data*, %struct.as_data** %2, align 8
  %11 = getelementptr inbounds %struct.as_data, %struct.as_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ANTIC_OFF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.as_data*, %struct.as_data** %2, align 8
  %17 = getelementptr inbounds %struct.as_data, %struct.as_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.as_data*, %struct.as_data** %2, align 8
  %22 = getelementptr inbounds %struct.as_data, %struct.as_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15
  %26 = load %struct.as_data*, %struct.as_data** %2, align 8
  %27 = call i32 @as_antic_waitnext(%struct.as_data* %26)
  br label %32

28:                                               ; preds = %20
  %29 = load i64, i64* @ANTIC_WAIT_REQ, align 8
  %30 = load %struct.as_data*, %struct.as_data** %2, align 8
  %31 = getelementptr inbounds %struct.as_data, %struct.as_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @as_antic_waitnext(%struct.as_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
