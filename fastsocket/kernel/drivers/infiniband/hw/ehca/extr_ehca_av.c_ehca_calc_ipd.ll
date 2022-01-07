; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_av.c_ehca_calc_ipd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_av.c_ehca_calc_ipd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32 }
%struct.ib_port_attr = type { i32, i32 }

@IB_RATE_PORT_CURRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid static rate! path_rate=%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to query port  ret=%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_calc_ipd(%struct.ehca_shca* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehca_shca*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_port_attr, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @ib_rate_to_mult(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @IB_RATE_PORT_CURRENT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %5, align 4
  br label %72

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %29 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %28, i32 0, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ehca_err(i32* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %72

34:                                               ; preds = %21
  %35 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %36 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ehca_query_port(i32* %36, i32 %37, %struct.ib_port_attr* %13)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.ehca_shca*, %struct.ehca_shca** %6, align 8
  %46 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %45, i32 0, i32 0
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ehca_err(i32* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %72

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %13, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ib_width_enum_to_int(i32 %52)
  %54 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32*, i32** %9, align 8
  store i32 0, i32* %61, align 4
  br label %71

62:                                               ; preds = %50
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %64, 1
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %10, align 4
  %68 = sdiv i32 %66, %67
  %69 = sub nsw i32 %68, 1
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %60
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %44, %27, %19
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @ib_rate_to_mult(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ehca_err(i32*, i8*, i32) #1

declare dso_local i32 @ehca_query_port(i32*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @ib_width_enum_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
