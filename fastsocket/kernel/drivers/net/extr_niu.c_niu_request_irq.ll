; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_ldg*, i32* }
%struct.niu_ldg = type { i32 }

@niu_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_SAMPLE_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_request_irq(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.niu_ldg*, align 8
  %8 = alloca %struct.niu_ldg*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = call i32 @niu_set_irq_name(%struct.niu* %9)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.niu*, %struct.niu** %3, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load %struct.niu*, %struct.niu** %3, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 1
  %20 = load %struct.niu_ldg*, %struct.niu_ldg** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %20, i64 %22
  store %struct.niu_ldg* %23, %struct.niu_ldg** %7, align 8
  %24 = load %struct.niu_ldg*, %struct.niu_ldg** %7, align 8
  %25 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @niu_interrupt, align 4
  %28 = load i32, i32* @IRQF_SHARED, align 4
  %29 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.niu*, %struct.niu** %3, align 8
  %32 = getelementptr inbounds %struct.niu, %struct.niu* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.niu_ldg*, %struct.niu_ldg** %7, align 8
  %39 = call i32 @request_irq(i32 %26, i32 %27, i32 %30, i32 %37, %struct.niu_ldg* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %17
  br label %48

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %11

47:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %70

48:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.niu*, %struct.niu** %3, align 8
  %55 = getelementptr inbounds %struct.niu, %struct.niu* %54, i32 0, i32 1
  %56 = load %struct.niu_ldg*, %struct.niu_ldg** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %56, i64 %58
  store %struct.niu_ldg* %59, %struct.niu_ldg** %8, align 8
  %60 = load %struct.niu_ldg*, %struct.niu_ldg** %8, align 8
  %61 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.niu_ldg*, %struct.niu_ldg** %8, align 8
  %64 = call i32 @free_irq(i32 %62, %struct.niu_ldg* %63)
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %49

68:                                               ; preds = %49
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %47
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @niu_set_irq_name(%struct.niu*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.niu_ldg*) #1

declare dso_local i32 @free_irq(i32, %struct.niu_ldg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
