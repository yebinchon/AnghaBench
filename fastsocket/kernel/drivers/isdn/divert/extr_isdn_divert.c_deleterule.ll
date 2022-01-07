; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_deleterule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_deleterule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflect_struc = type { %struct.deflect_struc*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.deflect_struc* }

@divert_lock = common dso_local global i32 0, align 4
@table_head = common dso_local global %struct.deflect_struc* null, align 8
@table_tail = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deleterule(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.deflect_struc*, align 8
  %5 = alloca %struct.deflect_struc*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @divert_lock, i64 %10)
  %12 = load %struct.deflect_struc*, %struct.deflect_struc** @table_head, align 8
  store %struct.deflect_struc* %12, %struct.deflect_struc** %4, align 8
  store %struct.deflect_struc* null, %struct.deflect_struc** @table_head, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @table_tail, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* @divert_lock, i64 %13)
  br label %15

15:                                               ; preds = %18, %9
  %16 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %17 = icmp ne %struct.deflect_struc* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  store %struct.deflect_struc* %19, %struct.deflect_struc** %5, align 8
  %20 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %21 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %20, i32 0, i32 0
  %22 = load %struct.deflect_struc*, %struct.deflect_struc** %21, align 8
  store %struct.deflect_struc* %22, %struct.deflect_struc** %4, align 8
  %23 = load %struct.deflect_struc*, %struct.deflect_struc** %5, align 8
  %24 = call i32 @kfree(%struct.deflect_struc* %23)
  br label %15

25:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %91

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @divert_lock, i64 %27)
  %29 = load %struct.deflect_struc*, %struct.deflect_struc** @table_head, align 8
  store %struct.deflect_struc* %29, %struct.deflect_struc** %4, align 8
  br label %30

30:                                               ; preds = %38, %26
  %31 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %32 = icmp ne %struct.deflect_struc* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %34, 0
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %3, align 4
  %41 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %42 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %41, i32 0, i32 0
  %43 = load %struct.deflect_struc*, %struct.deflect_struc** %42, align 8
  store %struct.deflect_struc* %43, %struct.deflect_struc** %4, align 8
  br label %30

44:                                               ; preds = %36
  %45 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %46 = icmp ne %struct.deflect_struc* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* @divert_lock, i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %91

52:                                               ; preds = %44
  %53 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %54 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %53, i32 0, i32 0
  %55 = load %struct.deflect_struc*, %struct.deflect_struc** %54, align 8
  %56 = icmp ne %struct.deflect_struc* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %59 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %62 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %61, i32 0, i32 0
  %63 = load %struct.deflect_struc*, %struct.deflect_struc** %62, align 8
  %64 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %63, i32 0, i32 1
  store %struct.TYPE_2__* %60, %struct.TYPE_2__** %64, align 8
  br label %69

65:                                               ; preds = %52
  %66 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %67 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  store %struct.TYPE_2__* %68, %struct.TYPE_2__** @table_tail, align 8
  br label %69

69:                                               ; preds = %65, %57
  %70 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %71 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %76 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %75, i32 0, i32 0
  %77 = load %struct.deflect_struc*, %struct.deflect_struc** %76, align 8
  %78 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %79 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.deflect_struc* %77, %struct.deflect_struc** %81, align 8
  br label %86

82:                                               ; preds = %69
  %83 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %84 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %83, i32 0, i32 0
  %85 = load %struct.deflect_struc*, %struct.deflect_struc** %84, align 8
  store %struct.deflect_struc* %85, %struct.deflect_struc** @table_head, align 8
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* @divert_lock, i64 %87)
  %89 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %90 = call i32 @kfree(%struct.deflect_struc* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %47, %25
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.deflect_struc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
