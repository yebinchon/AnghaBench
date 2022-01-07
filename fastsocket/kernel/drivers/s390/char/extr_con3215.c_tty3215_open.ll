; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_tty3215_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_tty3215_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { %struct.tty_struct* }
%struct.tty_struct = type { i32, i64, %struct.raw3215_info* }
%struct.file = type { i32 }

@NR_3215 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@raw3215 = common dso_local global %struct.raw3215_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @tty3215_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty3215_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.raw3215_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NR_3215, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %14
  %22 = load %struct.raw3215_info**, %struct.raw3215_info*** @raw3215, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.raw3215_info*, %struct.raw3215_info** %22, i64 %24
  %26 = load %struct.raw3215_info*, %struct.raw3215_info** %25, align 8
  store %struct.raw3215_info* %26, %struct.raw3215_info** %6, align 8
  %27 = load %struct.raw3215_info*, %struct.raw3215_info** %6, align 8
  %28 = icmp eq %struct.raw3215_info* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %21
  %33 = load %struct.raw3215_info*, %struct.raw3215_info** %6, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 2
  store %struct.raw3215_info* %33, %struct.raw3215_info** %35, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %37 = load %struct.raw3215_info*, %struct.raw3215_info** %6, align 8
  %38 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %37, i32 0, i32 0
  store %struct.tty_struct* %36, %struct.tty_struct** %38, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.raw3215_info*, %struct.raw3215_info** %6, align 8
  %42 = call i32 @raw3215_startup(%struct.raw3215_info* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %45, %29, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @raw3215_startup(%struct.raw3215_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
