; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-target.c_dm_get_target_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-target.c_dm_get_target_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.target_type* @dm_get_target_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.target_type*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.target_type* @get_target_type(i8* %4)
  store %struct.target_type* %5, %struct.target_type** %3, align 8
  %6 = load %struct.target_type*, %struct.target_type** %3, align 8
  %7 = icmp ne %struct.target_type* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @load_module(i8* %9)
  %11 = load i8*, i8** %2, align 8
  %12 = call %struct.target_type* @get_target_type(i8* %11)
  store %struct.target_type* %12, %struct.target_type** %3, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.target_type*, %struct.target_type** %3, align 8
  ret %struct.target_type* %14
}

declare dso_local %struct.target_type* @get_target_type(i8*) #1

declare dso_local i32 @load_module(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
