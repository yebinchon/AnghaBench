; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_context_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_context_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_3__*, %struct.TYPE_4__, %struct.raid_type*, %struct.dm_target* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.dm_target = type { i8* }
%struct.raid_type = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Insufficient number of devices\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot allocate raid context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raid_set* (%struct.dm_target*, %struct.raid_type*, i32)* @context_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raid_set* @context_alloc(%struct.dm_target* %0, %struct.raid_type* %1, i32 %2) #0 {
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.raid_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.raid_set*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.raid_type* %1, %struct.raid_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %12 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ule i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.raid_set* @ERR_PTR(i32 %19)
  store %struct.raid_set* %20, %struct.raid_set** %4, align 8
  br label %101

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 64, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.raid_set* @kzalloc(i32 %26, i32 %27)
  store %struct.raid_set* %28, %struct.raid_set** %9, align 8
  %29 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %30 = icmp ne %struct.raid_set* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.raid_set* @ERR_PTR(i32 %35)
  store %struct.raid_set* %36, %struct.raid_set** %4, align 8
  br label %101

37:                                               ; preds = %21
  %38 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %39 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %38, i32 0, i32 1
  %40 = call i32 @mddev_init(%struct.TYPE_4__* %39)
  %41 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %42 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %43 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %42, i32 0, i32 3
  store %struct.dm_target* %41, %struct.dm_target** %43, align 8
  %44 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %45 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %46 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %45, i32 0, i32 2
  store %struct.raid_type* %44, %struct.raid_type** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %49 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %52 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %55 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  store i32 %53, i32* %56, align 8
  %57 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %58 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %62 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 4
  %64 = load %struct.raid_type*, %struct.raid_type** %6, align 8
  %65 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %68 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %71 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %75 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 4
  %77 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %78 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %81 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %96, %37
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %89 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @md_rdev_init(i32* %94)
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %83

99:                                               ; preds = %83
  %100 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  store %struct.raid_set* %100, %struct.raid_set** %4, align 8
  br label %101

101:                                              ; preds = %99, %31, %15
  %102 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  ret %struct.raid_set* %102
}

declare dso_local %struct.raid_set* @ERR_PTR(i32) #1

declare dso_local %struct.raid_set* @kzalloc(i32, i32) #1

declare dso_local i32 @mddev_init(%struct.TYPE_4__*) #1

declare dso_local i32 @md_rdev_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
