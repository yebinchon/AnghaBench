; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_cleanup_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_cleanup_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.pt1_table* }
%struct.pt1_table = type { i32 }

@pt1_nr_tables = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt1*)* @pt1_cleanup_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt1_cleanup_tables(%struct.pt1* %0) #0 {
  %2 = alloca %struct.pt1*, align 8
  %3 = alloca %struct.pt1_table*, align 8
  %4 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %2, align 8
  %5 = load %struct.pt1*, %struct.pt1** %2, align 8
  %6 = getelementptr inbounds %struct.pt1, %struct.pt1* %5, i32 0, i32 0
  %7 = load %struct.pt1_table*, %struct.pt1_table** %6, align 8
  store %struct.pt1_table* %7, %struct.pt1_table** %3, align 8
  %8 = load %struct.pt1*, %struct.pt1** %2, align 8
  %9 = call i32 @pt1_unregister_tables(%struct.pt1* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @pt1_nr_tables, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load %struct.pt1*, %struct.pt1** %2, align 8
  %16 = load %struct.pt1_table*, %struct.pt1_table** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pt1_table, %struct.pt1_table* %16, i64 %18
  %20 = call i32 @pt1_cleanup_table(%struct.pt1* %15, %struct.pt1_table* %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.pt1_table*, %struct.pt1_table** %3, align 8
  %26 = call i32 @vfree(%struct.pt1_table* %25)
  ret void
}

declare dso_local i32 @pt1_unregister_tables(%struct.pt1*) #1

declare dso_local i32 @pt1_cleanup_table(%struct.pt1*, %struct.pt1_table*) #1

declare dso_local i32 @vfree(%struct.pt1_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
