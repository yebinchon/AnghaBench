; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_resize_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_resize_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_map = type { i32, i32, i32, %struct.rc_map_table* }
%struct.rc_map_table = type { i32 }

@IR_TAB_MAX_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Growing table to %u bytes\0A\00", align 1
@IR_TAB_MIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Shrinking table to %u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to kmalloc %u bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_map*, i32)* @ir_resize_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_resize_table(%struct.rc_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rc_map_table*, align 8
  %9 = alloca %struct.rc_map_table*, align 8
  store %struct.rc_map* %0, %struct.rc_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %11 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %15 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %14, i32 0, i32 3
  %16 = load %struct.rc_map_table*, %struct.rc_map_table** %15, align 8
  store %struct.rc_map_table* %16, %struct.rc_map_table** %8, align 8
  %17 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %18 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %21 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %26 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IR_TAB_MAX_SIZE, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %100

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %34, 2
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @IR_dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %40 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 3
  %43 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %44 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @IR_TAB_MIN_SIZE, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = udiv i32 %52, 2
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @IR_dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %47, %38
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %100

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.rc_map_table* @kmalloc(i32 %62, i32 %63)
  store %struct.rc_map_table* %64, %struct.rc_map_table** %9, align 8
  %65 = load %struct.rc_map_table*, %struct.rc_map_table** %9, align 8
  %66 = icmp ne %struct.rc_map_table* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @IR_dprintk(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %100

72:                                               ; preds = %61
  %73 = load %struct.rc_map_table*, %struct.rc_map_table** %9, align 8
  %74 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %75 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %74, i32 0, i32 3
  %76 = load %struct.rc_map_table*, %struct.rc_map_table** %75, align 8
  %77 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %78 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(%struct.rc_map_table* %73, %struct.rc_map_table* %76, i32 %82)
  %84 = load %struct.rc_map_table*, %struct.rc_map_table** %9, align 8
  %85 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %86 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %85, i32 0, i32 3
  store %struct.rc_map_table* %84, %struct.rc_map_table** %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %89 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %91 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = zext i32 %92 to i64
  %94 = udiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = load %struct.rc_map*, %struct.rc_map** %4, align 8
  %97 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.rc_map_table*, %struct.rc_map_table** %8, align 8
  %99 = call i32 @kfree(%struct.rc_map_table* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %72, %67, %60, %30
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @IR_dprintk(i32, i8*, i32) #1

declare dso_local %struct.rc_map_table* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.rc_map_table*, %struct.rc_map_table*, i32) #1

declare dso_local i32 @kfree(%struct.rc_map_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
