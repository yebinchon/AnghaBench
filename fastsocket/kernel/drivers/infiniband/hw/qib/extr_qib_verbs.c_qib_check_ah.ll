; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_check_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_check_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_ah_attr = type { i64, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@QIB_MULTICAST_LID_BASE = common dso_local global i64 0, align 8
@QIB_PERMISSIVE_LID = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@QIB_GUIDS_PER_PORT = common dso_local global i64 0, align 8
@IB_RATE_PORT_CURRENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_check_ah(%struct.ib_device* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  %6 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %7 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QIB_MULTICAST_LID_BASE, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %13 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QIB_PERMISSIVE_LID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %19 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IB_AH_GRH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %80

25:                                               ; preds = %17, %11, %2
  %26 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %27 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IB_AH_GRH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %34 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QIB_GUIDS_PER_PORT, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %80

40:                                               ; preds = %32, %25
  %41 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %42 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %80

46:                                               ; preds = %40
  %47 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %48 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %53 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %56 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %46
  br label %80

60:                                               ; preds = %51
  %61 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %62 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IB_RATE_PORT_CURRENT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %68 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @ib_rate_to_mult(i64 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %80

73:                                               ; preds = %66, %60
  %74 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 15
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %80

79:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %83

80:                                               ; preds = %78, %72, %59, %45, %39, %24
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @ib_rate_to_mult(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
