; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-irq.c_cx18_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-irq.c_cx18_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, i32, i32 }

@SW1_INT_STATUS = common dso_local global i32 0, align 4
@SW2_INT_STATUS = common dso_local global i32 0, align 4
@HW2_INT_CLR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"received interrupts SW1: %x  SW2: %x  HW2: %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.cx18*
  store %struct.cx18* %10, %struct.cx18** %5, align 8
  %11 = load %struct.cx18*, %struct.cx18** %5, align 8
  %12 = load i32, i32* @SW1_INT_STATUS, align 4
  %13 = call i32 @cx18_read_reg(%struct.cx18* %11, i32 %12)
  %14 = load %struct.cx18*, %struct.cx18** %5, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.cx18*, %struct.cx18** %5, align 8
  %19 = load i32, i32* @SW2_INT_STATUS, align 4
  %20 = call i32 @cx18_read_reg(%struct.cx18* %18, i32 %19)
  %21 = load %struct.cx18*, %struct.cx18** %5, align 8
  %22 = getelementptr inbounds %struct.cx18, %struct.cx18* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.cx18*, %struct.cx18** %5, align 8
  %26 = load i32, i32* @HW2_INT_CLR_STATUS, align 4
  %27 = call i32 @cx18_read_reg(%struct.cx18* %25, i32 %26)
  %28 = load %struct.cx18*, %struct.cx18** %5, align 8
  %29 = getelementptr inbounds %struct.cx18, %struct.cx18* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.cx18*, %struct.cx18** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SW1_INT_STATUS, align 4
  %38 = load i32, i32* %6, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @cx18_write_reg_expect(%struct.cx18* %35, i32 %36, i32 %37, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %2
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.cx18*, %struct.cx18** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SW2_INT_STATUS, align 4
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cx18_write_reg_expect(%struct.cx18* %46, i32 %47, i32 %48, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %42
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.cx18*, %struct.cx18** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @HW2_INT_CLR_STATUS, align 4
  %60 = load i32, i32* %8, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @cx18_write_reg_expect(%struct.cx18* %57, i32 %58, i32 %59, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %53
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70, %67, %64
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @CX18_DEBUG_HI_IRQ(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.cx18*, %struct.cx18** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @epu_cmd(%struct.cx18* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.cx18*, %struct.cx18** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @xpu_ack(%struct.cx18* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98, %95, %92
  %102 = load i32, i32* @IRQ_HANDLED, align 4
  br label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @IRQ_NONE, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  ret i32 %106
}

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_write_reg_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @CX18_DEBUG_HI_IRQ(i8*, i32, i32, i32) #1

declare dso_local i32 @epu_cmd(%struct.cx18*, i32) #1

declare dso_local i32 @xpu_ack(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
