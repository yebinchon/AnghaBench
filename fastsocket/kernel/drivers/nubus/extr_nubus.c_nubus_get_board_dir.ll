; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_get_board_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_get_board_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_board = type { i32, i32 }
%struct.nubus_dir = type { i32, i64, i32, i32 }
%struct.nubus_dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nubus_get_board_dir(%struct.nubus_board* %0, %struct.nubus_dir* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nubus_board*, align 8
  %5 = alloca %struct.nubus_dir*, align 8
  %6 = alloca %struct.nubus_dirent, align 4
  store %struct.nubus_board* %0, %struct.nubus_board** %4, align 8
  store %struct.nubus_dir* %1, %struct.nubus_dir** %5, align 8
  %7 = load %struct.nubus_board*, %struct.nubus_board** %4, align 8
  %8 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nubus_dir*, %struct.nubus_dir** %5, align 8
  %11 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.nubus_dir*, %struct.nubus_dir** %5, align 8
  %13 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %12, i32 0, i32 3
  store i32 %9, i32* %13, align 4
  %14 = load %struct.nubus_dir*, %struct.nubus_dir** %5, align 8
  %15 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.nubus_board*, %struct.nubus_board** %4, align 8
  %17 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nubus_dir*, %struct.nubus_dir** %5, align 8
  %20 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nubus_dir*, %struct.nubus_dir** %5, align 8
  %22 = call i32 @nubus_readdir(%struct.nubus_dir* %21, %struct.nubus_dirent* %6)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.nubus_dir*, %struct.nubus_dir** %5, align 8
  %27 = call i32 @nubus_get_subdir(%struct.nubus_dirent* %6, %struct.nubus_dir* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @nubus_readdir(%struct.nubus_dir*, %struct.nubus_dirent*) #1

declare dso_local i32 @nubus_get_subdir(%struct.nubus_dirent*, %struct.nubus_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
