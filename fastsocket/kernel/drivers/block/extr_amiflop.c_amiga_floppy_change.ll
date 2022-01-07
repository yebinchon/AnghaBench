; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_amiga_floppy_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_amiga_floppy_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amiga_floppy_struct = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.gendisk = type { %struct.amiga_floppy_struct* }

@unit = common dso_local global %struct.amiga_floppy_struct* null, align 8
@amiga_floppy_change.first_time = internal global i32 1, align 4
@ciaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DSKCHANGE = common dso_local global i32 0, align 4
@writepending = common dso_local global i64 0, align 8
@writefromint = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @amiga_floppy_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amiga_floppy_change(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.amiga_floppy_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %8, align 8
  store %struct.amiga_floppy_struct* %9, %struct.amiga_floppy_struct** %4, align 8
  %10 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %11 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** @unit, align 8
  %12 = ptrtoint %struct.amiga_floppy_struct* %10 to i64
  %13 = ptrtoint %struct.amiga_floppy_struct* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 16
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @amiga_floppy_change.first_time, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @amiga_floppy_change.first_time, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @amiga_floppy_change.first_time, align 4
  store i32 %20, i32* %6, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @get_fdc(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @fd_select(i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 0), align 4
  %28 = load i32, i32* @DSKCHANGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @fd_deselect(i32 %33)
  %35 = call i32 (...) @rel_fdc()
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @fd_probe(i32 %40)
  %42 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %43 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.amiga_floppy_struct*, %struct.amiga_floppy_struct** %4, align 8
  %45 = getelementptr inbounds %struct.amiga_floppy_struct, %struct.amiga_floppy_struct* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  store i64 0, i64* @writepending, align 8
  store i64 0, i64* @writefromint, align 8
  store i32 1, i32* %2, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @get_fdc(i32) #1

declare dso_local i32 @fd_select(i32) #1

declare dso_local i32 @fd_deselect(i32) #1

declare dso_local i32 @rel_fdc(...) #1

declare dso_local i32 @fd_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
