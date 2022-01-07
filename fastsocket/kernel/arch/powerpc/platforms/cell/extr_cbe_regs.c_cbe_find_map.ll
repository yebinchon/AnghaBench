; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_cbe_regs.c_cbe_find_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_cbe_regs.c_cbe_find_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbe_regs_map = type { %struct.device_node*, %struct.device_node* }
%struct.device_node = type { %struct.cbe_regs_map*, %struct.device_node*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"spe\00", align 1
@cbe_regs_map_count = common dso_local global i32 0, align 4
@cbe_regs_maps = common dso_local global %struct.cbe_regs_map* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cbe_regs_map* (%struct.device_node*)* @cbe_find_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cbe_regs_map* @cbe_find_map(%struct.device_node* %0) #0 {
  %2 = alloca %struct.cbe_regs_map*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = getelementptr inbounds %struct.device_node, %struct.device_node* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @strcasecmp(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %40, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @cbe_regs_map_count, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** @cbe_regs_maps, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %17, i64 %19
  %21 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %20, i32 0, i32 1
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = icmp eq %struct.device_node* %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** @cbe_regs_maps, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %26, i64 %28
  %30 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %29, i32 0, i32 0
  %31 = load %struct.device_node*, %struct.device_node** %30, align 8
  %32 = load %struct.device_node*, %struct.device_node** %3, align 8
  %33 = icmp eq %struct.device_node* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25, %16
  %35 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** @cbe_regs_maps, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %35, i64 %37
  store %struct.cbe_regs_map* %38, %struct.cbe_regs_map** %2, align 8
  br label %86

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %12

43:                                               ; preds = %12
  store %struct.cbe_regs_map* null, %struct.cbe_regs_map** %2, align 8
  br label %86

44:                                               ; preds = %1
  %45 = load %struct.device_node*, %struct.device_node** %3, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 0
  %47 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** %46, align 8
  %48 = icmp ne %struct.cbe_regs_map* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.device_node*, %struct.device_node** %3, align 8
  %51 = getelementptr inbounds %struct.device_node, %struct.device_node* %50, i32 0, i32 0
  %52 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** %51, align 8
  store %struct.cbe_regs_map* %52, %struct.cbe_regs_map** %2, align 8
  br label %86

53:                                               ; preds = %44
  %54 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %54, %struct.device_node** %5, align 8
  br label %55

55:                                               ; preds = %76, %53
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = getelementptr inbounds %struct.device_node, %struct.device_node* %56, i32 0, i32 1
  %58 = load %struct.device_node*, %struct.device_node** %57, align 8
  store %struct.device_node* %58, %struct.device_node** %5, align 8
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = icmp ne %struct.device_node* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = getelementptr inbounds %struct.device_node, %struct.device_node* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strcasecmp(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = getelementptr inbounds %struct.device_node, %struct.device_node* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @strcasecmp(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %70, %64
  %77 = phi i1 [ false, %64 ], [ %75, %70 ]
  br i1 %77, label %55, label %78

78:                                               ; preds = %76
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = call %struct.cbe_regs_map* @cbe_find_map(%struct.device_node* %79)
  %81 = load %struct.device_node*, %struct.device_node** %3, align 8
  %82 = getelementptr inbounds %struct.device_node, %struct.device_node* %81, i32 0, i32 0
  store %struct.cbe_regs_map* %80, %struct.cbe_regs_map** %82, align 8
  %83 = load %struct.device_node*, %struct.device_node** %3, align 8
  %84 = getelementptr inbounds %struct.device_node, %struct.device_node* %83, i32 0, i32 0
  %85 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** %84, align 8
  store %struct.cbe_regs_map* %85, %struct.cbe_regs_map** %2, align 8
  br label %86

86:                                               ; preds = %78, %49, %43, %34
  %87 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** %2, align 8
  ret %struct.cbe_regs_map* %87
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
