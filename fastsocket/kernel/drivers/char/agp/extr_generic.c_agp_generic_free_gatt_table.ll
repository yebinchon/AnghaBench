; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_generic_free_gatt_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_generic_free_gatt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { i64, i32*, i32*, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@agp_gatt_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_free_gatt_table(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  %9 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %10 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %9, i32 0, i32 4
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %13 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %40 [
    i32 128, label %17
    i32 130, label %22
    i32 129, label %27
    i32 132, label %32
    i32 131, label %37
  ]

17:                                               ; preds = %1
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.TYPE_8__* @A_SIZE_8(i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load i8*, i8** %7, align 8
  %24 = call %struct.TYPE_10__* @A_SIZE_16(i8* %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %1
  %28 = load i8*, i8** %7, align 8
  %29 = call %struct.TYPE_9__* @A_SIZE_32(i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %1
  %33 = load i8*, i8** %7, align 8
  %34 = call %struct.TYPE_7__* @A_SIZE_FIX(i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %83

40:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %32, %27, %22, %17
  %42 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %43 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @iounmap(i32* %44)
  %46 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %47 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 1, %52
  %54 = mul nsw i32 %51, %53
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call %struct.page* @virt_to_page(i8* %58)
  store %struct.page* %59, %struct.page** %8, align 8
  br label %60

60:                                               ; preds = %68, %41
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call %struct.page* @virt_to_page(i8* %62)
  %64 = icmp ule %struct.page* %61, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.page*, %struct.page** %8, align 8
  %67 = call i32 @ClearPageReserved(%struct.page* %66)
  br label %68

68:                                               ; preds = %65
  %69 = load %struct.page*, %struct.page** %8, align 8
  %70 = getelementptr inbounds %struct.page, %struct.page* %69, i32 1
  store %struct.page* %70, %struct.page** %8, align 8
  br label %60

71:                                               ; preds = %60
  %72 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %73 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @free_gatt_pages(i32* %74, i32 %75)
  store i32* null, i32** @agp_gatt_table, align 8
  %77 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %78 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %80 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %82 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %71, %37
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_8__* @A_SIZE_8(i8*) #1

declare dso_local %struct.TYPE_10__* @A_SIZE_16(i8*) #1

declare dso_local %struct.TYPE_9__* @A_SIZE_32(i8*) #1

declare dso_local %struct.TYPE_7__* @A_SIZE_FIX(i8*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @ClearPageReserved(%struct.page*) #1

declare dso_local i32 @free_gatt_pages(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
