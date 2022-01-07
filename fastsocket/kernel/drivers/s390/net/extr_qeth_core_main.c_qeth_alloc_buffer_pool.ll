; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_buffer_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_buffer_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qeth_buffer_pool_entry = type { i32, i8** }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"alocpool\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_alloc_buffer_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_alloc_buffer_pool(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_buffer_pool_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 @QETH_DBF_TEXT(i32 %8, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %81, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %10
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.qeth_buffer_pool_entry* @kzalloc(i32 16, i32 %19)
  store %struct.qeth_buffer_pool_entry* %20, %struct.qeth_buffer_pool_entry** %4, align 8
  %21 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %4, align 8
  %22 = icmp ne %struct.qeth_buffer_pool_entry* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %25 = call i32 @qeth_free_buffer_pool(%struct.qeth_card* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %85

28:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %70, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %32 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %29
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i64 @__get_free_page(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %62, label %40

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %44, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %4, align 8
  %46 = getelementptr inbounds %struct.qeth_buffer_pool_entry, %struct.qeth_buffer_pool_entry* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = call i32 @free_page(i64 %53)
  br label %41

55:                                               ; preds = %41
  %56 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %4, align 8
  %57 = call i32 @kfree(%struct.qeth_buffer_pool_entry* %56)
  %58 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %59 = call i32 @qeth_free_buffer_pool(%struct.qeth_card* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %85

62:                                               ; preds = %34
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %4, align 8
  %65 = getelementptr inbounds %struct.qeth_buffer_pool_entry, %struct.qeth_buffer_pool_entry* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %63, i8** %69, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %29

73:                                               ; preds = %29
  %74 = load %struct.qeth_buffer_pool_entry*, %struct.qeth_buffer_pool_entry** %4, align 8
  %75 = getelementptr inbounds %struct.qeth_buffer_pool_entry, %struct.qeth_buffer_pool_entry* %74, i32 0, i32 0
  %76 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %77 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = call i32 @list_add(i32* %75, i32* %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %10

84:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %55, %23
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_buffer_pool_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @qeth_free_buffer_pool(%struct.qeth_card*) #1

declare dso_local i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.qeth_buffer_pool_entry*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
