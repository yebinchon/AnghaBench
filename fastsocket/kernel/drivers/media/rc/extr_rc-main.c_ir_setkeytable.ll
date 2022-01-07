; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_setkeytable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_setkeytable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.rc_map }
%struct.rc_map = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Allocated space for %u keycode entries (%u bytes)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rc_map*)* @ir_setkeytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_setkeytable(%struct.rc_dev* %0, %struct.rc_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.rc_map*, align 8
  %6 = alloca %struct.rc_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store %struct.rc_map* %1, %struct.rc_map** %5, align 8
  %10 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 0
  store %struct.rc_map* %11, %struct.rc_map** %6, align 8
  %12 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %13 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %14 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %17 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %20 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ir_create_table(%struct.rc_map* %12, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %85

27:                                               ; preds = %2
  %28 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %29 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %32 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @IR_dprintk(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %74, %27
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %38 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %35
  %42 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %43 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %44 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %45 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ir_establish_scancode(%struct.rc_dev* %42, %struct.rc_map* %43, i32 %51, i32 0)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %55 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp uge i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %77

61:                                               ; preds = %41
  %62 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %63 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %66 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ir_update_mapping(%struct.rc_dev* %62, %struct.rc_map* %63, i32 %64, i32 %72)
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %35

77:                                               ; preds = %58, %35
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %82 = call i32 @ir_free_table(%struct.rc_map* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %25
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ir_create_table(%struct.rc_map*, i32, i32, i32) #1

declare dso_local i32 @IR_dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @ir_establish_scancode(%struct.rc_dev*, %struct.rc_map*, i32, i32) #1

declare dso_local i32 @ir_update_mapping(%struct.rc_dev*, %struct.rc_map*, i32, i32) #1

declare dso_local i32 @ir_free_table(%struct.rc_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
