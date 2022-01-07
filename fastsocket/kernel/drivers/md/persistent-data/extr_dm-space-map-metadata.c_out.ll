; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-metadata.c_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-metadata.c_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_metadata = type { i32, i32 }
%struct.block_op = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"lost track of recursion depth\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bug in bop ring buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_metadata*)* @out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @out(%struct.sm_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sm_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_op, align 4
  store %struct.sm_metadata* %0, %struct.sm_metadata** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.sm_metadata*, %struct.sm_metadata** %3, align 8
  %7 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @DMERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.sm_metadata*, %struct.sm_metadata** %3, align 8
  %16 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %40, %19
  %21 = load %struct.sm_metadata*, %struct.sm_metadata** %3, align 8
  %22 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %21, i32 0, i32 1
  %23 = call i32 @brb_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.sm_metadata*, %struct.sm_metadata** %3, align 8
  %28 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %27, i32 0, i32 1
  %29 = call i32 @brb_pop(i32* %28, %struct.block_op* %5)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @DMERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %41

34:                                               ; preds = %26
  %35 = load %struct.sm_metadata*, %struct.sm_metadata** %3, align 8
  %36 = call i32 @commit_bop(%struct.sm_metadata* %35, %struct.block_op* %5)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %34
  br label %20

41:                                               ; preds = %39, %32, %20
  br label %42

42:                                               ; preds = %41, %14
  %43 = load %struct.sm_metadata*, %struct.sm_metadata** %3, align 8
  %44 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @brb_empty(i32*) #1

declare dso_local i32 @brb_pop(i32*, %struct.block_op*) #1

declare dso_local i32 @commit_bop(%struct.sm_metadata*, %struct.block_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
