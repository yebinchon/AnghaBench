; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_persistent_commit_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_persistent_commit_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32 }
%struct.pstore = type { i32, i32, i64 }

@WRITE_FLUSH_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_exception_store*, i32)* @persistent_commit_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persistent_commit_merge(%struct.dm_exception_store* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_exception_store*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pstore*, align 8
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dm_exception_store*, %struct.dm_exception_store** %4, align 8
  %10 = call %struct.pstore* @get_info(%struct.dm_exception_store* %9)
  store %struct.pstore* %10, %struct.pstore** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pstore*, %struct.pstore** %8, align 8
  %13 = getelementptr inbounds %struct.pstore, %struct.pstore* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.pstore*, %struct.pstore** %8, align 8
  %24 = load %struct.pstore*, %struct.pstore** %8, align 8
  %25 = getelementptr inbounds %struct.pstore, %struct.pstore* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @clear_exception(%struct.pstore* %23, i32 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.pstore*, %struct.pstore** %8, align 8
  %36 = load i32, i32* @WRITE_FLUSH_FUA, align 4
  %37 = call i32 @area_io(%struct.pstore* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %61

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.pstore*, %struct.pstore** %8, align 8
  %45 = getelementptr inbounds %struct.pstore, %struct.pstore* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.pstore*, %struct.pstore** %8, align 8
  %49 = load %struct.pstore*, %struct.pstore** %8, align 8
  %50 = getelementptr inbounds %struct.pstore, %struct.pstore* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @area_location(%struct.pstore* %48, i32 %51)
  %53 = load %struct.pstore*, %struct.pstore** %8, align 8
  %54 = getelementptr inbounds %struct.pstore, %struct.pstore* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = add nsw i64 %57, 1
  %59 = load %struct.pstore*, %struct.pstore** %8, align 8
  %60 = getelementptr inbounds %struct.pstore, %struct.pstore* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %42, %40
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.pstore* @get_info(%struct.dm_exception_store*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_exception(%struct.pstore*, i32) #1

declare dso_local i32 @area_io(%struct.pstore*, i32) #1

declare dso_local i64 @area_location(%struct.pstore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
