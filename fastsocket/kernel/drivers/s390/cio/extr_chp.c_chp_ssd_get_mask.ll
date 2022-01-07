; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chp.c_chp_ssd_get_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chp.c_chp_ssd_get_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_ssd_info = type { i32, i32, i32*, i32* }
%struct.chp_link = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chp_ssd_get_mask(%struct.chsc_ssd_info* %0, %struct.chp_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chsc_ssd_info*, align 8
  %5 = alloca %struct.chp_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.chsc_ssd_info* %0, %struct.chsc_ssd_info** %4, align 8
  store %struct.chp_link* %1, %struct.chp_link** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %62

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 128, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %4, align 8
  %15 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %59

21:                                               ; preds = %11
  %22 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %4, align 8
  %23 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.chp_link*, %struct.chp_link** %5, align 8
  %29 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %28, i32 0, i32 2
  %30 = call i32 @chp_id_is_equal(i32* %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %59

33:                                               ; preds = %21
  %34 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %4, align 8
  %35 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load %struct.chsc_ssd_info*, %struct.chsc_ssd_info** %4, align 8
  %42 = getelementptr inbounds %struct.chsc_ssd_info, %struct.chsc_ssd_info* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.chp_link*, %struct.chp_link** %5, align 8
  %49 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %47, %50
  %52 = load %struct.chp_link*, %struct.chp_link** %5, align 8
  %53 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %59

57:                                               ; preds = %40, %33
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %56, %32, %20
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %8

62:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @chp_id_is_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
