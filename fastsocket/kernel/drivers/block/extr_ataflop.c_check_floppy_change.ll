; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_check_floppy_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_check_floppy_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atari_floppy_struct = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.gendisk = type { %struct.atari_floppy_struct* }

@unit = common dso_local global %struct.atari_floppy_struct* null, align 8
@fake_change = common dso_local global i32 0, align 4
@changed_floppies = common dso_local global i32 0, align 4
@UD = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @check_floppy_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_floppy_change(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.atari_floppy_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 0
  %8 = load %struct.atari_floppy_struct*, %struct.atari_floppy_struct** %7, align 8
  store %struct.atari_floppy_struct* %8, %struct.atari_floppy_struct** %4, align 8
  %9 = load %struct.atari_floppy_struct*, %struct.atari_floppy_struct** %4, align 8
  %10 = load %struct.atari_floppy_struct*, %struct.atari_floppy_struct** @unit, align 8
  %11 = ptrtoint %struct.atari_floppy_struct* %9 to i64
  %12 = ptrtoint %struct.atari_floppy_struct* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @test_bit(i32 %16, i32* @fake_change)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @test_bit(i32 %21, i32* @changed_floppies)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %30

25:                                               ; preds = %20
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UD, i32 0, i32 0), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %24, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
