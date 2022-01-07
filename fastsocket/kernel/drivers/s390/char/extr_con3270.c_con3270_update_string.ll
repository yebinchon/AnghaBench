; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_update_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_update_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.string = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con3270*, %struct.string*, i32)* @con3270_update_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_update_string(%struct.con3270* %0, %struct.string* %1, i32 %2) #0 {
  %4 = alloca %struct.con3270*, align 8
  %5 = alloca %struct.string*, align 8
  %6 = alloca i32, align 4
  store %struct.con3270* %0, %struct.con3270** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.string*, %struct.string** %5, align 8
  %8 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.con3270*, %struct.con3270** %4, align 8
  %11 = getelementptr inbounds %struct.con3270, %struct.con3270* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 5
  %15 = icmp sge i32 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.con3270*, %struct.con3270** %4, align 8
  %19 = getelementptr inbounds %struct.con3270, %struct.con3270* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.string*, %struct.string** %5, align 8
  %23 = getelementptr inbounds %struct.string, %struct.string* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.string*, %struct.string** %5, align 8
  %26 = getelementptr inbounds %struct.string, %struct.string* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = sub nsw i32 %28, 3
  %30 = load %struct.con3270*, %struct.con3270** %4, align 8
  %31 = getelementptr inbounds %struct.con3270, %struct.con3270* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = mul nsw i32 %33, %35
  %37 = call i32 @raw3270_buffer_address(i32 %21, i32 %29, i32 %36)
  br label %38

38:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @raw3270_buffer_address(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
