; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_handle_intr_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_handle_intr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.intr_info = type { i32, i32 (%struct.adapter.0*)*, i64, i64 }
%struct.adapter.0 = type opaque

@.str = private unnamed_addr constant [11 x i8] c"%s (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, %struct.intr_info*)* @t4_handle_intr_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_handle_intr_status(%struct.adapter* %0, i32 %1, %struct.intr_info* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.intr_info* %2, %struct.intr_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @t4_read_reg(%struct.adapter* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %86, %3
  %14 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %15 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %89

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %21 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %86

26:                                               ; preds = %18
  %27 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %28 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %38 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %42 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %40, %43
  %45 = call i32 @dev_alert(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %44)
  br label %68

46:                                               ; preds = %26
  %47 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %48 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = call i64 (...) @printk_ratelimit()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %59 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %63 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %61, %64
  %66 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %60, i32 %65)
  br label %67

67:                                               ; preds = %54, %51, %46
  br label %68

68:                                               ; preds = %67, %31
  %69 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %70 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %69, i32 0, i32 1
  %71 = load i32 (%struct.adapter.0*)*, i32 (%struct.adapter.0*)** %70, align 8
  %72 = icmp ne i32 (%struct.adapter.0*)* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %75 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %74, i32 0, i32 1
  %76 = load i32 (%struct.adapter.0*)*, i32 (%struct.adapter.0*)** %75, align 8
  %77 = load %struct.adapter*, %struct.adapter** %4, align 8
  %78 = bitcast %struct.adapter* %77 to %struct.adapter.0*
  %79 = call i32 %76(%struct.adapter.0* %78)
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %82 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %80, %25
  %87 = load %struct.intr_info*, %struct.intr_info** %6, align 8
  %88 = getelementptr inbounds %struct.intr_info, %struct.intr_info* %87, i32 1
  store %struct.intr_info* %88, %struct.intr_info** %6, align 8
  br label %13

89:                                               ; preds = %13
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.adapter*, %struct.adapter** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @t4_write_reg(%struct.adapter* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %89
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @dev_alert(i32, i8*, i64, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
