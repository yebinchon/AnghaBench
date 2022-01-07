; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_update_user_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_update_user_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }
%struct.uni_pagedir = type { i32 }

@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@USER_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_user_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_user_maps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.uni_pagedir*, align 8
  %3 = alloca %struct.uni_pagedir*, align 8
  store %struct.uni_pagedir* null, %struct.uni_pagedir** %3, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %50, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %53

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @vc_cons_allocated(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %50

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.uni_pagedir*
  store %struct.uni_pagedir* %23, %struct.uni_pagedir** %2, align 8
  %24 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %25 = icmp ne %struct.uni_pagedir* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %13
  %27 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %28 = load %struct.uni_pagedir*, %struct.uni_pagedir** %3, align 8
  %29 = icmp ne %struct.uni_pagedir* %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %38 = load i32, i32* @USER_MAP, align 4
  %39 = call i32 @set_inverse_transl(%struct.TYPE_5__* %36, %struct.uni_pagedir* %37, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  %47 = call i32 @set_inverse_trans_unicode(%struct.TYPE_5__* %45, %struct.uni_pagedir* %46)
  %48 = load %struct.uni_pagedir*, %struct.uni_pagedir** %2, align 8
  store %struct.uni_pagedir* %48, %struct.uni_pagedir** %3, align 8
  br label %49

49:                                               ; preds = %30, %26, %13
  br label %50

50:                                               ; preds = %49, %12
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %4

53:                                               ; preds = %4
  ret void
}

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i32 @set_inverse_transl(%struct.TYPE_5__*, %struct.uni_pagedir*, i32) #1

declare dso_local i32 @set_inverse_trans_unicode(%struct.TYPE_5__*, %struct.uni_pagedir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
