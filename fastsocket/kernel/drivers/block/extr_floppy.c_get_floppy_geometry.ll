; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_get_floppy_geometry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_get_floppy_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_struct = type { i32 }

@floppy_type = common dso_local global %struct.floppy_struct* null, align 8
@current_type = common dso_local global %struct.floppy_struct** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.floppy_struct**)* @get_floppy_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_floppy_geometry(i32 %0, i32 %1, %struct.floppy_struct** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.floppy_struct**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.floppy_struct** %2, %struct.floppy_struct*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.floppy_struct*, %struct.floppy_struct** @floppy_type, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %11, i64 %13
  %15 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  store %struct.floppy_struct* %14, %struct.floppy_struct** %15, align 8
  br label %28

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @LOCK_FDC(i32 %17, i32 0)
  %19 = call i32 @poll_drive(i32 0, i32 0)
  %20 = call i32 @CALL(i32 %19)
  %21 = call i32 (...) @process_fd_request()
  %22 = load %struct.floppy_struct**, %struct.floppy_struct*** @current_type, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.floppy_struct*, %struct.floppy_struct** %22, i64 %24
  %26 = load %struct.floppy_struct*, %struct.floppy_struct** %25, align 8
  %27 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  store %struct.floppy_struct* %26, %struct.floppy_struct** %27, align 8
  br label %28

28:                                               ; preds = %16, %10
  %29 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  %30 = load %struct.floppy_struct*, %struct.floppy_struct** %29, align 8
  %31 = icmp ne %struct.floppy_struct* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @LOCK_FDC(i32, i32) #1

declare dso_local i32 @CALL(i32) #1

declare dso_local i32 @poll_drive(i32, i32) #1

declare dso_local i32 @process_fd_request(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
