; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_fdc_dtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_fdc_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@raw_cmd = common dso_local global %struct.TYPE_3__* null, align 8
@FDCS = common dso_local global %struct.TYPE_4__* null, align 8
@FD_DCR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@floppy_ready = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fdc_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdc_dtr() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raw_cmd, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FDCS, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %32

11:                                               ; preds = %0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raw_cmd, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 3
  %16 = load i32, i32* @FD_DCR, align 4
  %17 = call i32 @fd_outb(i32 %15, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @raw_cmd, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FDCS, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* @HZ, align 8
  %26 = mul i64 2, %25
  %27 = udiv i64 %26, 100
  %28 = add i64 %24, %27
  %29 = load i64, i64* @floppy_ready, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @fd_wait_for_completion(i64 %28, i32 %30)
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %11, %10
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @fd_outb(i32, i32) #1

declare dso_local i32 @fd_wait_for_completion(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
