; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ecard.c_ecard_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecard_id = type { i32, i64 }
%struct.expansion_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecard_id* (%struct.ecard_id*, %struct.expansion_card*)* @ecard_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecard_id* @ecard_match_device(%struct.ecard_id* %0, %struct.expansion_card* %1) #0 {
  %3 = alloca %struct.ecard_id*, align 8
  %4 = alloca %struct.ecard_id*, align 8
  %5 = alloca %struct.expansion_card*, align 8
  %6 = alloca i32, align 4
  store %struct.ecard_id* %0, %struct.ecard_id** %4, align 8
  store %struct.expansion_card* %1, %struct.expansion_card** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load %struct.ecard_id*, %struct.ecard_id** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ecard_id, %struct.ecard_id* %8, i64 %10
  %12 = getelementptr inbounds %struct.ecard_id, %struct.ecard_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 65535
  br i1 %14, label %15, label %48

15:                                               ; preds = %7
  %16 = load %struct.expansion_card*, %struct.expansion_card** %5, align 8
  %17 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ecard_id*, %struct.ecard_id** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ecard_id, %struct.ecard_id* %20, i64 %22
  %24 = getelementptr inbounds %struct.ecard_id, %struct.ecard_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %19, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %15
  %28 = load %struct.expansion_card*, %struct.expansion_card** %5, align 8
  %29 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ecard_id*, %struct.ecard_id** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ecard_id, %struct.ecard_id* %32, i64 %34
  %36 = getelementptr inbounds %struct.ecard_id, %struct.ecard_id* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.ecard_id*, %struct.ecard_id** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ecard_id, %struct.ecard_id* %40, i64 %42
  store %struct.ecard_id* %43, %struct.ecard_id** %3, align 8
  br label %49

44:                                               ; preds = %27, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %7

48:                                               ; preds = %7
  store %struct.ecard_id* null, %struct.ecard_id** %3, align 8
  br label %49

49:                                               ; preds = %48, %39
  %50 = load %struct.ecard_id*, %struct.ecard_id** %3, align 8
  ret %struct.ecard_id* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
