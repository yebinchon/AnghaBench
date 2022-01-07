; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_page_table_guest_data_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_page_table_guest_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@RESERVE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad guest page %p\00", align 1
@SWITCHER_PGD_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"bad kernel address %#lx\00", align 1
@SWITCHER_PMD_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_table_guest_data_init(%struct.lg_cpu* %0) #0 {
  %2 = alloca %struct.lg_cpu*, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %2, align 8
  %3 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %4 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %3, i32 0, i32 0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %9 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = call i64 @get_user(%struct.TYPE_9__* %7, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @RESERVE_MEM, align 4
  %18 = mul nsw i32 %17, 1024
  %19 = mul nsw i32 %18, 1024
  %20 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %21 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = call i64 @put_user(i32 %19, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %16
  %29 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %30 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %38 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = call i64 @put_user(i32 %36, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %28, %16, %1
  %46 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %47 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %48 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @kill_guest(%struct.lg_cpu* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %51)
  br label %53

53:                                               ; preds = %45, %28
  %54 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %55 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = call i64 @pgd_index(%struct.TYPE_9__* %58)
  %60 = load i64, i64* @SWITCHER_PGD_INDEX, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %64 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %65 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i32 @kill_guest(%struct.lg_cpu* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %68)
  br label %70

70:                                               ; preds = %62, %53
  ret void
}

declare dso_local i64 @get_user(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @put_user(i32, i32*) #1

declare dso_local i32 @kill_guest(%struct.lg_cpu*, i8*, %struct.TYPE_9__*) #1

declare dso_local i64 @pgd_index(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
