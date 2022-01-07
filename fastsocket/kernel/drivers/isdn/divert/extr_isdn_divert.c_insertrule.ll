; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_insertrule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_insertrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflect_struc = type { %struct.deflect_struc*, %struct.deflect_struc*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@divert_lock = common dso_local global i32 0, align 4
@table_head = common dso_local global %struct.deflect_struc* null, align 8
@table_tail = common dso_local global %struct.deflect_struc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insertrule(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.deflect_struc*, align 8
  %7 = alloca %struct.deflect_struc*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.deflect_struc* null, %struct.deflect_struc** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.deflect_struc* @kmalloc(i32 24, i32 %9)
  store %struct.deflect_struc* %10, %struct.deflect_struc** %6, align 8
  %11 = icmp ne %struct.deflect_struc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %90

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %19 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @divert_lock, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %15
  %25 = load %struct.deflect_struc*, %struct.deflect_struc** @table_head, align 8
  store %struct.deflect_struc* %25, %struct.deflect_struc** %7, align 8
  br label %26

26:                                               ; preds = %34, %24
  %27 = load %struct.deflect_struc*, %struct.deflect_struc** %7, align 8
  %28 = icmp ne %struct.deflect_struc* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = load %struct.deflect_struc*, %struct.deflect_struc** %7, align 8
  %38 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %37, i32 0, i32 1
  %39 = load %struct.deflect_struc*, %struct.deflect_struc** %38, align 8
  store %struct.deflect_struc* %39, %struct.deflect_struc** %7, align 8
  br label %26

40:                                               ; preds = %32
  %41 = load %struct.deflect_struc*, %struct.deflect_struc** %7, align 8
  %42 = icmp ne %struct.deflect_struc* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load %struct.deflect_struc*, %struct.deflect_struc** @table_tail, align 8
  %50 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %51 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %50, i32 0, i32 0
  store %struct.deflect_struc* %49, %struct.deflect_struc** %51, align 8
  %52 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %53 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %52, i32 0, i32 1
  store %struct.deflect_struc* null, %struct.deflect_struc** %53, align 8
  %54 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %55 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %54, i32 0, i32 0
  %56 = load %struct.deflect_struc*, %struct.deflect_struc** %55, align 8
  %57 = icmp ne %struct.deflect_struc* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %60 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %61 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %60, i32 0, i32 0
  %62 = load %struct.deflect_struc*, %struct.deflect_struc** %61, align 8
  %63 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %62, i32 0, i32 1
  store %struct.deflect_struc* %59, %struct.deflect_struc** %63, align 8
  br label %66

64:                                               ; preds = %48
  %65 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  store %struct.deflect_struc* %65, %struct.deflect_struc** @table_head, align 8
  br label %66

66:                                               ; preds = %64, %58
  %67 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  store %struct.deflect_struc* %67, %struct.deflect_struc** @table_tail, align 8
  br label %87

68:                                               ; preds = %45
  %69 = load %struct.deflect_struc*, %struct.deflect_struc** %7, align 8
  %70 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %71 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %70, i32 0, i32 1
  store %struct.deflect_struc* %69, %struct.deflect_struc** %71, align 8
  %72 = load %struct.deflect_struc*, %struct.deflect_struc** %7, align 8
  %73 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %72, i32 0, i32 0
  %74 = load %struct.deflect_struc*, %struct.deflect_struc** %73, align 8
  %75 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %76 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %75, i32 0, i32 0
  store %struct.deflect_struc* %74, %struct.deflect_struc** %76, align 8
  %77 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %78 = load %struct.deflect_struc*, %struct.deflect_struc** %7, align 8
  %79 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %78, i32 0, i32 0
  store %struct.deflect_struc* %77, %struct.deflect_struc** %79, align 8
  %80 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  %81 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %80, i32 0, i32 0
  %82 = load %struct.deflect_struc*, %struct.deflect_struc** %81, align 8
  %83 = icmp ne %struct.deflect_struc* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %68
  %85 = load %struct.deflect_struc*, %struct.deflect_struc** %6, align 8
  store %struct.deflect_struc* %85, %struct.deflect_struc** @table_head, align 8
  br label %86

86:                                               ; preds = %84, %68
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* @divert_lock, i64 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.deflect_struc* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
