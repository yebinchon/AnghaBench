; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_nubus.c_nubus_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_dir = type { i32, i32, i32 }
%struct.nubus_dirent = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nubus_readdir(%struct.nubus_dir* %0, %struct.nubus_dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nubus_dir*, align 8
  %5 = alloca %struct.nubus_dirent*, align 8
  %6 = alloca i32, align 4
  store %struct.nubus_dir* %0, %struct.nubus_dir** %4, align 8
  store %struct.nubus_dirent* %1, %struct.nubus_dirent** %5, align 8
  %7 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %8 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %14 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %17 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %19 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %18, i32 0, i32 2
  %20 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %21 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nubus_get_rom(i32* %19, i32 4, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, -16777216
  %26 = icmp eq i32 %25, -16777216
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %29 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  store i32 -1, i32* %3, align 4
  br label %44

30:                                               ; preds = %12
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 24
  %33 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %34 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 16777215
  %37 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %38 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %40 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %43 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %30, %27, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @nubus_get_rom(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
