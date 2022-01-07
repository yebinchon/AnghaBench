; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_get_async_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_get_async_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_state = type { %struct.async_struct*, i32, i32, i32, i32 }
%struct.async_struct = type { i32, %struct.serial_state*, i32, i32, i32, i32, i32, i32, i32, i32 }

@rs_table = common dso_local global %struct.serial_state* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SERIAL_MAGIC = common dso_local global i32 0, align 4
@do_softint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.async_struct**)* @get_async_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_async_struct(i32 %0, %struct.async_struct** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.async_struct**, align 8
  %6 = alloca %struct.async_struct*, align 8
  %7 = alloca %struct.serial_state*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.async_struct** %1, %struct.async_struct*** %5, align 8
  %8 = load %struct.serial_state*, %struct.serial_state** @rs_table, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %8, i64 %10
  store %struct.serial_state* %11, %struct.serial_state** %7, align 8
  %12 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %13 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %17 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %16, i32 0, i32 0
  %18 = load %struct.async_struct*, %struct.async_struct** %17, align 8
  %19 = icmp ne %struct.async_struct* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %22 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %21, i32 0, i32 0
  %23 = load %struct.async_struct*, %struct.async_struct** %22, align 8
  %24 = load %struct.async_struct**, %struct.async_struct*** %5, align 8
  store %struct.async_struct* %23, %struct.async_struct** %24, align 8
  store i32 0, i32* %3, align 4
  br label %91

25:                                               ; preds = %2
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.async_struct* @kzalloc(i32 48, i32 %26)
  store %struct.async_struct* %27, %struct.async_struct** %6, align 8
  %28 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %29 = icmp ne %struct.async_struct* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %32 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %91

37:                                               ; preds = %25
  %38 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %39 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %38, i32 0, i32 9
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %42 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %41, i32 0, i32 8
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %45 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %44, i32 0, i32 7
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load i32, i32* @SERIAL_MAGIC, align 4
  %48 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %49 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %51 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %54 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %56 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %59 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %61 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %64 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %67 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %69 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %68, i32 0, i32 2
  %70 = load i32, i32* @do_softint, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %73 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %74 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %73, i32 0, i32 1
  store %struct.serial_state* %72, %struct.serial_state** %74, align 8
  %75 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %76 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %75, i32 0, i32 0
  %77 = load %struct.async_struct*, %struct.async_struct** %76, align 8
  %78 = icmp ne %struct.async_struct* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %37
  %80 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %81 = call i32 @kfree(%struct.async_struct* %80)
  %82 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %83 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %82, i32 0, i32 0
  %84 = load %struct.async_struct*, %struct.async_struct** %83, align 8
  %85 = load %struct.async_struct**, %struct.async_struct*** %5, align 8
  store %struct.async_struct* %84, %struct.async_struct** %85, align 8
  store i32 0, i32* %3, align 4
  br label %91

86:                                               ; preds = %37
  %87 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %88 = load %struct.serial_state*, %struct.serial_state** %7, align 8
  %89 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %88, i32 0, i32 0
  store %struct.async_struct* %87, %struct.async_struct** %89, align 8
  %90 = load %struct.async_struct**, %struct.async_struct*** %5, align 8
  store %struct.async_struct* %87, %struct.async_struct** %90, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %79, %30, %20
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.async_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kfree(%struct.async_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
