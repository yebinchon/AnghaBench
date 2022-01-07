; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_create_port_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_create_port_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_port = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@cm_port_obj_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CM_COUNTER_GROUPS = common dso_local global i32 0, align 4
@cm_counter_obj_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@counter_group_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_port*)* @cm_create_port_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_create_port_fs(%struct.cm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cm_port* %0, %struct.cm_port** %3, align 8
  %6 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %7 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %6, i32 0, i32 0
  %8 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %9 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %15 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @kobject_init_and_add(i32* %7, i32* @cm_port_obj_type, i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %22 = call i32 @kfree(%struct.cm_port* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %72

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CM_COUNTER_GROUPS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %31 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %38 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %37, i32 0, i32 0
  %39 = load i32*, i32** @counter_group_names, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kobject_init_and_add(i32* %36, i32* @cm_counter_obj_type, i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %53

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %25

52:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %72

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %60 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i32 @kobject_put(i32* %65)
  br label %54

67:                                               ; preds = %54
  %68 = load %struct.cm_port*, %struct.cm_port** %3, align 8
  %69 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %68, i32 0, i32 0
  %70 = call i32 @kobject_put(i32* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %52, %20
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cm_port*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
