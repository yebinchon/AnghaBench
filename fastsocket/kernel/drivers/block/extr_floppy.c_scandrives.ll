; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_scandrives.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_scandrives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@DP = common dso_local global %struct.TYPE_6__* null, align 8
@current_drive = common dso_local global i32 0, align 4
@N_DRIVE = common dso_local global i32 0, align 4
@UDRS = common dso_local global %struct.TYPE_4__* null, align 8
@UDP = common dso_local global %struct.TYPE_5__* null, align 8
@fdc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scandrives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scandrives() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %62

9:                                                ; preds = %0
  %10 = load i32, i32* @current_drive, align 4
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %56, %9
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @N_DRIVE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %16, %17
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @N_DRIVE, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %2, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDRS, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @UDP, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %15
  br label %56

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @set_fdc(i32 %33)
  %35 = load i32, i32* @fdc, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @UNIT(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @UNIT(i32 %38)
  %40 = shl i32 16, %39
  %41 = or i32 %37, %40
  %42 = call i32 @set_dor(i32 %35, i32 -4, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @UNIT(i32 %43)
  %45 = shl i32 16, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @fdc, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @UNIT(i32 %50)
  %52 = shl i32 16, %51
  %53 = xor i32 %52, -1
  %54 = call i32 @set_dor(i32 %49, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %48, %32
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %11

59:                                               ; preds = %11
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @set_fdc(i32 %60)
  br label %62

62:                                               ; preds = %59, %8
  ret void
}

declare dso_local i32 @set_fdc(i32) #1

declare dso_local i32 @set_dor(i32, i32, i32) #1

declare dso_local i32 @UNIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
