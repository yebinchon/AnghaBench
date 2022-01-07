; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_sel_bcs_isar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_sel_bcs_isar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.IsdnCardState = type { %struct.BCState* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.BCState* (%struct.IsdnCardState*, i32)* @sel_bcs_isar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.BCState* @sel_bcs_isar(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store %struct.BCState* null, %struct.BCState** %3, align 8
  br label %45

12:                                               ; preds = %8
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 0
  %15 = load %struct.BCState*, %struct.BCState** %14, align 8
  %16 = getelementptr inbounds %struct.BCState, %struct.BCState* %15, i64 0
  %17 = getelementptr inbounds %struct.BCState, %struct.BCState* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 0
  %26 = load %struct.BCState*, %struct.BCState** %25, align 8
  %27 = getelementptr inbounds %struct.BCState, %struct.BCState* %26, i64 0
  store %struct.BCState* %27, %struct.BCState** %3, align 8
  br label %45

28:                                               ; preds = %12
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 0
  %31 = load %struct.BCState*, %struct.BCState** %30, align 8
  %32 = getelementptr inbounds %struct.BCState, %struct.BCState* %31, i64 1
  %33 = getelementptr inbounds %struct.BCState, %struct.BCState* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 0
  %42 = load %struct.BCState*, %struct.BCState** %41, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i64 1
  store %struct.BCState* %43, %struct.BCState** %3, align 8
  br label %45

44:                                               ; preds = %28
  store %struct.BCState* null, %struct.BCState** %3, align 8
  br label %45

45:                                               ; preds = %44, %39, %23, %11
  %46 = load %struct.BCState*, %struct.BCState** %3, align 8
  ret %struct.BCState* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
