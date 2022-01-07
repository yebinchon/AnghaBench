; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_getruleptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_isdn_divert.c_getruleptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflect_struc = type { %struct.deflect_struc*, i32 }

@table_head = common dso_local global %struct.deflect_struc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getruleptr(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.deflect_struc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.deflect_struc*, %struct.deflect_struc** @table_head, align 8
  store %struct.deflect_struc* %5, %struct.deflect_struc** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %30

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %25, %9
  %11 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %12 = icmp ne %struct.deflect_struc* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %3, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %24 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %23, i32 0, i32 1
  store i32* %24, i32** %2, align 8
  br label %30

25:                                               ; preds = %18
  %26 = load %struct.deflect_struc*, %struct.deflect_struc** %4, align 8
  %27 = getelementptr inbounds %struct.deflect_struc, %struct.deflect_struc* %26, i32 0, i32 0
  %28 = load %struct.deflect_struc*, %struct.deflect_struc** %27, align 8
  store %struct.deflect_struc* %28, %struct.deflect_struc** %4, align 8
  br label %10

29:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  br label %30

30:                                               ; preds = %29, %22, %8
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
