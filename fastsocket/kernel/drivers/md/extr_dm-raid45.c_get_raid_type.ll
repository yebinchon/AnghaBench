; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_get_raid_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_get_raid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_type = type { i32 }

@raid_types = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raid_type* (i8*)* @get_raid_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raid_type* @get_raid_type(i8* %0) #0 {
  %2 = alloca %struct.raid_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.raid_type*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @raid_types, align 4
  %6 = call %struct.raid_type* @ARRAY_END(i32 %5)
  store %struct.raid_type* %6, %struct.raid_type** %4, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.raid_type*, %struct.raid_type** %4, align 8
  %9 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %8, i32 -1
  store %struct.raid_type* %9, %struct.raid_type** %4, align 8
  %10 = load i32, i32* @raid_types, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.raid_type*
  %13 = icmp ugt %struct.raid_type* %8, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = load %struct.raid_type*, %struct.raid_type** %4, align 8
  %16 = getelementptr inbounds %struct.raid_type, %struct.raid_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcmp(i32 %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load %struct.raid_type*, %struct.raid_type** %4, align 8
  store %struct.raid_type* %22, %struct.raid_type** %2, align 8
  br label %25

23:                                               ; preds = %14
  br label %7

24:                                               ; preds = %7
  store %struct.raid_type* null, %struct.raid_type** %2, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.raid_type*, %struct.raid_type** %2, align 8
  ret %struct.raid_type* %26
}

declare dso_local %struct.raid_type* @ARRAY_END(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
