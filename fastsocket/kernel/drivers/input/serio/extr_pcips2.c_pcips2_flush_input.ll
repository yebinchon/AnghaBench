; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_pcips2.c_pcips2_flush_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_pcips2.c_pcips2_flush_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcips2_data = type { i64 }

@PS2_STATUS = common dso_local global i64 0, align 8
@PS2_STAT_RXFULL = common dso_local global i8 0, align 1
@PS2_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcips2_data*)* @pcips2_flush_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcips2_flush_input(%struct.pcips2_data* %0) #0 {
  %2 = alloca %struct.pcips2_data*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.pcips2_data* %0, %struct.pcips2_data** %2, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load %struct.pcips2_data*, %struct.pcips2_data** %2, align 8
  %7 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PS2_STATUS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call zeroext i8 @inb(i64 %10)
  store i8 %11, i8* %3, align 1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @PS2_STAT_RXFULL, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %36

19:                                               ; preds = %5
  %20 = load %struct.pcips2_data*, %struct.pcips2_data** %2, align 8
  %21 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PS2_DATA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call zeroext i8 @inb(i64 %24)
  store i8 %25, i8* %4, align 1
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i8, i8* %4, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %36

34:                                               ; preds = %29, %19
  br label %35

35:                                               ; preds = %34
  br i1 true, label %5, label %36

36:                                               ; preds = %35, %33, %18
  ret void
}

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
