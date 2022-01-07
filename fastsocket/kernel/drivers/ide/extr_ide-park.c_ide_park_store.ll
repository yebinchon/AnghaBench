; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-park.c_ide_park_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-park.c_ide_park_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@ide_setting_mtx = common dso_local global i32 0, align 4
@IDE_DFLAG_NO_UNLOAD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IDE_DFLAG_PARKED = common dso_local global i32 0, align 4
@ide_disk = common dso_local global i64 0, align 8
@MAX_PARK_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_park_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.TYPE_4__* @to_ide_device(%struct.device* %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strict_strtol(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = icmp slt i64 %20, -2
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %100

25:                                               ; preds = %19
  %26 = load i64, i64* %11, align 8
  %27 = icmp sgt i64 %26, 30000
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  store i64 30000, i64* %11, align 8
  %29 = load i32, i32* @EOVERFLOW, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = call i32 @mutex_lock(i32* @ide_setting_mtx)
  %33 = load i64, i64* %11, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IDE_DFLAG_NO_UNLOAD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %61

45:                                               ; preds = %35
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IDE_DFLAG_PARKED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48, %45
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @msecs_to_jiffies(i64 %57)
  %59 = call i32 @issue_park_cmd(%struct.TYPE_4__* %56, i32 %58)
  br label %60

60:                                               ; preds = %55, %48
  br label %61

61:                                               ; preds = %60, %42
  br label %88

62:                                               ; preds = %31
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ide_disk, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load i64, i64* %11, align 8
  switch i64 %69, label %83 [
    i64 -1, label %70
    i64 -2, label %77
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* @IDE_DFLAG_NO_UNLOAD, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %83

77:                                               ; preds = %68
  %78 = load i32, i32* @IDE_DFLAG_NO_UNLOAD, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %68, %77, %70
  br label %87

84:                                               ; preds = %62
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %83
  br label %88

88:                                               ; preds = %87, %61
  %89 = call i32 @mutex_unlock(i32* @ide_setting_mtx)
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  br label %97

95:                                               ; preds = %88
  %96 = load i64, i64* %9, align 8
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i64 [ %94, %92 ], [ %96, %95 ]
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %22
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_4__* @to_ide_device(%struct.device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @issue_park_cmd(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
