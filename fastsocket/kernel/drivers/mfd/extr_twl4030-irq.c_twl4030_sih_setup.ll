; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sih = type { i32, i32, i32, i64 }
%struct.sih_agent = type { i32, i32, i32, i32, %struct.sih* }

@EINVAL = common dso_local global i32 0, align 4
@twl4030_irq_next = common dso_local global i32 0, align 4
@sih_modules = common dso_local global %struct.sih* null, align 8
@NR_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"irq %d for %s too big\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl4030_sih_do_mask = common dso_local global i32 0, align 4
@twl4030_sih_do_edge = common dso_local global i32 0, align 4
@twl4030_sih_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@twl4030_irq_base = common dso_local global i32 0, align 4
@handle_twl4030_sih = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"twl4030: %s (irq %d) chaining IRQs %d..%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl4030_sih_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sih*, align 8
  %6 = alloca %struct.sih_agent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sih* null, %struct.sih** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @twl4030_irq_next, align 4
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %4, align 4
  %14 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  store %struct.sih* %14, %struct.sih** %5, align 8
  br label %15

15:                                               ; preds = %53, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.sih* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.sih*, %struct.sih** %5, align 8
  %22 = getelementptr inbounds %struct.sih, %struct.sih* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load %struct.sih*, %struct.sih** %5, align 8
  %28 = getelementptr inbounds %struct.sih, %struct.sih* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.sih*, %struct.sih** %5, align 8
  %34 = getelementptr inbounds %struct.sih, %struct.sih* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %32, %35
  %37 = load i32, i32* @NR_IRQS, align 4
  %38 = icmp ugt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.sih*, %struct.sih** %5, align 8
  %42 = getelementptr inbounds %struct.sih, %struct.sih* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %40, %43
  %45 = load %struct.sih*, %struct.sih** %5, align 8
  %46 = getelementptr inbounds %struct.sih, %struct.sih* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @WARN(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %31
  br label %58

52:                                               ; preds = %26, %20
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = load %struct.sih*, %struct.sih** %5, align 8
  %57 = getelementptr inbounds %struct.sih, %struct.sih* %56, i32 1
  store %struct.sih* %57, %struct.sih** %5, align 8
  br label %15

58:                                               ; preds = %51, %15
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %2, align 4
  br label %132

63:                                               ; preds = %58
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.sih_agent* @kzalloc(i32 24, i32 %64)
  store %struct.sih_agent* %65, %struct.sih_agent** %6, align 8
  %66 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %67 = icmp ne %struct.sih_agent* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %132

71:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %74 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sih*, %struct.sih** %5, align 8
  %76 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %77 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %76, i32 0, i32 4
  store %struct.sih* %75, %struct.sih** %77, align 8
  %78 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %79 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %78, i32 0, i32 3
  store i32 -1, i32* %79, align 4
  %80 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %81 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %80, i32 0, i32 2
  %82 = load i32, i32* @twl4030_sih_do_mask, align 4
  %83 = call i32 @INIT_WORK(i32* %81, i32 %82)
  %84 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %85 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %84, i32 0, i32 1
  %86 = load i32, i32* @twl4030_sih_do_edge, align 4
  %87 = call i32 @INIT_WORK(i32* %85, i32 %86)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %106, %71
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.sih*, %struct.sih** %5, align 8
  %91 = getelementptr inbounds %struct.sih, %struct.sih* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %95, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @handle_edge_irq, align 4
  %100 = call i32 @set_irq_chip_and_handler(i32 %98, i32* @twl4030_sih_irq_chip, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %103 = call i32 @set_irq_chip_data(i32 %101, %struct.sih_agent* %102)
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @activate_irq(i32 %104)
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %88

109:                                              ; preds = %88
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @twl4030_irq_next, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* @twl4030_irq_next, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @twl4030_irq_base, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %119 = call i32 @set_irq_data(i32 %117, %struct.sih_agent* %118)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @handle_twl4030_sih, align 4
  %122 = call i32 @set_irq_chained_handler(i32 %120, i32 %121)
  %123 = load %struct.sih*, %struct.sih** %5, align 8
  %124 = getelementptr inbounds %struct.sih, %struct.sih* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @twl4030_irq_next, align 4
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126, i32 %127, i32 %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %109, %68, %61
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @ARRAY_SIZE(%struct.sih*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local %struct.sih_agent* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @set_irq_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @set_irq_chip_data(i32, %struct.sih_agent*) #1

declare dso_local i32 @activate_irq(i32) #1

declare dso_local i32 @set_irq_data(i32, %struct.sih_agent*) #1

declare dso_local i32 @set_irq_chained_handler(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
