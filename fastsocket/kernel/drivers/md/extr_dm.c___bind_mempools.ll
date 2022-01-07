; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___bind_mempools.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___bind_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32*, i32*, i32* }
%struct.dm_table = type { i32 }
%struct.dm_md_mempools = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, %struct.dm_table*)* @__bind_mempools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bind_mempools(%struct.mapped_device* %0, %struct.dm_table* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.dm_md_mempools*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.dm_table* %1, %struct.dm_table** %4, align 8
  %6 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %7 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %12 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %17 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %66

21:                                               ; preds = %15, %10, %2
  %22 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %23 = call %struct.dm_md_mempools* @dm_table_get_md_mempools(%struct.dm_table* %22)
  store %struct.dm_md_mempools* %23, %struct.dm_md_mempools** %5, align 8
  %24 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %25 = icmp ne %struct.dm_md_mempools* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %28 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %33 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %38 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br label %41

41:                                               ; preds = %36, %31, %26, %21
  %42 = phi i1 [ true, %31 ], [ true, %26 ], [ true, %21 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %46 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %49 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %51 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %53 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %56 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %58 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %60 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %63 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %5, align 8
  %65 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %41, %20
  %67 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %68 = call i32 @dm_table_free_md_mempools(%struct.dm_table* %67)
  ret void
}

declare dso_local %struct.dm_md_mempools* @dm_table_get_md_mempools(%struct.dm_table*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_table_free_md_mempools(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
