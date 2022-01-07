; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_setdbcnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_setdbcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, i32, i32, i32, %struct.aoetgt** }
%struct.aoetgt = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"aoe: e%ld.%d: setting %d byte data frames\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*)* @setdbcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setdbcnt(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.aoedev*, align 8
  %3 = alloca %struct.aoetgt**, align 8
  %4 = alloca %struct.aoetgt**, align 8
  %5 = alloca i32, align 4
  store %struct.aoedev* %0, %struct.aoedev** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %7 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %6, i32 0, i32 4
  %8 = load %struct.aoetgt**, %struct.aoetgt*** %7, align 8
  store %struct.aoetgt** %8, %struct.aoetgt*** %3, align 8
  %9 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %10 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %11 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %9, i64 %13
  store %struct.aoetgt** %14, %struct.aoetgt*** %4, align 8
  br label %15

15:                                               ; preds = %41, %1
  %16 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %17 = load %struct.aoetgt**, %struct.aoetgt*** %4, align 8
  %18 = icmp ult %struct.aoetgt** %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %21 = load %struct.aoetgt*, %struct.aoetgt** %20, align 8
  %22 = icmp ne %struct.aoetgt* %21, null
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %44

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %31 = load %struct.aoetgt*, %struct.aoetgt** %30, align 8
  %32 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28, %25
  %36 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %37 = load %struct.aoetgt*, %struct.aoetgt** %36, align 8
  %38 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %28
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %43 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %42, i32 1
  store %struct.aoetgt** %43, %struct.aoetgt*** %3, align 8
  br label %15

44:                                               ; preds = %23
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %47 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %53 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %55 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %58 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
