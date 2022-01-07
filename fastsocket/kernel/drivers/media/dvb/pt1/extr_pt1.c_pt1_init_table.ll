; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32 }
%struct.pt1_table = type { i32*, i32, %struct.pt1_table_page* }
%struct.pt1_table_page = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@PT1_NR_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*, %struct.pt1_table*, i32*)* @pt1_init_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_init_table(%struct.pt1* %0, %struct.pt1_table* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt1*, align 8
  %6 = alloca %struct.pt1_table*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pt1_table_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %5, align 8
  store %struct.pt1_table* %1, %struct.pt1_table** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.pt1*, %struct.pt1** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.pt1_table_page* @pt1_alloc_page(%struct.pt1* %13, i32* %9, i32* %14)
  store %struct.pt1_table_page* %15, %struct.pt1_table_page** %8, align 8
  %16 = load %struct.pt1_table_page*, %struct.pt1_table_page** %8, align 8
  %17 = icmp eq %struct.pt1_table_page* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %79

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @PT1_NR_BUFS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.pt1*, %struct.pt1** %5, align 8
  %28 = load %struct.pt1_table*, %struct.pt1_table** %6, align 8
  %29 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @pt1_init_buffer(%struct.pt1* %27, i32* %33, i32* %12)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %59

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.pt1_table_page*, %struct.pt1_table_page** %8, align 8
  %42 = getelementptr inbounds %struct.pt1_table_page, %struct.pt1_table_page* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.pt1*, %struct.pt1** %5, align 8
  %52 = call i32 @pt1_increment_table_count(%struct.pt1* %51)
  %53 = load %struct.pt1_table_page*, %struct.pt1_table_page** %8, align 8
  %54 = load %struct.pt1_table*, %struct.pt1_table** %6, align 8
  %55 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %54, i32 0, i32 2
  store %struct.pt1_table_page* %53, %struct.pt1_table_page** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.pt1_table*, %struct.pt1_table** %6, align 8
  %58 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %4, align 4
  br label %79

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.pt1*, %struct.pt1** %5, align 8
  %66 = load %struct.pt1_table*, %struct.pt1_table** %6, align 8
  %67 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @pt1_cleanup_buffer(%struct.pt1* %65, i32* %71)
  br label %60

73:                                               ; preds = %60
  %74 = load %struct.pt1*, %struct.pt1** %5, align 8
  %75 = load %struct.pt1_table_page*, %struct.pt1_table_page** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @pt1_free_page(%struct.pt1* %74, %struct.pt1_table_page* %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %50, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.pt1_table_page* @pt1_alloc_page(%struct.pt1*, i32*, i32*) #1

declare dso_local i32 @pt1_init_buffer(%struct.pt1*, i32*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pt1_increment_table_count(%struct.pt1*) #1

declare dso_local i32 @pt1_cleanup_buffer(%struct.pt1*, i32*) #1

declare dso_local i32 @pt1_free_page(%struct.pt1*, %struct.pt1_table_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
