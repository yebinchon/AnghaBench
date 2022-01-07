; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_ir-functions.c_ir_input_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_ir-functions.c_ir_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, i32, i32* }
%struct.ir_input_state = type { i32, i32* }
%struct.ir_scancode_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IR_KEYTAB_SIZE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@repeat = common dso_local global i64 0, align 8
@EV_REP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ir_input_init(%struct.input_dev* %0, %struct.ir_input_state* %1, i32 %2, %struct.ir_scancode_table* %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ir_input_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_scancode_table*, align 8
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ir_input_state* %1, %struct.ir_input_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ir_scancode_table* %3, %struct.ir_scancode_table** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %12 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %14 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @memset(i32* %15, i32 0, i32 8)
  %17 = load %struct.ir_scancode_table*, %struct.ir_scancode_table** %8, align 8
  %18 = icmp ne %struct.ir_scancode_table* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ir_scancode_table*, %struct.ir_scancode_table** %8, align 8
  %23 = getelementptr inbounds %struct.ir_scancode_table, %struct.ir_scancode_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = load %struct.ir_scancode_table*, %struct.ir_scancode_table** %8, align 8
  %28 = getelementptr inbounds %struct.ir_scancode_table, %struct.ir_scancode_table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IR_KEYTAB_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %26
  %38 = load %struct.ir_scancode_table*, %struct.ir_scancode_table** %8, align 8
  %39 = getelementptr inbounds %struct.ir_scancode_table, %struct.ir_scancode_table* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %47 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ir_scancode_table*, %struct.ir_scancode_table** %8, align 8
  %50 = getelementptr inbounds %struct.ir_scancode_table, %struct.ir_scancode_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %48, i64 %57
  store i32 %45, i32* %58, align 4
  br label %59

59:                                               ; preds = %37, %26
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %20

63:                                               ; preds = %20
  br label %64

64:                                               ; preds = %63, %4
  %65 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %66 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  %70 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 0
  store i32 4, i32* %71, align 8
  %72 = load i32, i32* @IR_KEYTAB_SIZE, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %91, %64
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @IR_KEYTAB_SIZE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct.ir_input_state*, %struct.ir_input_state** %6, align 8
  %81 = getelementptr inbounds %struct.ir_input_state, %struct.ir_input_state* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @set_bit(i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %75

94:                                               ; preds = %75
  %95 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @clear_bit(i32 0, i32 %97)
  %99 = load i32, i32* @EV_KEY, align 4
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @set_bit(i32 %99, i32 %102)
  %104 = load i64, i64* @repeat, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = load i32, i32* @EV_REP, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @set_bit(i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %94
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
