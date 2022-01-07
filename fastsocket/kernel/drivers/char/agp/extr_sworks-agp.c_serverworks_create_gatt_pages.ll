; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sworks-agp.c_serverworks_create_gatt_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sworks-agp.c_serverworks_create_gatt_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.serverworks_page_map** }
%struct.serverworks_page_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@serverworks_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @serverworks_create_gatt_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverworks_create_gatt_pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.serverworks_page_map**, align 8
  %5 = alloca %struct.serverworks_page_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  %15 = bitcast i8* %14 to %struct.serverworks_page_map**
  store %struct.serverworks_page_map** %15, %struct.serverworks_page_map*** %4, align 8
  %16 = load %struct.serverworks_page_map**, %struct.serverworks_page_map*** %4, align 8
  %17 = icmp eq %struct.serverworks_page_map** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 4, i32 %27)
  %29 = bitcast i8* %28 to %struct.serverworks_page_map*
  store %struct.serverworks_page_map* %29, %struct.serverworks_page_map** %5, align 8
  %30 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %5, align 8
  %31 = icmp eq %struct.serverworks_page_map* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %50

35:                                               ; preds = %26
  %36 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %5, align 8
  %37 = load %struct.serverworks_page_map**, %struct.serverworks_page_map*** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.serverworks_page_map*, %struct.serverworks_page_map** %37, i64 %39
  store %struct.serverworks_page_map* %36, %struct.serverworks_page_map** %40, align 8
  %41 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %5, align 8
  %42 = call i32 @serverworks_create_page_map(%struct.serverworks_page_map* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %22

50:                                               ; preds = %45, %32, %22
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serverworks_private, i32 0, i32 0), align 8
  %52 = load %struct.serverworks_page_map**, %struct.serverworks_page_map*** %4, align 8
  store %struct.serverworks_page_map** %52, %struct.serverworks_page_map*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serverworks_private, i32 0, i32 1), align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (...) @serverworks_free_gatt_pages()
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @serverworks_create_page_map(%struct.serverworks_page_map*) #1

declare dso_local i32 @serverworks_free_gatt_pages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
