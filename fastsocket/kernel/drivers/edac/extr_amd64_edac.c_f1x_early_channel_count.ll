; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_early_channel_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_early_channel_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.amd64_pvt = type { i32, i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WIDTH_128 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Data width is not 128 bits - need more decoding\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MCT channel count: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*)* @f1x_early_channel_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_early_channel_count(%struct.amd64_pvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %12 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WIDTH_128, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 2, i32* %2, align 4
  br label %63

18:                                               ; preds = %10, %1
  %19 = call i32 @debugf0(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %52, %18
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %28 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %32 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %29, %26 ], [ %33, %30 ]
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %48, %34
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @DBAM_DIMM(i32 %40, i32 %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %36

51:                                               ; preds = %44, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 2, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @amd64_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @debugf0(i8*) #1

declare dso_local i64 @DBAM_DIMM(i32, i32) #1

declare dso_local i32 @amd64_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
