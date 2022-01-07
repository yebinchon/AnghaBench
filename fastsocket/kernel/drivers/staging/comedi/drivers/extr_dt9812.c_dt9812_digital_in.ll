; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_digital_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_digital_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot_dt9812 = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@F020_SFR_P3 = common dso_local global i32 0, align 4
@F020_SFR_P1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot_dt9812*, i32*)* @dt9812_digital_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_digital_in(%struct.slot_dt9812* %0, i32* %1) #0 {
  %3 = alloca %struct.slot_dt9812*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  store %struct.slot_dt9812* %0, %struct.slot_dt9812** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.slot_dt9812*, %struct.slot_dt9812** %3, align 8
  %11 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %10, i32 0, i32 0
  %12 = call i32 @down(i32* %11)
  %13 = load %struct.slot_dt9812*, %struct.slot_dt9812** %3, align 8
  %14 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* @F020_SFR_P3, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @F020_SFR_P1, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.slot_dt9812*, %struct.slot_dt9812** %3, align 8
  %23 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = call i32 @dt9812_read_multiple_registers(i64 %24, i32 2, i32* %25, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %17
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 127
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 8
  %37 = shl i32 %36, 4
  %38 = or i32 %33, %37
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %17
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.slot_dt9812*, %struct.slot_dt9812** %3, align 8
  %43 = getelementptr inbounds %struct.slot_dt9812, %struct.slot_dt9812* %42, i32 0, i32 0
  %44 = call i32 @up(i32* %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @dt9812_read_multiple_registers(i64, i32, i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
