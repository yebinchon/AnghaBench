; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_adapters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_adapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.pt1_adapter** }
%struct.pt1_adapter = type { i32 }

@PT1_NR_ADAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_init_adapters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_init_adapters(%struct.pt1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt1_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PT1_NR_ADAPS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.pt1*, %struct.pt1** %3, align 8
  %13 = call %struct.pt1_adapter* @pt1_alloc_adapter(%struct.pt1* %12)
  store %struct.pt1_adapter* %13, %struct.pt1_adapter** %5, align 8
  %14 = load %struct.pt1_adapter*, %struct.pt1_adapter** %5, align 8
  %15 = call i64 @IS_ERR(%struct.pt1_adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.pt1_adapter*, %struct.pt1_adapter** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.pt1_adapter* %18)
  store i32 %19, i32* %6, align 4
  br label %35

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.pt1_adapter*, %struct.pt1_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pt1_adapter*, %struct.pt1_adapter** %5, align 8
  %25 = load %struct.pt1*, %struct.pt1** %3, align 8
  %26 = getelementptr inbounds %struct.pt1, %struct.pt1* %25, i32 0, i32 0
  %27 = load %struct.pt1_adapter**, %struct.pt1_adapter*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pt1_adapter*, %struct.pt1_adapter** %27, i64 %29
  store %struct.pt1_adapter* %24, %struct.pt1_adapter** %30, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %7

34:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %51

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.pt1*, %struct.pt1** %3, align 8
  %42 = getelementptr inbounds %struct.pt1, %struct.pt1* %41, i32 0, i32 0
  %43 = load %struct.pt1_adapter**, %struct.pt1_adapter*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pt1_adapter*, %struct.pt1_adapter** %43, i64 %45
  %47 = load %struct.pt1_adapter*, %struct.pt1_adapter** %46, align 8
  %48 = call i32 @pt1_free_adapter(%struct.pt1_adapter* %47)
  br label %36

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %34
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.pt1_adapter* @pt1_alloc_adapter(%struct.pt1*) #1

declare dso_local i64 @IS_ERR(%struct.pt1_adapter*) #1

declare dso_local i32 @PTR_ERR(%struct.pt1_adapter*) #1

declare dso_local i32 @pt1_free_adapter(%struct.pt1_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
