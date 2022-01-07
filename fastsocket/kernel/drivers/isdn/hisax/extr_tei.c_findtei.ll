; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_findtei.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_findtei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.PStack*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.PStack** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.PStack* (%struct.PStack*, i32)* @findtei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.PStack* @findtei(%struct.PStack* %0, i32 %1) #0 {
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.PStack*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.PStack*, %struct.PStack** %4, align 8
  %8 = getelementptr inbounds %struct.PStack, %struct.PStack* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.PStack**, %struct.PStack*** %9, align 8
  %11 = load %struct.PStack*, %struct.PStack** %10, align 8
  store %struct.PStack* %11, %struct.PStack** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 127
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.PStack* null, %struct.PStack** %3, align 8
  br label %34

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %32, %15
  %17 = load %struct.PStack*, %struct.PStack** %6, align 8
  %18 = icmp ne %struct.PStack* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.PStack*, %struct.PStack** %6, align 8
  %21 = getelementptr inbounds %struct.PStack, %struct.PStack* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.PStack*, %struct.PStack** %6, align 8
  store %struct.PStack* %27, %struct.PStack** %3, align 8
  br label %34

28:                                               ; preds = %19
  %29 = load %struct.PStack*, %struct.PStack** %6, align 8
  %30 = getelementptr inbounds %struct.PStack, %struct.PStack* %29, i32 0, i32 0
  %31 = load %struct.PStack*, %struct.PStack** %30, align 8
  store %struct.PStack* %31, %struct.PStack** %6, align 8
  br label %32

32:                                               ; preds = %28
  br label %16

33:                                               ; preds = %16
  store %struct.PStack* null, %struct.PStack** %3, align 8
  br label %34

34:                                               ; preds = %33, %26, %14
  %35 = load %struct.PStack*, %struct.PStack** %3, align 8
  ret %struct.PStack* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
