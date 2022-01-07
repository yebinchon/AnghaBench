; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.pt1_table* }
%struct.pt1_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@pt1_nr_tables = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_init_tables(%struct.pt1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca %struct.pt1_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  %9 = load i32, i32* @pt1_nr_tables, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.pt1_table* @vmalloc(i32 %12)
  store %struct.pt1_table* %13, %struct.pt1_table** %4, align 8
  %14 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %15 = icmp eq %struct.pt1_table* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %96

19:                                               ; preds = %1
  %20 = load %struct.pt1*, %struct.pt1** %3, align 8
  %21 = call i32 @pt1_init_table_count(%struct.pt1* %20)
  store i32 0, i32* %5, align 4
  %22 = load i32, i32* @pt1_nr_tables, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.pt1*, %struct.pt1** %3, align 8
  %26 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %27 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %26, i64 0
  %28 = call i32 @pt1_init_table(%struct.pt1* %25, %struct.pt1_table* %27, i32* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %80

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %19
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @pt1_nr_tables, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load %struct.pt1*, %struct.pt1** %3, align 8
  %42 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %42, i64 %44
  %46 = call i32 @pt1_init_table(%struct.pt1* %41, %struct.pt1_table* %45, i32* %8)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %80

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %53, i64 %56
  %58 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* %52, i8** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %67 = load i32, i32* @pt1_nr_tables, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %66, i64 %69
  %71 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %65, i8** %73, align 8
  %74 = load %struct.pt1*, %struct.pt1** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @pt1_register_tables(%struct.pt1* %74, i32 %75)
  %77 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %78 = load %struct.pt1*, %struct.pt1** %3, align 8
  %79 = getelementptr inbounds %struct.pt1, %struct.pt1* %78, i32 0, i32 0
  store %struct.pt1_table* %77, %struct.pt1_table** %79, align 8
  store i32 0, i32* %2, align 4
  br label %96

80:                                               ; preds = %49, %31
  br label %81

81:                                               ; preds = %85, %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %5, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.pt1*, %struct.pt1** %3, align 8
  %87 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %87, i64 %89
  %91 = call i32 @pt1_cleanup_table(%struct.pt1* %86, %struct.pt1_table* %90)
  br label %81

92:                                               ; preds = %81
  %93 = load %struct.pt1_table*, %struct.pt1_table** %4, align 8
  %94 = call i32 @vfree(%struct.pt1_table* %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %63, %16
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.pt1_table* @vmalloc(i32) #1

declare dso_local i32 @pt1_init_table_count(%struct.pt1*) #1

declare dso_local i32 @pt1_init_table(%struct.pt1*, %struct.pt1_table*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pt1_register_tables(%struct.pt1*, i32) #1

declare dso_local i32 @pt1_cleanup_table(%struct.pt1*, %struct.pt1_table*) #1

declare dso_local i32 @vfree(%struct.pt1_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
