; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_request_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ECARD_NUM_RESOURCES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecard_request_resources(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ECARD_NUM_RESOURCES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ecard_resource_end(%struct.expansion_card* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ecard_resource_start(%struct.expansion_card* %15, i32 %16)
  %18 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ecard_resource_len(%struct.expansion_card* %18, i32 %19)
  %21 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %22 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @request_mem_region(i32 %17, i32 %20, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %14
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %14, %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %29, %5
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %3, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @ecard_resource_end(%struct.expansion_card* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @ecard_resource_start(%struct.expansion_card* %50, i32 %51)
  %53 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @ecard_resource_len(%struct.expansion_card* %53, i32 %54)
  %56 = call i32 @release_mem_region(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %49, %44
  br label %40

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @ecard_resource_end(%struct.expansion_card*, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @ecard_resource_start(%struct.expansion_card*, i32) #1

declare dso_local i32 @ecard_resource_len(%struct.expansion_card*, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
