; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_setstack_isar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_setstack_isar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.BCState*, i32, i32 }
%struct.BCState = type { %struct.PStack*, i32 }

@isar_l2l1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PStack*, %struct.BCState*)* @setstack_isar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setstack_isar(%struct.PStack* %0, %struct.BCState* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca %struct.BCState*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store %struct.BCState* %1, %struct.BCState** %5, align 8
  %6 = load %struct.PStack*, %struct.PStack** %4, align 8
  %7 = getelementptr inbounds %struct.PStack, %struct.PStack* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.BCState*, %struct.BCState** %5, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.PStack*, %struct.PStack** %4, align 8
  %13 = getelementptr inbounds %struct.PStack, %struct.PStack* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.BCState*, %struct.BCState** %5, align 8
  %17 = call i64 @open_isarstate(i32 %15, %struct.BCState* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.BCState*, %struct.BCState** %5, align 8
  %22 = load %struct.PStack*, %struct.PStack** %4, align 8
  %23 = getelementptr inbounds %struct.PStack, %struct.PStack* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.BCState* %21, %struct.BCState** %24, align 8
  %25 = load i32, i32* @isar_l2l1, align 4
  %26 = load %struct.PStack*, %struct.PStack** %4, align 8
  %27 = getelementptr inbounds %struct.PStack, %struct.PStack* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.PStack*, %struct.PStack** %4, align 8
  %30 = call i32 @setstack_manager(%struct.PStack* %29)
  %31 = load %struct.PStack*, %struct.PStack** %4, align 8
  %32 = load %struct.BCState*, %struct.BCState** %5, align 8
  %33 = getelementptr inbounds %struct.BCState, %struct.BCState* %32, i32 0, i32 0
  store %struct.PStack* %31, %struct.PStack** %33, align 8
  %34 = load %struct.PStack*, %struct.PStack** %4, align 8
  %35 = call i32 @setstack_l1_B(%struct.PStack* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %20, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @open_isarstate(i32, %struct.BCState*) #1

declare dso_local i32 @setstack_manager(%struct.PStack*) #1

declare dso_local i32 @setstack_l1_B(%struct.PStack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
