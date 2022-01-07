; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-transient.c_dm_transient_snapshot_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-transient.c_dm_transient_snapshot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_transient_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unable to register transient exception store type\00", align 1
@_transient_compat_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Unable to register old-style transient exception store type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_transient_snapshot_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @dm_exception_store_type_register(i32* @_transient_type)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @DMWARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %19

9:                                                ; preds = %0
  %10 = call i32 @dm_exception_store_type_register(i32* @_transient_compat_type)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 @DMWARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @dm_exception_store_type_unregister(i32* @_transient_type)
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %13, %6
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @dm_exception_store_type_register(i32*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_exception_store_type_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
