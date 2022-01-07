; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_persistent_prepare_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_persistent_prepare_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32 }
%struct.pstore = type { i32, i32, i32 }
%struct.core_exception = type { i32, i32 }

@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_exception_store*, i32*, i32*)* @persistent_prepare_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @persistent_prepare_merge(%struct.dm_exception_store* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_exception_store*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pstore*, align 8
  %9 = alloca %struct.core_exception, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %13 = call %struct.pstore* @get_info(%struct.dm_exception_store* %12)
  store %struct.pstore* %13, %struct.pstore** %8, align 8
  %14 = load %struct.pstore*, %struct.pstore** %8, align 8
  %15 = getelementptr inbounds %struct.pstore, %struct.pstore* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %3
  %19 = load %struct.pstore*, %struct.pstore** %8, align 8
  %20 = getelementptr inbounds %struct.pstore, %struct.pstore* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %92

24:                                               ; preds = %18
  %25 = load %struct.pstore*, %struct.pstore** %8, align 8
  %26 = getelementptr inbounds %struct.pstore, %struct.pstore* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.pstore*, %struct.pstore** %8, align 8
  %30 = load i32, i32* @READ, align 4
  %31 = call i32 @area_io(%struct.pstore* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %92

36:                                               ; preds = %24
  %37 = load %struct.pstore*, %struct.pstore** %8, align 8
  %38 = getelementptr inbounds %struct.pstore, %struct.pstore* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pstore*, %struct.pstore** %8, align 8
  %41 = getelementptr inbounds %struct.pstore, %struct.pstore* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %3
  %43 = load %struct.pstore*, %struct.pstore** %8, align 8
  %44 = load %struct.pstore*, %struct.pstore** %8, align 8
  %45 = getelementptr inbounds %struct.pstore, %struct.pstore* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @read_exception(%struct.pstore* %43, i32 %47, %struct.core_exception* %9)
  %49 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %87, %42
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.pstore*, %struct.pstore** %8, align 8
  %58 = getelementptr inbounds %struct.pstore, %struct.pstore* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %55
  %62 = load %struct.pstore*, %struct.pstore** %8, align 8
  %63 = load %struct.pstore*, %struct.pstore** %8, align 8
  %64 = getelementptr inbounds %struct.pstore, %struct.pstore* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 @read_exception(%struct.pstore* %62, i32 %68, %struct.core_exception* %9)
  %70 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  %76 = icmp ne i32 %71, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %61
  %78 = getelementptr inbounds %struct.core_exception, %struct.core_exception* %9, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = icmp ne i32 %79, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77, %61
  br label %90

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %55

90:                                               ; preds = %85, %55
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %34, %23
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.pstore* @get_info(%struct.dm_exception_store*) #1

declare dso_local i32 @area_io(%struct.pstore*, i32) #1

declare dso_local i32 @read_exception(%struct.pstore*, i32, %struct.core_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
