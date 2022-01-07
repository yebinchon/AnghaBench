; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_k8_dbam_to_chip_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_k8_dbam_to_chip_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i64 }

@K8_REV_F = common dso_local global i64 0, align 8
@WIDTH_128 = common dso_local global i32 0, align 4
@K8_REV_D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i64, i32)* @k8_dbam_to_chip_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k8_dbam_to_chip_select(%struct.amd64_pvt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd64_pvt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %18 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  store i32 %21, i32* %8, align 4
  %22 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %23 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @K8_REV_F, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = icmp ugt i32 %28, 11
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @WIDTH_128, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @ddr2_cs_size(i32 %32, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %65

37:                                               ; preds = %20
  %38 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %39 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @K8_REV_D, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = icmp ugt i32 %44, 10
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = udiv i32 %48, 3
  %50 = load i32, i32* %7, align 4
  %51 = icmp ugt i32 %50, 5
  %52 = zext i1 %51 to i32
  %53 = add i32 %49, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub i32 %54, %55
  %57 = shl i32 32, %56
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %37
  %59 = load i32, i32* %7, align 4
  %60 = icmp ugt i32 %59, 6
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 32, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %43, %27
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ddr2_cs_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
