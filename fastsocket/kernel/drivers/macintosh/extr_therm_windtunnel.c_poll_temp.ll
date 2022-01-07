; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_windtunnel.c_poll_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_windtunnel.c_poll_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@x = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@LOG_TEMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"CPU-temp: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c", Case: \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",  Fan: %d\0A\00", align 1
@fan_table = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @poll_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_temp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 6), align 4
  %6 = call i32 @read_reg(i32 %5, i32 0, i32 2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %97

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 5), align 8
  %12 = call i32 @read_reg(i32 %11, i32 11, i32 1)
  %13 = shl i32 %12, 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 5), align 8
  %15 = call i32 @read_reg(i32 %14, i32 6, i32 1)
  %16 = and i32 %15, 7
  %17 = shl i32 %16, 5
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* @LOG_TEMP, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %10
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 0), align 8
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @print_temp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @print_temp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 4), align 8
  %32 = sub nsw i64 11, %31
  %33 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %26, %22, %10
  %35 = load i32, i32* %1, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 0), align 8
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 1), align 4
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %48, %34
  %38 = load i32, i32* %1, align 4
  %39 = and i32 %38, 65535
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fan_table, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %39, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 2), align 8
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fan_table, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %51
  %63 = load i32, i32* %2, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 2), align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %76, %62
  %65 = load i32, i32* %1, align 4
  %66 = and i32 %65, 65535
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fan_table, align 8
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %66, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %64

79:                                               ; preds = %64
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 3), align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fan_table, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %79
  %91 = load i32, i32* %2, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x, i32 0, i32 3), align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @tune_fan(i32 %95)
  br label %97

97:                                               ; preds = %9, %94, %90
  ret void
}

declare dso_local i32 @read_reg(i32, i32, i32) #1

declare dso_local i32 @print_temp(i8*, i32) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @tune_fan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
