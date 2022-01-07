; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-delay.c_delay_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-delay.c_delay_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.delay_c* }
%struct.delay_c = type { i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, i64, i32, i32, i8*)*, i8*)* @delay_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, i64, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32 (%struct.dm_target*, i64, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.delay_c*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 (%struct.dm_target*, i64, i32, i32, i8*)* %1, i32 (%struct.dm_target*, i64, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 1
  %11 = load %struct.delay_c*, %struct.delay_c** %10, align 8
  store %struct.delay_c* %11, %struct.delay_c** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32 (%struct.dm_target*, i64, i32, i32, i8*)*, i32 (%struct.dm_target*, i64, i32, i32, i8*)** %5, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %14 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %15 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %18 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %21 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 %12(%struct.dm_target* %13, i64 %16, i32 %19, i32 %22, i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %48

28:                                               ; preds = %3
  %29 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %30 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32 (%struct.dm_target*, i64, i32, i32, i8*)*, i32 (%struct.dm_target*, i64, i32, i32, i8*)** %5, align 8
  %35 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %36 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %37 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %40 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %43 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 %34(%struct.dm_target* %35, i64 %38, i32 %41, i32 %44, i8* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %33, %28
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
