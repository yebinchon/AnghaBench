; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_is_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_is_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i64*, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"test LEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_is_mapped(%struct.ubi_volume_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %8 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %7, i32 0, i32 0
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  store %struct.ubi_volume* %9, %struct.ubi_volume** %6, align 8
  %10 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %11 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @dbg_gen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %20 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %28 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EBADF, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %36 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %31, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
