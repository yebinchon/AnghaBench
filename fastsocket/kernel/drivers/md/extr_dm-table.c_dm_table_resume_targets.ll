; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_resume_targets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_resume_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, %struct.dm_target*, i32 }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: %s: preresume failed, error = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_table_resume_targets(%struct.dm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.dm_target*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %11 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %16 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %15, i32 0, i32 1
  %17 = load %struct.dm_target*, %struct.dm_target** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i64 %19
  store %struct.dm_target* %20, %struct.dm_target** %6, align 8
  %21 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %24, align 8
  %26 = icmp ne i32 (%struct.dm_target*)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  br label %52

28:                                               ; preds = %14
  %29 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %30 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %32, align 8
  %34 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %35 = call i32 %33(%struct.dm_target* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %28
  %39 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %40 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dm_device_name(i32 %41)
  %43 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %44 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %88

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %8

55:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %59 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %56
  %63 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %64 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %63, i32 0, i32 1
  %65 = load %struct.dm_target*, %struct.dm_target** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %65, i64 %67
  store %struct.dm_target* %68, %struct.dm_target** %7, align 8
  %69 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %70 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %72, align 8
  %74 = icmp ne i32 (%struct.dm_target*)* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %62
  %76 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %77 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %79, align 8
  %81 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %82 = call i32 %80(%struct.dm_target* %81)
  br label %83

83:                                               ; preds = %75, %62
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %56

87:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %38
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @DMERR(i8*, i32, i32, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
