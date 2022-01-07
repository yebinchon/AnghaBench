; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_hx4700.c_hx4700_gpio_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_hx4700.c_hx4700_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_ress = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error requesting GPIO %d(%s) : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_ress*, i32)* @hx4700_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx4700_gpio_request(%struct.gpio_ress* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_ress*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_ress* %0, %struct.gpio_ress** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %67, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %70

18:                                               ; preds = %16
  %19 = load %struct.gpio_ress*, %struct.gpio_ress** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %19, i64 %21
  %23 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.gpio_ress*, %struct.gpio_ress** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %25, i64 %27
  %29 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.gpio_ress*, %struct.gpio_ress** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %32, i64 %34
  %36 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpio_request(i32 %31, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %18
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.gpio_ress*, %struct.gpio_ress** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %43, i64 %45
  %47 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %48, i32 %49)
  br label %67

51:                                               ; preds = %18
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.gpio_ress*, %struct.gpio_ress** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %56, i64 %58
  %60 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gpio_direction_output(i32 %55, i32 %61)
  br label %66

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @gpio_direction_input(i32 %64)
  br label %66

66:                                               ; preds = %63, %54
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %9

70:                                               ; preds = %16
  br label %71

71:                                               ; preds = %80, %70
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  %77 = icmp sge i32 %76, 0
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br i1 %79, label %80, label %88

80:                                               ; preds = %78
  %81 = load %struct.gpio_ress*, %struct.gpio_ress** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %81, i64 %83
  %85 = getelementptr inbounds %struct.gpio_ress, %struct.gpio_ress* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @gpio_free(i32 %86)
  br label %71

88:                                               ; preds = %78
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
