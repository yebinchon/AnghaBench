; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_overflow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ds.c_ds_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_context = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds_context*, i32)* @ds_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_overflow(%struct.ds_context* %0, i32 %1) #0 {
  %3 = alloca %struct.ds_context*, align 8
  %4 = alloca i32, align 4
  store %struct.ds_context* %0, %struct.ds_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %52 [
    i32 129, label %6
    i32 128, label %29
  ]

6:                                                ; preds = %2
  %7 = load %struct.ds_context*, %struct.ds_context** %3, align 8
  %8 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load %struct.ds_context*, %struct.ds_context** %3, align 8
  %13 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_4__*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.ds_context*, %struct.ds_context** %3, align 8
  %20 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %22, align 8
  %24 = load %struct.ds_context*, %struct.ds_context** %3, align 8
  %25 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 %23(%struct.TYPE_4__* %26)
  br label %28

28:                                               ; preds = %18, %11, %6
  br label %52

29:                                               ; preds = %2
  %30 = load %struct.ds_context*, %struct.ds_context** %3, align 8
  %31 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.ds_context*, %struct.ds_context** %3, align 8
  %36 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %38, align 8
  %40 = icmp ne i32 (%struct.TYPE_3__*)* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.ds_context*, %struct.ds_context** %3, align 8
  %43 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %45, align 8
  %47 = load %struct.ds_context*, %struct.ds_context** %3, align 8
  %48 = getelementptr inbounds %struct.ds_context, %struct.ds_context* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 %46(%struct.TYPE_3__* %49)
  br label %51

51:                                               ; preds = %41, %34, %29
  br label %52

52:                                               ; preds = %2, %51, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
