; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_module.c_act2000_find_eaz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_module.c_act2000_find_eaz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.msn_entry* }
%struct.msn_entry = type { i8, i8*, %struct.msn_entry* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @act2000_find_eaz(%struct.TYPE_3__* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.msn_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.msn_entry*, %struct.msn_entry** %8, align 8
  store %struct.msn_entry* %9, %struct.msn_entry** %6, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  %12 = icmp ne %struct.msn_entry* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  %15 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  %23 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %30

25:                                               ; preds = %13
  %26 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  %27 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %26, i32 0, i32 2
  %28 = load %struct.msn_entry*, %struct.msn_entry** %27, align 8
  store %struct.msn_entry* %28, %struct.msn_entry** %6, align 8
  br label %10

29:                                               ; preds = %10
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
