; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_put_character.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_put_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, i64, i32, i32, %struct.TYPE_2__, %struct.tty3270_line* }
%struct.TYPE_2__ = type { i32* }
%struct.tty3270_line = type { i64, %struct.tty3270_cell* }
%struct.tty3270_cell = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, i8)* @tty3270_put_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_put_character(%struct.tty3270* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.tty3270_line*, align 8
  %6 = alloca %struct.tty3270_cell*, align 8
  store %struct.tty3270* %0, %struct.tty3270** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %8 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %7, i32 0, i32 5
  %9 = load %struct.tty3270_line*, %struct.tty3270_line** %8, align 8
  %10 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %11 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %9, i64 %13
  store %struct.tty3270_line* %14, %struct.tty3270_line** %5, align 8
  %15 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %16 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %19 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %31, %22
  %24 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %25 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %28 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %23
  %32 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %33 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %32, i32 0, i32 1
  %34 = load %struct.tty3270_cell*, %struct.tty3270_cell** %33, align 8
  %35 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %36 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %34, i64 %37
  store %struct.tty3270_cell* %38, %struct.tty3270_cell** %6, align 8
  %39 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %40 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 32
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %46 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %48 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %51 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %53 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %56 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %58 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %23

61:                                               ; preds = %23
  %62 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %63 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %61, %2
  %67 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %68 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %67, i32 0, i32 1
  %69 = load %struct.tty3270_cell*, %struct.tty3270_cell** %68, align 8
  %70 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %71 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %69, i64 %72
  store %struct.tty3270_cell* %73, %struct.tty3270_cell** %6, align 8
  %74 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %75 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i8, i8* %4, align 1
  %79 = sext i8 %78 to i32
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %84 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %86 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %89 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %91 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %94 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
